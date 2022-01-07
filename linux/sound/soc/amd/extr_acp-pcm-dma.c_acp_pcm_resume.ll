; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_pcm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_pcm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.audio_substream_data = type { i32 }
%struct.audio_drv_data = type { i64, i32, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.audio_substream_data* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.audio_substream_data* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.audio_substream_data* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.audio_substream_data* }

@.str = private unnamed_addr constant [27 x i8] c"ACP Init failed status:%d\0A\00", align 1
@CHIP_STONEY = common dso_local global i64 0, align 8
@CHIP_CARRIZO = common dso_local global i64 0, align 8
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acp_pcm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_pcm_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.audio_substream_data*, align 8
  %7 = alloca %struct.audio_drv_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.audio_drv_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.audio_drv_data* %9, %struct.audio_drv_data** %7, align 8
  %10 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %11 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %14 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @acp_init(i32 %12, i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %189

24:                                               ; preds = %1
  %25 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %26 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %25, i32 0, i32 5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %24
  %30 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %31 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %30, i32 0, i32 5
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %72

36:                                               ; preds = %29
  %37 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %38 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHIP_STONEY, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %52, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 %44, 4
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %48 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @acp_set_sram_bank_state(i32 %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %43

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %58 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %57, i32 0, i32 5
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.audio_substream_data*, %struct.audio_substream_data** %62, align 8
  store %struct.audio_substream_data* %63, %struct.audio_substream_data** %6, align 8
  %64 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %65 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.audio_substream_data*, %struct.audio_substream_data** %6, align 8
  %68 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %69 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @config_acp_dma(i32 %66, %struct.audio_substream_data* %67, i64 %70)
  br label %72

72:                                               ; preds = %56, %29, %24
  %73 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %74 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %73, i32 0, i32 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %120

77:                                               ; preds = %72
  %78 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %79 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %78, i32 0, i32 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %84, label %120

84:                                               ; preds = %77
  %85 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %86 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHIP_STONEY, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  store i32 5, i32* %4, align 4
  br label %91

91:                                               ; preds = %100, %90
  %92 = load i32, i32* %4, align 4
  %93 = icmp sle i32 %92, 8
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %96 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @acp_set_sram_bank_state(i32 %97, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %91

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %84
  %105 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %106 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %105, i32 0, i32 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.audio_substream_data*, %struct.audio_substream_data** %110, align 8
  store %struct.audio_substream_data* %111, %struct.audio_substream_data** %6, align 8
  %112 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %113 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.audio_substream_data*, %struct.audio_substream_data** %6, align 8
  %116 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %117 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @config_acp_dma(i32 %114, %struct.audio_substream_data* %115, i64 %118)
  br label %120

120:                                              ; preds = %104, %77, %72
  %121 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %122 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CHIP_CARRIZO, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %183

126:                                              ; preds = %120
  %127 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %128 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %127, i32 0, i32 3
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = icmp ne %struct.TYPE_14__* %129, null
  br i1 %130, label %131, label %154

131:                                              ; preds = %126
  %132 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %133 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %132, i32 0, i32 3
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = icmp ne %struct.TYPE_13__* %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %131
  %139 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %140 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %139, i32 0, i32 3
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load %struct.audio_substream_data*, %struct.audio_substream_data** %144, align 8
  store %struct.audio_substream_data* %145, %struct.audio_substream_data** %6, align 8
  %146 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %147 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.audio_substream_data*, %struct.audio_substream_data** %6, align 8
  %150 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %151 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @config_acp_dma(i32 %148, %struct.audio_substream_data* %149, i64 %152)
  br label %154

154:                                              ; preds = %138, %131, %126
  %155 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %156 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %155, i32 0, i32 2
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = icmp ne %struct.TYPE_16__* %157, null
  br i1 %158, label %159, label %182

159:                                              ; preds = %154
  %160 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %161 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %160, i32 0, i32 2
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = icmp ne %struct.TYPE_15__* %164, null
  br i1 %165, label %166, label %182

166:                                              ; preds = %159
  %167 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %168 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %167, i32 0, i32 2
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load %struct.audio_substream_data*, %struct.audio_substream_data** %172, align 8
  store %struct.audio_substream_data* %173, %struct.audio_substream_data** %6, align 8
  %174 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %175 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.audio_substream_data*, %struct.audio_substream_data** %6, align 8
  %178 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %179 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @config_acp_dma(i32 %176, %struct.audio_substream_data* %177, i64 %180)
  br label %182

182:                                              ; preds = %166, %159, %154
  br label %183

183:                                              ; preds = %182, %120
  %184 = load %struct.audio_drv_data*, %struct.audio_drv_data** %7, align 8
  %185 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @mmACP_EXTERNAL_INTR_ENB, align 4
  %188 = call i32 @acp_reg_write(i32 1, i32 %186, i32 %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %183, %19
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.audio_drv_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @acp_init(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @acp_set_sram_bank_state(i32, i32, i32) #1

declare dso_local i32 @config_acp_dma(i32, %struct.audio_substream_data*, i64) #1

declare dso_local i32 @acp_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

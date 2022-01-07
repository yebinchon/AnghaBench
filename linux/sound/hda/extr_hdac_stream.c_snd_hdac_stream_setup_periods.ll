; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_setup_periods.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_setup_periods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_stream = type { i32, i32, i32, i64, %struct.TYPE_2__, %struct.snd_pcm_substream*, %struct.hdac_bus* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.hdac_bus = type { i32, i32 }

@SD_BDLPL = common dso_local global i32 0, align 4
@SD_BDLPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Too big adjustment %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Too many BDL entries: buffer=%d, period=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_stream_setup_periods(%struct.hdac_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_stream*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hdac_stream* %0, %struct.hdac_stream** %3, align 8
  %14 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %15 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %14, i32 0, i32 6
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %15, align 8
  store %struct.hdac_bus* %16, %struct.hdac_bus** %4, align 8
  %17 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %18 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %17, i32 0, i32 5
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, align 8
  store %struct.snd_pcm_substream* %19, %struct.snd_pcm_substream** %5, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %6, align 8
  %23 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %24 = load i32, i32* @SD_BDLPL, align 4
  %25 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %23, i32 %24, i32 0)
  %26 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %27 = load i32, i32* @SD_BDLPU, align 4
  %28 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %26, i32 %27, i32 0)
  %29 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %30 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %33 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %38 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %42 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %43 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %45 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %48 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %102, label %51

51:                                               ; preds = %1
  %52 = load i32, i32* %12, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = add nsw i32 %60, 47999
  %62 = sdiv i32 %61, 48000
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %12, align 4
  br label %76

67:                                               ; preds = %54
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %13, align 4
  %73 = sdiv i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %67, %65
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %85 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %87)
  store i32 0, i32* %12, align 4
  br label %101

89:                                               ; preds = %76
  %90 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %91 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %92 = call i32 @snd_pcm_get_dma_buf(%struct.snd_pcm_substream* %91)
  %93 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @setup_bdle(%struct.hdac_bus* %90, i32 %92, %struct.hdac_stream* %93, i32** %7, i32 %94, i32 %95, i32 1)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %149

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %83
  br label %103

102:                                              ; preds = %51, %1
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %102, %101
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %145, %103
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %148

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %118 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %119 = call i32 @snd_pcm_get_dma_buf(%struct.snd_pcm_substream* %118)
  %120 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %122, %123
  %125 = call i32 @setup_bdle(%struct.hdac_bus* %117, i32 %119, %struct.hdac_stream* %120, i32** %7, i32 %121, i32 %124, i32 0)
  store i32 %125, i32* %9, align 4
  br label %140

126:                                              ; preds = %113, %108
  %127 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %128 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %129 = call i32 @snd_pcm_get_dma_buf(%struct.snd_pcm_substream* %128)
  %130 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %134 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @setup_bdle(%struct.hdac_bus* %127, i32 %129, %struct.hdac_stream* %130, i32** %7, i32 %131, i32 %132, i32 %138)
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %126, %116
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %149

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %104

148:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %160

149:                                              ; preds = %143, %99
  %150 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %151 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %154 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @dev_err(i32 %152, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %149, %148
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @snd_hdac_stream_writel(%struct.hdac_stream*, i32, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @setup_bdle(%struct.hdac_bus*, i32, %struct.hdac_stream*, i32**, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_get_dma_buf(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

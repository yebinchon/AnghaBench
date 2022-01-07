; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2s_dev_data = type { i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.i2s_stream_instance* }
%struct.i2s_stream_instance = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.i2s_stream_instance* }

@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@mmACP_BTTDM_ITER = common dso_local global i64 0, align 8
@mmACP_BTTDM_TXFRMT = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@mmACP_BTTDM_IRER = common dso_local global i64 0, align 8
@mmACP_BTTDM_RXFRMT = common dso_local global i64 0, align 8
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acp3x_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2s_dev_data*, align 8
  %7 = alloca %struct.i2s_stream_instance*, align 8
  %8 = alloca %struct.i2s_stream_instance*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.i2s_dev_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.i2s_dev_data* %10, %struct.i2s_dev_data** %6, align 8
  %11 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %12 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @acp3x_init(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %151

20:                                               ; preds = %1
  %21 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %22 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %82

25:                                               ; preds = %20
  %26 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %27 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %82

32:                                               ; preds = %25
  %33 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %34 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %38, align 8
  store %struct.i2s_stream_instance* %39, %struct.i2s_stream_instance** %7, align 8
  %40 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %7, align 8
  %41 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %42 = call i32 @config_acp3x_dma(%struct.i2s_stream_instance* %40, i32 %41)
  %43 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %7, align 8
  %44 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 3
  %47 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %7, align 8
  %48 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @mmACP_BTTDM_ITER, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @rv_writel(i32 %46, i64 %51)
  %53 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %54 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %81

57:                                               ; preds = %32
  %58 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %59 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %62 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @mmACP_BTTDM_TXFRMT, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @rv_writel(i32 %60, i64 %65)
  %67 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %68 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @mmACP_BTTDM_ITER, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @rv_readl(i64 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, 2
  %75 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %76 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @mmACP_BTTDM_ITER, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @rv_writel(i32 %74, i64 %79)
  br label %81

81:                                               ; preds = %57, %32
  br label %82

82:                                               ; preds = %81, %25, %20
  %83 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %84 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %144

87:                                               ; preds = %82
  %88 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %89 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %144

94:                                               ; preds = %87
  %95 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %96 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %95, i32 0, i32 3
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %100, align 8
  store %struct.i2s_stream_instance* %101, %struct.i2s_stream_instance** %8, align 8
  %102 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %8, align 8
  %103 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %104 = call i32 @config_acp3x_dma(%struct.i2s_stream_instance* %102, i32 %103)
  %105 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %8, align 8
  %106 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %107, 3
  %109 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %8, align 8
  %110 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @mmACP_BTTDM_IRER, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @rv_writel(i32 %108, i64 %113)
  %115 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %116 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %143

119:                                              ; preds = %94
  %120 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %121 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %124 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @mmACP_BTTDM_RXFRMT, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @rv_writel(i32 %122, i64 %127)
  %129 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %130 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @mmACP_BTTDM_IRER, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @rv_readl(i64 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, 2
  %137 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %138 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @mmACP_BTTDM_IRER, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @rv_writel(i32 %136, i64 %141)
  br label %143

143:                                              ; preds = %119, %94
  br label %144

144:                                              ; preds = %143, %87, %82
  %145 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %146 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @mmACP_EXTERNAL_INTR_ENB, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @rv_writel(i32 1, i64 %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %144, %17
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.i2s_dev_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @acp3x_init(i64) #1

declare dso_local i32 @config_acp3x_dma(%struct.i2s_stream_instance*, i32) #1

declare dso_local i32 @rv_writel(i32, i64) #1

declare dso_local i32 @rv_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

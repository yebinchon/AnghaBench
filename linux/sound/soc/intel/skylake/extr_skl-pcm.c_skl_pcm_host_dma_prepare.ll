; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_host_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_host_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_pipe_params = type { i32, i32, i32, i32, i64, i32 }
%struct.hdac_bus = type { i32 }
%struct.skl_dev = type { i32 }
%struct.hdac_stream = type { i32 }
%struct.hdac_ext_stream = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"format_val=%d, rate=%d, ch=%d, format=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_pcm_host_dma_prepare(%struct.device* %0, %struct.skl_pipe_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.skl_pipe_params*, align 8
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdac_stream*, align 8
  %10 = alloca %struct.hdac_ext_stream*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.skl_pipe_params* %1, %struct.skl_pipe_params** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.hdac_bus* @dev_get_drvdata(%struct.device* %12)
  store %struct.hdac_bus* %13, %struct.hdac_bus** %6, align 8
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %15 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %14)
  store %struct.skl_dev* %15, %struct.skl_dev** %7, align 8
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %17 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %18 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %21 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call %struct.hdac_stream* @snd_hdac_get_stream(%struct.hdac_bus* %16, i32 %19, i64 %23)
  store %struct.hdac_stream* %24, %struct.hdac_stream** %9, align 8
  %25 = load %struct.hdac_stream*, %struct.hdac_stream** %9, align 8
  %26 = icmp ne %struct.hdac_stream* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %2
  %31 = load %struct.hdac_stream*, %struct.hdac_stream** %9, align 8
  %32 = call %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream* %31)
  store %struct.hdac_ext_stream* %32, %struct.hdac_ext_stream** %10, align 8
  %33 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %34 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %35 = call i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus* %33, %struct.hdac_ext_stream* %34, i32 1)
  %36 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %37 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %40 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %43 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %46 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_hdac_calc_stream_format(i32 %38, i32 %41, i32 %44, i32 %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %52 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %55 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %58 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %62 = call %struct.TYPE_5__* @hdac_stream(%struct.hdac_ext_stream* %61)
  %63 = call i32 @snd_hdac_stream_reset(%struct.TYPE_5__* %62)
  %64 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %65 = call %struct.TYPE_5__* @hdac_stream(%struct.hdac_ext_stream* %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @snd_hdac_stream_set_params(%struct.TYPE_5__* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %30
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %101

72:                                               ; preds = %30
  %73 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %74 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_BXT(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %80 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %81 = call i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus* %79, %struct.hdac_ext_stream* %80, i32 0)
  %82 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %83 = call %struct.TYPE_5__* @hdac_stream(%struct.hdac_ext_stream* %82)
  %84 = call i32 @snd_hdac_stream_setup(%struct.TYPE_5__* %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %86 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %87 = call i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus* %85, %struct.hdac_ext_stream* %86, i32 1)
  br label %92

88:                                               ; preds = %72
  %89 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %90 = call %struct.TYPE_5__* @hdac_stream(%struct.hdac_ext_stream* %89)
  %91 = call i32 @snd_hdac_stream_setup(%struct.TYPE_5__* %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %88, %78
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %101

97:                                               ; preds = %92
  %98 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %99 = call %struct.TYPE_5__* @hdac_stream(%struct.hdac_ext_stream* %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %95, %70, %27
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local %struct.hdac_stream* @snd_hdac_get_stream(%struct.hdac_bus*, i32, i64) #1

declare dso_local %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream*) #1

declare dso_local i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus*, %struct.hdac_ext_stream*, i32) #1

declare dso_local i32 @snd_hdac_calc_stream_format(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_stream_reset(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @hdac_stream(%struct.hdac_ext_stream*) #1

declare dso_local i32 @snd_hdac_stream_set_params(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @IS_BXT(i32) #1

declare dso_local i32 @snd_hdac_stream_setup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

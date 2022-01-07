; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_pipe_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_pipe_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_module_cfg = type { %struct.TYPE_12__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.skl_module_res* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.skl_module_fmt }
%struct.skl_module_res = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.skl_pipe_params = type { i64, i32, i32, i32 }
%struct.skl_dev = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Invalid bit depth %x for pipe\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_tplg_update_pipe_params(%struct.device* %0, %struct.skl_module_cfg* %1, %struct.skl_pipe_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca %struct.skl_pipe_params*, align 8
  %8 = alloca %struct.skl_module_res*, align 8
  %9 = alloca %struct.skl_dev*, align 8
  %10 = alloca %struct.skl_module_fmt*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %6, align 8
  store %struct.skl_pipe_params* %2, %struct.skl_pipe_params** %7, align 8
  %12 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %13 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.skl_module_res*, %struct.skl_module_res** %15, align 8
  %17 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %16, i64 0
  store %struct.skl_module_res* %17, %struct.skl_module_res** %8, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.skl_dev* @get_skl_ctx(%struct.device* %18)
  store %struct.skl_dev* %19, %struct.skl_dev** %9, align 8
  store %struct.skl_module_fmt* null, %struct.skl_module_fmt** %10, align 8
  %20 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %21 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %20, i32 0, i32 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %26 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %27 = call i32 @skl_tplg_fill_dma_id(%struct.skl_module_cfg* %25, %struct.skl_pipe_params* %26)
  %28 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %36 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %47 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %155

51:                                               ; preds = %3
  %52 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %53 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %59 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store %struct.skl_module_fmt* %67, %struct.skl_module_fmt** %10, align 8
  br label %79

68:                                               ; preds = %51
  %69 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %70 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store %struct.skl_module_fmt* %78, %struct.skl_module_fmt** %10, align 8
  br label %79

79:                                               ; preds = %68, %57
  %80 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %81 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %84 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %86 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %89 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %91 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @skl_get_bit_depth(i32 %92)
  %94 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %95 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %97 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %108 [
    i32 130, label %99
    i32 129, label %105
    i32 128, label %105
  ]

99:                                               ; preds = %79
  %100 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %101 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %104 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %116

105:                                              ; preds = %79, %79
  %106 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %107 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %106, i32 0, i32 3
  store i32 128, i32* %107, align 4
  br label %116

108:                                              ; preds = %79
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %111 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %155

116:                                              ; preds = %105, %99
  %117 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %118 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %124 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 1000
  %127 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %128 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %126, %129
  %131 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %132 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 3
  %135 = mul nsw i32 %130, %134
  %136 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %137 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %154

138:                                              ; preds = %116
  %139 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %140 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 1000
  %143 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %144 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  %147 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %148 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 3
  %151 = mul nsw i32 %146, %150
  %152 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %153 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %138, %122
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %108, %50
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.skl_dev* @get_skl_ctx(%struct.device*) #1

declare dso_local i32 @skl_tplg_fill_dma_id(%struct.skl_module_cfg*, %struct.skl_pipe_params*) #1

declare dso_local i32 @skl_get_bit_depth(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

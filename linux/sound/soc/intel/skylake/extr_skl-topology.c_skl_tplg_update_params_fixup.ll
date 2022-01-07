; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_params_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_params_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_cfg = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32 }
%struct.TYPE_5__ = type { %struct.skl_module_fmt }
%struct.skl_pipe_params = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_module_cfg*, %struct.skl_pipe_params*, i32)* @skl_tplg_update_params_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_tplg_update_params_fixup(%struct.skl_module_cfg* %0, %struct.skl_pipe_params* %1, i32 %2) #0 {
  %4 = alloca %struct.skl_module_cfg*, align 8
  %5 = alloca %struct.skl_pipe_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skl_module_fmt*, align 8
  %10 = alloca %struct.skl_module_fmt*, align 8
  store %struct.skl_module_cfg* %0, %struct.skl_module_cfg** %4, align 8
  store %struct.skl_pipe_params* %1, %struct.skl_pipe_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.skl_module_fmt* %20, %struct.skl_module_fmt** %9, align 8
  %21 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.skl_module_fmt* %30, %struct.skl_module_fmt** %10, align 8
  %31 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %32 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  %43 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  store i32 %50, i32* %8, align 4
  br label %63

51:                                               ; preds = %36
  %52 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %53 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %8, align 4
  %55 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %60 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %51, %39
  br label %92

64:                                               ; preds = %3
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %69 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %8, align 4
  %71 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %76 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %74, %77
  store i32 %78, i32* %7, align 4
  br label %91

79:                                               ; preds = %64
  %80 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %81 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %7, align 4
  %83 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %84 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %88 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %86, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %79, %67
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %94 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @skl_tplg_update_params(%struct.skl_module_fmt* %93, %struct.skl_pipe_params* %94, i32 %95)
  %97 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %98 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @skl_tplg_update_params(%struct.skl_module_fmt* %97, %struct.skl_pipe_params* %98, i32 %99)
  ret void
}

declare dso_local i32 @skl_tplg_update_params(%struct.skl_module_fmt*, %struct.skl_pipe_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

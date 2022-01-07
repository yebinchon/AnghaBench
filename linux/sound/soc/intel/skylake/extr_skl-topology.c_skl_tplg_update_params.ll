; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_fmt = type { i32, i32, i32, i32 }
%struct.skl_pipe_params = type { i32, i32, i32 }

@SKL_RATE_FIXUP_MASK = common dso_local global i32 0, align 4
@SKL_CH_FIXUP_MASK = common dso_local global i32 0, align 4
@SKL_FMT_FIXUP_MASK = common dso_local global i32 0, align 4
@SKL_DEPTH_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_module_fmt*, %struct.skl_pipe_params*, i32)* @skl_tplg_update_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_tplg_update_params(%struct.skl_module_fmt* %0, %struct.skl_pipe_params* %1, i32 %2) #0 {
  %4 = alloca %struct.skl_module_fmt*, align 8
  %5 = alloca %struct.skl_pipe_params*, align 8
  %6 = alloca i32, align 4
  store %struct.skl_module_fmt* %0, %struct.skl_module_fmt** %4, align 8
  store %struct.skl_pipe_params* %1, %struct.skl_pipe_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SKL_RATE_FIXUP_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %13 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %16 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SKL_CH_FIXUP_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %24 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %27 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %29 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %30 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @skl_tplg_update_chmap(%struct.skl_module_fmt* %28, i32 %31)
  br label %33

33:                                               ; preds = %22, %17
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SKL_FMT_FIXUP_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %40 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @skl_get_bit_depth(i32 %41)
  %43 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %44 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %46 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %54 [
    i32 128, label %48
  ]

48:                                               ; preds = %38
  %49 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %50 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %53 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %58

54:                                               ; preds = %38
  %55 = load i32, i32* @SKL_DEPTH_32BIT, align 4
  %56 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %4, align 8
  %57 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %33
  ret void
}

declare dso_local i32 @skl_tplg_update_chmap(%struct.skl_module_fmt*, i32) #1

declare dso_local i32 @skl_get_bit_depth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

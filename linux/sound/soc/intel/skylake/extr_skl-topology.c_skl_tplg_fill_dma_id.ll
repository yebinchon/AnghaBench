; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_dma_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_dma_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_cfg = type { i32, %struct.skl_pipe* }
%struct.skl_pipe = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skl_pipe_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_module_cfg*, %struct.skl_pipe_params*)* @skl_tplg_fill_dma_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_tplg_fill_dma_id(%struct.skl_module_cfg* %0, %struct.skl_pipe_params* %1) #0 {
  %3 = alloca %struct.skl_module_cfg*, align 8
  %4 = alloca %struct.skl_pipe_params*, align 8
  %5 = alloca %struct.skl_pipe*, align 8
  store %struct.skl_module_cfg* %0, %struct.skl_module_cfg** %3, align 8
  store %struct.skl_pipe_params* %1, %struct.skl_pipe_params** %4, align 8
  %6 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %6, i32 0, i32 1
  %8 = load %struct.skl_pipe*, %struct.skl_pipe** %7, align 8
  store %struct.skl_pipe* %8, %struct.skl_pipe** %5, align 8
  %9 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %10 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %91

13:                                               ; preds = %2
  %14 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %54 [
    i32 128, label %17
    i32 129, label %39
  ]

17:                                               ; preds = %13
  %18 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %19 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %22 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 9
  store i32 %20, i32* %24, align 4
  %25 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %26 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %29 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 8
  store i32 %27, i32* %31, align 4
  %32 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %33 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %36 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  store i32 %34, i32* %38, align 4
  br label %55

39:                                               ; preds = %13
  %40 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %41 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %44 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  store i32 %42, i32* %46, align 4
  %47 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %48 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %51 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 4
  br label %55

54:                                               ; preds = %13
  br label %55

55:                                               ; preds = %54, %39, %17
  %56 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %57 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %60 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i32 %58, i32* %62, align 4
  %63 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %64 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %67 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %71 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %74 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 4
  %77 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %78 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %81 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %85 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %88 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  br label %97

91:                                               ; preds = %2
  %92 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %93 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %4, align 8
  %96 = call i32 @memcpy(%struct.TYPE_2__* %94, %struct.skl_pipe_params* %95, i32 40)
  br label %97

97:                                               ; preds = %91, %55
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.skl_pipe_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

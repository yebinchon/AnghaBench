; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_prog_map_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_prog_map_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_map = type { i32 }
%struct.bpf_offloaded_map = type { i32 }

@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_offload_prog_map_match(%struct.bpf_prog* %0, %struct.bpf_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.bpf_offloaded_map*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %5, align 8
  %8 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %9 = call i32 @bpf_map_is_dev_bound(%struct.bpf_map* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %13 = call i32 @bpf_map_offload_neutral(%struct.bpf_map* %12)
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %16 = call %struct.bpf_offloaded_map* @map_to_offmap(%struct.bpf_map* %15)
  store %struct.bpf_offloaded_map* %16, %struct.bpf_offloaded_map** %6, align 8
  %17 = call i32 @down_read(i32* @bpf_devs_lock)
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %19 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %20 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__bpf_offload_dev_match(%struct.bpf_prog* %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = call i32 @up_read(i32* @bpf_devs_lock)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @bpf_map_is_dev_bound(%struct.bpf_map*) #1

declare dso_local i32 @bpf_map_offload_neutral(%struct.bpf_map*) #1

declare dso_local %struct.bpf_offloaded_map* @map_to_offmap(%struct.bpf_map*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__bpf_offload_dev_match(%struct.bpf_prog*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

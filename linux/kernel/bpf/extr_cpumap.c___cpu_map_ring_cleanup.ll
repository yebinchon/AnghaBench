; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c___cpu_map_ring_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c___cpu_map_ring_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32 }
%struct.xdp_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptr_ring*)* @__cpu_map_ring_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cpu_map_ring_cleanup(%struct.ptr_ring* %0) #0 {
  %2 = alloca %struct.ptr_ring*, align 8
  %3 = alloca %struct.xdp_frame*, align 8
  store %struct.ptr_ring* %0, %struct.ptr_ring** %2, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %6 = call %struct.xdp_frame* @ptr_ring_consume(%struct.ptr_ring* %5)
  store %struct.xdp_frame* %6, %struct.xdp_frame** %3, align 8
  %7 = icmp ne %struct.xdp_frame* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load %struct.xdp_frame*, %struct.xdp_frame** %3, align 8
  %10 = call i64 @WARN_ON_ONCE(%struct.xdp_frame* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.xdp_frame*, %struct.xdp_frame** %3, align 8
  %14 = call i32 @xdp_return_frame(%struct.xdp_frame* %13)
  br label %15

15:                                               ; preds = %12, %8
  br label %4

16:                                               ; preds = %4
  ret void
}

declare dso_local %struct.xdp_frame* @ptr_ring_consume(%struct.ptr_ring*) #1

declare dso_local i64 @WARN_ON_ONCE(%struct.xdp_frame*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

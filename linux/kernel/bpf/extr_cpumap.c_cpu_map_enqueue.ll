; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_cpu_map_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_cpu_map_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_cpu_map_entry = type { i32 }
%struct.xdp_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.xdp_frame = type { %struct.net_device* }

@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_map_enqueue(%struct.bpf_cpu_map_entry* %0, %struct.xdp_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_cpu_map_entry*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.xdp_frame*, align 8
  store %struct.bpf_cpu_map_entry* %0, %struct.bpf_cpu_map_entry** %5, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %10 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %9)
  store %struct.xdp_frame* %10, %struct.xdp_frame** %8, align 8
  %11 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %12 = icmp ne %struct.xdp_frame* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EOVERFLOW, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %23 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %22, i32 0, i32 0
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %5, align 8
  %25 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %26 = call i32 @bq_enqueue(%struct.bpf_cpu_map_entry* %24, %struct.xdp_frame* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bq_enqueue(%struct.bpf_cpu_map_entry*, %struct.xdp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

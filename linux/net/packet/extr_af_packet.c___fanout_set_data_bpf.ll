; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___fanout_set_data_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___fanout_set_data_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fanout = type { i32, i32 }
%struct.bpf_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_fanout*, %struct.bpf_prog*)* @__fanout_set_data_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fanout_set_data_bpf(%struct.packet_fanout* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.packet_fanout*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  store %struct.packet_fanout* %0, %struct.packet_fanout** %3, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %4, align 8
  %6 = load %struct.packet_fanout*, %struct.packet_fanout** %3, align 8
  %7 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.packet_fanout*, %struct.packet_fanout** %3, align 8
  %10 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.packet_fanout*, %struct.packet_fanout** %3, align 8
  %13 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %12, i32 0, i32 0
  %14 = call i32 @lockdep_is_held(i32* %13)
  %15 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %11, i32 %14)
  store %struct.bpf_prog* %15, %struct.bpf_prog** %5, align 8
  %16 = load %struct.packet_fanout*, %struct.packet_fanout** %3, align 8
  %17 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %20 = call i32 @rcu_assign_pointer(i32 %18, %struct.bpf_prog* %19)
  %21 = load %struct.packet_fanout*, %struct.packet_fanout** %3, align 8
  %22 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %25 = icmp ne %struct.bpf_prog* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = call i32 (...) @synchronize_net()
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %29 = call i32 @bpf_prog_destroy(%struct.bpf_prog* %28)
  br label %30

30:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.bpf_prog* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @bpf_prog_destroy(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

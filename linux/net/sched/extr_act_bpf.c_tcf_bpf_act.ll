; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_bpf = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_bpf_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_bpf_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcf_bpf*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_at_tc_ingress(%struct.sk_buff* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %15 = call %struct.tcf_bpf* @to_bpf(%struct.tc_action* %14)
  store %struct.tcf_bpf* %15, %struct.tcf_bpf** %8, align 8
  %16 = load %struct.tcf_bpf*, %struct.tcf_bpf** %8, align 8
  %17 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %16, i32 0, i32 3
  %18 = call i32 @tcf_lastuse_update(i32* %17)
  %19 = load %struct.tcf_bpf*, %struct.tcf_bpf** %8, align 8
  %20 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @this_cpu_ptr(i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @bstats_cpu_update(i32 %23, %struct.sk_buff* %24)
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.tcf_bpf*, %struct.tcf_bpf** %8, align 8
  %28 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.bpf_prog* @rcu_dereference(i32 %29)
  store %struct.bpf_prog* %30, %struct.bpf_prog** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__skb_push(%struct.sk_buff* %34, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @bpf_compute_data_pointers(%struct.sk_buff* %39)
  %41 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @BPF_PROG_RUN(%struct.bpf_prog* %41, %struct.sk_buff* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__skb_pull(%struct.sk_buff* %44, i32 %47)
  br label %55

49:                                               ; preds = %3
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @bpf_compute_data_pointers(%struct.sk_buff* %50)
  %52 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @BPF_PROG_RUN(%struct.bpf_prog* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %49, %33
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %72 [
    i32 132, label %58
    i32 131, label %58
    i32 133, label %58
    i32 130, label %58
    i32 129, label %60
    i32 128, label %68
  ]

58:                                               ; preds = %55, %55, %55, %55
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %10, align 4
  br label %73

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.tcf_bpf*, %struct.tcf_bpf** %8, align 8
  %63 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @this_cpu_ptr(i32 %65)
  %67 = call i32 @qstats_drop_inc(i32 %66)
  br label %73

68:                                               ; preds = %55
  %69 = load %struct.tcf_bpf*, %struct.tcf_bpf** %8, align 8
  %70 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  br label %73

72:                                               ; preds = %55
  store i32 128, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %68, %60, %58
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

declare dso_local i32 @skb_at_tc_ingress(%struct.sk_buff*) #1

declare dso_local %struct.tcf_bpf* @to_bpf(%struct.tc_action*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @bpf_compute_data_pointers(%struct.sk_buff*) #1

declare dso_local i32 @BPF_PROG_RUN(%struct.bpf_prog*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @qstats_drop_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

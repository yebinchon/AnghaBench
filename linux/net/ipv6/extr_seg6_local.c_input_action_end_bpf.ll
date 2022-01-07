; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.seg6_local_lwt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.seg6_bpf_srh_state = type { i32, i32, %struct.ipv6_sr_hdr* }
%struct.ipv6_sr_hdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@seg6_bpf_srh_states = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bpf-seg6local: Illegal return value %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* @input_action_end_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_action_end_bpf(%struct.sk_buff* %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.seg6_bpf_srh_state*, align 8
  %7 = alloca %struct.ipv6_sr_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %9 = call %struct.seg6_bpf_srh_state* @this_cpu_ptr(i32* @seg6_bpf_srh_states)
  store %struct.seg6_bpf_srh_state* %9, %struct.seg6_bpf_srh_state** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.ipv6_sr_hdr* @get_and_validate_srh(%struct.sk_buff* %10)
  store %struct.ipv6_sr_hdr* %11, %struct.ipv6_sr_hdr** %7, align 8
  %12 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %13 = icmp ne %struct.ipv6_sr_hdr* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @kfree_skb(%struct.sk_buff* %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @advance_nextseg(%struct.ipv6_sr_hdr* %20, i32* %23)
  %25 = call i32 (...) @preempt_disable()
  %26 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %27 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %6, align 8
  %28 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %27, i32 0, i32 2
  store %struct.ipv6_sr_hdr* %26, %struct.ipv6_sr_hdr** %28, align 8
  %29 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 3
  %33 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %6, align 8
  %34 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %6, align 8
  %36 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @bpf_compute_data_pointers(%struct.sk_buff* %38)
  %40 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %41 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @bpf_prog_run_save_cb(i32 %43, %struct.sk_buff* %44)
  store i32 %45, i32* %8, align 4
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %50 [
    i32 129, label %48
    i32 128, label %48
    i32 130, label %49
  ]

48:                                               ; preds = %19, %19
  br label %53

49:                                               ; preds = %19
  br label %73

50:                                               ; preds = %19
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pr_warn_once(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %73

53:                                               ; preds = %48
  %54 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %6, align 8
  %55 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %54, i32 0, i32 2
  %56 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %55, align 8
  %57 = icmp ne %struct.ipv6_sr_hdr* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @seg6_bpf_has_valid_srh(%struct.sk_buff* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %73

63:                                               ; preds = %58, %53
  %64 = call i32 (...) @preempt_enable()
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 128
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @seg6_lookup_nexthop(%struct.sk_buff* %68, i32* null, i32 0)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @dst_input(%struct.sk_buff* %71)
  store i32 %72, i32* %3, align 4
  br label %79

73:                                               ; preds = %62, %50, %49
  %74 = call i32 (...) @preempt_enable()
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %70, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.seg6_bpf_srh_state* @this_cpu_ptr(i32*) #1

declare dso_local %struct.ipv6_sr_hdr* @get_and_validate_srh(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @advance_nextseg(%struct.ipv6_sr_hdr*, i32*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @bpf_compute_data_pointers(%struct.sk_buff*) #1

declare dso_local i32 @bpf_prog_run_save_cb(i32, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @pr_warn_once(i8*, i32) #1

declare dso_local i32 @seg6_bpf_has_valid_srh(%struct.sk_buff*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @seg6_lookup_nexthop(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @dst_input(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

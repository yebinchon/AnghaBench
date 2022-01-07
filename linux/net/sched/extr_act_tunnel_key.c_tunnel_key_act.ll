; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_tunnel_key = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tcf_tunnel_key_params = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Bad tunnel_key action %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tunnel_key_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel_key_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.tcf_tunnel_key*, align 8
  %8 = alloca %struct.tcf_tunnel_key_params*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  %10 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %11 = call %struct.tcf_tunnel_key* @to_tunnel_key(%struct.tc_action* %10)
  store %struct.tcf_tunnel_key* %11, %struct.tcf_tunnel_key** %7, align 8
  %12 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %7, align 8
  %13 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tcf_tunnel_key_params* @rcu_dereference_bh(i32 %14)
  store %struct.tcf_tunnel_key_params* %15, %struct.tcf_tunnel_key_params** %8, align 8
  %16 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %16, i32 0, i32 2
  %18 = call i32 @tcf_lastuse_update(i32* %17)
  %19 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %7, align 8
  %20 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @this_cpu_ptr(i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @bstats_cpu_update(i32 %23, %struct.sk_buff* %24)
  %26 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %7, align 8
  %27 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @READ_ONCE(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %8, align 8
  %31 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %46 [
    i32 129, label %33
    i32 128, label %36
  ]

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @skb_dst_drop(%struct.sk_buff* %34)
  br label %51

36:                                               ; preds = %3
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @skb_dst_drop(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %8, align 8
  %41 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @dst_clone(i32* %43)
  %45 = call i32 @skb_dst_set(%struct.sk_buff* %39, i32 %44)
  br label %51

46:                                               ; preds = %3
  %47 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %8, align 8
  %48 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %36, %33
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local %struct.tcf_tunnel_key* @to_tunnel_key(%struct.tc_action*) #1

declare dso_local %struct.tcf_tunnel_key_params* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

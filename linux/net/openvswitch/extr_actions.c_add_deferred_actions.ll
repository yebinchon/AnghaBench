; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_add_deferred_actions.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_add_deferred_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deferred_action = type { i32, %struct.sw_flow_key, %struct.nlattr*, %struct.sk_buff* }
%struct.sw_flow_key = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }
%struct.action_fifo = type { i32 }

@action_fifos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.deferred_action* (%struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32)* @add_deferred_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.deferred_action* @add_deferred_actions(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.nlattr* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.action_fifo*, align 8
  %10 = alloca %struct.deferred_action*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @action_fifos, align 4
  %12 = call %struct.action_fifo* @this_cpu_ptr(i32 %11)
  store %struct.action_fifo* %12, %struct.action_fifo** %9, align 8
  %13 = load %struct.action_fifo*, %struct.action_fifo** %9, align 8
  %14 = call %struct.deferred_action* @action_fifo_put(%struct.action_fifo* %13)
  store %struct.deferred_action* %14, %struct.deferred_action** %10, align 8
  %15 = load %struct.deferred_action*, %struct.deferred_action** %10, align 8
  %16 = icmp ne %struct.deferred_action* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.deferred_action*, %struct.deferred_action** %10, align 8
  %20 = getelementptr inbounds %struct.deferred_action, %struct.deferred_action* %19, i32 0, i32 3
  store %struct.sk_buff* %18, %struct.sk_buff** %20, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %22 = load %struct.deferred_action*, %struct.deferred_action** %10, align 8
  %23 = getelementptr inbounds %struct.deferred_action, %struct.deferred_action* %22, i32 0, i32 2
  store %struct.nlattr* %21, %struct.nlattr** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.deferred_action*, %struct.deferred_action** %10, align 8
  %26 = getelementptr inbounds %struct.deferred_action, %struct.deferred_action* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.deferred_action*, %struct.deferred_action** %10, align 8
  %28 = getelementptr inbounds %struct.deferred_action, %struct.deferred_action* %27, i32 0, i32 1
  %29 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %30 = bitcast %struct.sw_flow_key* %28 to i8*
  %31 = bitcast %struct.sw_flow_key* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %17, %4
  %33 = load %struct.deferred_action*, %struct.deferred_action** %10, align 8
  ret %struct.deferred_action* %33
}

declare dso_local %struct.action_fifo* @this_cpu_ptr(i32) #1

declare dso_local %struct.deferred_action* @action_fifo_put(%struct.action_fifo*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

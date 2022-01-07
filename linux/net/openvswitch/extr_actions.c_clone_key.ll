; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_clone_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_clone_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32 }
%struct.action_flow_keys = type { %struct.sw_flow_key* }

@flow_keys = common dso_local global i32 0, align 4
@exec_actions_level = common dso_local global i32 0, align 4
@OVS_DEFERRED_ACTION_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sw_flow_key* (%struct.sw_flow_key*)* @clone_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sw_flow_key* @clone_key(%struct.sw_flow_key* %0) #0 {
  %2 = alloca %struct.sw_flow_key*, align 8
  %3 = alloca %struct.action_flow_keys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sw_flow_key*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %2, align 8
  %6 = load i32, i32* @flow_keys, align 4
  %7 = call %struct.action_flow_keys* @this_cpu_ptr(i32 %6)
  store %struct.action_flow_keys* %7, %struct.action_flow_keys** %3, align 8
  %8 = load i32, i32* @exec_actions_level, align 4
  %9 = call i32 @this_cpu_read(i32 %8)
  store i32 %9, i32* %4, align 4
  store %struct.sw_flow_key* null, %struct.sw_flow_key** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @OVS_DEFERRED_ACTION_THRESHOLD, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.action_flow_keys*, %struct.action_flow_keys** %3, align 8
  %15 = getelementptr inbounds %struct.action_flow_keys, %struct.action_flow_keys* %14, i32 0, i32 0
  %16 = load %struct.sw_flow_key*, %struct.sw_flow_key** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %16, i64 %19
  store %struct.sw_flow_key* %20, %struct.sw_flow_key** %5, align 8
  %21 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %22 = load %struct.sw_flow_key*, %struct.sw_flow_key** %2, align 8
  %23 = bitcast %struct.sw_flow_key* %21 to i8*
  %24 = bitcast %struct.sw_flow_key* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  ret %struct.sw_flow_key* %26
}

declare dso_local %struct.action_flow_keys* @this_cpu_ptr(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

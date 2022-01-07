; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_match_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_match_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_match = type { %struct.sw_flow_mask*, %struct.sw_flow_match* }
%struct.sw_flow_key = type { %struct.sw_flow_mask*, %struct.sw_flow_key* }
%struct.sw_flow_mask = type { %struct.TYPE_2__, %struct.sw_flow_match }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_match_init(%struct.sw_flow_match* %0, %struct.sw_flow_key* %1, i32 %2, %struct.sw_flow_mask* %3) #0 {
  %5 = alloca %struct.sw_flow_match*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sw_flow_mask*, align 8
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sw_flow_mask* %3, %struct.sw_flow_mask** %8, align 8
  %9 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %10 = call i32 @memset(%struct.sw_flow_match* %9, i32 0, i32 16)
  %11 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %12 = bitcast %struct.sw_flow_key* %11 to %struct.sw_flow_match*
  %13 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %14 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %13, i32 0, i32 1
  store %struct.sw_flow_match* %12, %struct.sw_flow_match** %14, align 8
  %15 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %16 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %17 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %16, i32 0, i32 0
  store %struct.sw_flow_mask* %15, %struct.sw_flow_mask** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %22 = bitcast %struct.sw_flow_key* %21 to %struct.sw_flow_match*
  %23 = call i32 @memset(%struct.sw_flow_match* %22, i32 0, i32 16)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %26 = icmp ne %struct.sw_flow_mask* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %29 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %28, i32 0, i32 1
  %30 = call i32 @memset(%struct.sw_flow_match* %29, i32 0, i32 16)
  %31 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %32 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %35 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @memset(%struct.sw_flow_match*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

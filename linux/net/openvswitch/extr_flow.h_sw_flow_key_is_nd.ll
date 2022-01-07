; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.h_sw_flow_key_is_nd.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.h_sw_flow_key_is_nd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NEXTHDR_ICMP = common dso_local global i64 0, align 8
@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*)* @sw_flow_key_is_nd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sw_flow_key_is_nd(%struct.sw_flow_key* %0) #0 {
  %2 = alloca %struct.sw_flow_key*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %2, align 8
  %3 = load %struct.sw_flow_key*, %struct.sw_flow_key** %2, align 8
  %4 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @ETH_P_IPV6, align 4
  %8 = call i64 @htons(i32 %7)
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.sw_flow_key*, %struct.sw_flow_key** %2, align 8
  %12 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NEXTHDR_ICMP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = load %struct.sw_flow_key*, %struct.sw_flow_key** %2, align 8
  %19 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.sw_flow_key*, %struct.sw_flow_key** %2, align 8
  %25 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @NDISC_NEIGHBOUR_SOLICITATION, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.sw_flow_key*, %struct.sw_flow_key** %2, align 8
  %33 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 4
  %37 = call i64 @htons(i32 %36)
  %38 = icmp eq i64 %35, %37
  br label %39

39:                                               ; preds = %31, %23
  %40 = phi i1 [ true, %23 ], [ %38, %31 ]
  br label %41

41:                                               ; preds = %39, %17, %10, %1
  %42 = phi i1 [ false, %17 ], [ false, %10 ], [ false, %1 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

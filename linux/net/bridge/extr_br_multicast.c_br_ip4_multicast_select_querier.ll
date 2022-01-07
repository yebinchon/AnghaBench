; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_select_querier.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_select_querier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_bridge_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, i64)* @br_ip4_multicast_select_querier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_ip4_multicast_select_querier(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %9 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32 @timer_pending(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = call i32 @timer_pending(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %42

20:                                               ; preds = %13, %3
  %21 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %22 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %42

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @ntohl(i64 %30)
  %32 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @ntohl(i64 %37)
  %39 = icmp sle i64 %31, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %55

42:                                               ; preds = %40, %28, %19
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %45 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i64 %43, i64* %48, align 8
  %49 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %50 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %54 = call i32 @rcu_assign_pointer(i32 %52, %struct.net_bridge_port* %53)
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %42, %41
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

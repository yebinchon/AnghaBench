; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_ns_capable.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_ns_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_skb_parms = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.user_namespace = type { i32 }

@NETLINK_SKB_DST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__netlink_ns_capable(%struct.netlink_skb_parms* %0, %struct.user_namespace* %1, i32 %2) #0 {
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i32, align 4
  store %struct.netlink_skb_parms* %0, %struct.netlink_skb_parms** %4, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %4, align 8
  %8 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NETLINK_SKB_DST, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %4, align 8
  %15 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @file_ns_capable(i32 %20, %struct.user_namespace* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %13, %3
  %26 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @ns_capable(%struct.user_namespace* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %13
  %31 = phi i1 [ false, %13 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @file_ns_capable(i32, %struct.user_namespace*, i32) #1

declare dso_local i64 @ns_capable(%struct.user_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

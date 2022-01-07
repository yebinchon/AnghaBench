; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_rtmsg_lfib.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_rtmsg_lfib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_route = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_MPLS_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.mpls_route*, %struct.nlmsghdr*, %struct.net*, i32, i32)* @rtmsg_lfib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmsg_lfib(i32 %0, i32 %1, %struct.mpls_route* %2, %struct.nlmsghdr* %3, %struct.net* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpls_route*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.mpls_route* %2, %struct.mpls_route** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.net* %4, %struct.net** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %19 = icmp ne %struct.nlmsghdr* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* @ENOBUFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %17, align 4
  %29 = load %struct.mpls_route*, %struct.mpls_route** %10, align 8
  %30 = call i32 @lfib_nlmsg_size(%struct.mpls_route* %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %15, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %64

36:                                               ; preds = %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.mpls_route*, %struct.mpls_route** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @mpls_dump_route(%struct.sk_buff* %37, i32 %38, i32 %39, i32 %40, i32 %41, %struct.mpls_route* %42, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  br label %64

56:                                               ; preds = %36
  %57 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %58 = load %struct.net*, %struct.net** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @RTNLGRP_MPLS_ROUTE, align 4
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @rtnl_notify(%struct.sk_buff* %57, %struct.net* %58, i32 %59, i32 %60, %struct.nlmsghdr* %61, i32 %62)
  br label %72

64:                                               ; preds = %47, %35
  %65 = load i32, i32* %17, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.net*, %struct.net** %12, align 8
  %69 = load i32, i32* @RTNLGRP_MPLS_ROUTE, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @rtnl_set_sk_err(%struct.net* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %56, %67, %64
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @lfib_nlmsg_size(%struct.mpls_route*) #1

declare dso_local i32 @mpls_dump_route(%struct.sk_buff*, i32, i32, i32, i32, %struct.mpls_route*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

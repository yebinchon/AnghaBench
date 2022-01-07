; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32 }
%struct.nl_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_NEXTHOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nexthop*, %struct.nl_info*)* @nexthop_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nexthop_notify(i32 %0, %struct.nexthop* %1, %struct.nl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nexthop*, align 8
  %6 = alloca %struct.nl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.nexthop* %1, %struct.nexthop** %5, align 8
  store %struct.nl_info* %2, %struct.nl_info** %6, align 8
  %11 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %12 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %17 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %20, %15 ], [ 0, %21 ]
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %25 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %30 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %28
  %36 = phi i32 [ %33, %28 ], [ 0, %34 ]
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %40 = call i32 @nh_nlmsg_size(%struct.nexthop* %39)
  %41 = call i32 (...) @gfp_any()
  %42 = call %struct.sk_buff* @nlmsg_new(i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %81

46:                                               ; preds = %35
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %51 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @nh_fill_node(%struct.sk_buff* %47, %struct.nexthop* %48, i32 %49, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @EMSGSIZE, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  br label %81

67:                                               ; preds = %46
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %70 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %73 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RTNLGRP_NEXTHOP, align 4
  %76 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %77 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = call i32 (...) @gfp_any()
  %80 = call i32 @rtnl_notify(%struct.sk_buff* %68, i32 %71, i32 %74, i32 %75, %struct.TYPE_2__* %78, i32 %79)
  br label %91

81:                                               ; preds = %58, %45
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %86 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RTNLGRP_NEXTHOP, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @rtnl_set_sk_err(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %67, %84, %81
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nh_nlmsg_size(%struct.nexthop*) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @nh_fill_node(%struct.sk_buff*, %struct.nexthop*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, i32, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

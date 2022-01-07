; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_notifyid.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_notifyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net_fill_args = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@RTNLGRP_NSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32, i32, i32, %struct.nlmsghdr*, i32)* @rtnl_net_notifyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtnl_net_notifyid(%struct.net* %0, i32 %1, i32 %2, i32 %3, %struct.nlmsghdr* %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_fill_args, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nlmsghdr* %4, %struct.nlmsghdr** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %13, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %13, i32 0, i32 1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %13, i32 0, i32 2
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %22 = icmp ne %struct.nlmsghdr* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  store i32 %29, i32* %20, align 4
  %30 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %13, i32 0, i32 3
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %30, align 4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %15, align 4
  %34 = call i32 (...) @rtnl_net_get_size()
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.sk_buff* @nlmsg_new(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %14, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %57

40:                                               ; preds = %28
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = call i32 @rtnl_net_fill(%struct.sk_buff* %41, %struct.net_fill_args* %13)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %48 = load %struct.net*, %struct.net** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @RTNLGRP_NSID, align 4
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @rtnl_notify(%struct.sk_buff* %47, %struct.net* %48, i32 %49, i32 %50, %struct.nlmsghdr* %51, i32 %52)
  br label %62

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %56 = call i32 @nlmsg_free(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %54, %39
  %58 = load %struct.net*, %struct.net** %7, align 8
  %59 = load i32, i32* @RTNLGRP_NSID, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @rtnl_set_sk_err(%struct.net* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %46
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rtnl_net_get_size(...) #1

declare dso_local i32 @rtnl_net_fill(%struct.sk_buff*, %struct.net_fill_args*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

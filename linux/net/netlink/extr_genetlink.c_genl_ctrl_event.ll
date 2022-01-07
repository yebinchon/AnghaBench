; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_ctrl_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_ctrl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.genl_family = type { i32 }
%struct.genl_multicast_group = type { i32 }
%struct.sk_buff = type { i32 }

@init_net = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@genl_ctrl = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.genl_family*, %struct.genl_multicast_group*, i32)* @genl_ctrl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genl_ctrl_event(i32 %0, %struct.genl_family* %1, %struct.genl_multicast_group* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.genl_family*, align 8
  %8 = alloca %struct.genl_multicast_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.genl_family* %1, %struct.genl_family** %7, align 8
  store %struct.genl_multicast_group* %2, %struct.genl_multicast_group** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @init_net, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %33 [
    i32 129, label %16
    i32 131, label %16
    i32 128, label %22
    i32 130, label %22
  ]

16:                                               ; preds = %14, %14
  %17 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %18 = call i32 @WARN_ON(%struct.genl_multicast_group* %17)
  %19 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.sk_buff* @ctrl_build_family_msg(%struct.genl_family* %19, i32 0, i32 0, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  br label %36

22:                                               ; preds = %14, %14
  %23 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %24 = icmp ne %struct.genl_multicast_group* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %29 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.sk_buff* @ctrl_build_mcgrp_msg(%struct.genl_family* %28, %struct.genl_multicast_group* %29, i32 %30, i32 0, i32 0, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %10, align 8
  br label %36

33:                                               ; preds = %14
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %59

36:                                               ; preds = %22, %16
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = call i64 @IS_ERR(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = call i32 @PTR_ERR(%struct.sk_buff* %41)
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %36
  %44 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %45 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @genlmsg_multicast_netns(i32* @genl_ctrl, %struct.TYPE_3__* @init_net, %struct.sk_buff* %49, i32 0, i32 0, i32 %50)
  br label %58

52:                                               ; preds = %43
  %53 = call i32 (...) @rcu_read_lock()
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call i32 @genlmsg_multicast_allns(i32* @genl_ctrl, %struct.sk_buff* %54, i32 0, i32 0, i32 %55)
  %57 = call i32 (...) @rcu_read_unlock()
  br label %58

58:                                               ; preds = %52, %48
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %40, %33, %13
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON(%struct.genl_multicast_group*) #1

declare dso_local %struct.sk_buff* @ctrl_build_family_msg(%struct.genl_family*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @ctrl_build_mcgrp_msg(%struct.genl_family*, %struct.genl_multicast_group*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, %struct.TYPE_3__*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @genlmsg_multicast_allns(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_dump_tclass.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_dump_tclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, i32 }
%struct.tcmsg = type { i32 }
%struct.net = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @tc_dump_tclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dump_tclass(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.tcmsg*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.tcmsg* @nlmsg_data(i32 %14)
  store %struct.tcmsg* %15, %struct.tcmsg** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %7, align 8
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nlmsg_len(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

27:                                               ; preds = %2
  %28 = load %struct.net*, %struct.net** %7, align 8
  %29 = load %struct.tcmsg*, %struct.tcmsg** %6, align 8
  %30 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.net_device* @dev_get_by_index(%struct.net* %28, i32 %31)
  store %struct.net_device* %32, %struct.net_device** %9, align 8
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %80

36:                                               ; preds = %27
  %37 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %38 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load %struct.tcmsg*, %struct.tcmsg** %6, align 8
  %47 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @tc_dump_tclass_root(i32 %44, %struct.sk_buff* %45, %struct.tcmsg* %46, %struct.netlink_callback* %47, i32* %10, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %69

52:                                               ; preds = %36
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = call %struct.netdev_queue* @dev_ingress_queue(%struct.net_device* %53)
  store %struct.netdev_queue* %54, %struct.netdev_queue** %8, align 8
  %55 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %56 = icmp ne %struct.netdev_queue* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %59 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.tcmsg*, %struct.tcmsg** %6, align 8
  %63 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @tc_dump_tclass_root(i32 %60, %struct.sk_buff* %61, %struct.tcmsg* %62, %struct.netlink_callback* %63, i32* %10, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %69

68:                                               ; preds = %57, %52
  br label %69

69:                                               ; preds = %68, %67, %51
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %72 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = call i32 @dev_put(%struct.net_device* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %69, %35, %26
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.tcmsg* @nlmsg_data(i32) #1

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nlmsg_len(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i64 @tc_dump_tclass_root(i32, %struct.sk_buff*, %struct.tcmsg*, %struct.netlink_callback*, i32*, i32) #1

declare dso_local %struct.netdev_queue* @dev_ingress_queue(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

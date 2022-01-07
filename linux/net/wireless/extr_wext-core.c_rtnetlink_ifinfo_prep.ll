; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_rtnetlink_ifinfo_prep.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_rtnetlink_ifinfo_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ifinfomsg = type { i64, i32, i32, i32, i64, i32 }

@RTM_NEWLINK = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlmsghdr* (%struct.net_device*, %struct.sk_buff*)* @rtnetlink_ifinfo_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlmsghdr* @rtnetlink_ifinfo_prep(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ifinfomsg*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @RTM_NEWLINK, align 4
  %10 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %8, i32 0, i32 0, i32 %9, i32 40, i32 0)
  store %struct.nlmsghdr* %10, %struct.nlmsghdr** %7, align 8
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %12 = icmp ne %struct.nlmsghdr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %3, align 8
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %16 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %15)
  store %struct.ifinfomsg* %16, %struct.ifinfomsg** %6, align 8
  %17 = load i32, i32* @AF_UNSPEC, align 4
  %18 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %19 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %21 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %26 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %31 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @dev_get_flags(%struct.net_device* %32)
  %34 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %35 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %37 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @IFLA_IFNAME, align 4
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_string(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %14
  br label %48

46:                                               ; preds = %14
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  store %struct.nlmsghdr* %47, %struct.nlmsghdr** %3, align 8
  br label %52

48:                                               ; preds = %45
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %51 = call i32 @nlmsg_cancel(%struct.sk_buff* %49, %struct.nlmsghdr* %50)
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %3, align 8
  br label %52

52:                                               ; preds = %48, %46, %13
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  ret %struct.nlmsghdr* %53
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

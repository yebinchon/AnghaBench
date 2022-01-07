; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_netlink_diag_handler_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_netlink_diag_handler_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.netlink_dump_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@netlink_diag_dump_done = common dso_local global i32 0, align 4
@netlink_diag_dump = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @netlink_diag_handler_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_diag_handler_dump(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.netlink_dump_control, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i32 4, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net* @sock_net(i32 %11)
  store %struct.net* %12, %struct.net** %7, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %14 = call i32 @nlmsg_len(%struct.nlmsghdr* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NLM_F_DUMP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %8, i32 0, i32 0
  %29 = load i32, i32* @netlink_diag_dump_done, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %8, i32 0, i32 1
  %31 = load i32, i32* @netlink_diag_dump, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.net*, %struct.net** %7, align 8
  %33 = getelementptr inbounds %struct.net, %struct.net* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %37 = call i32 @netlink_dump_start(i32 %34, %struct.sk_buff* %35, %struct.nlmsghdr* %36, %struct.netlink_dump_control* %8)
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %20
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %27, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

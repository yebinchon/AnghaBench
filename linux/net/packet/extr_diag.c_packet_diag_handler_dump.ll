; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_diag.c_packet_diag_handler_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_diag.c_packet_diag_handler_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.packet_diag_req = type { i64 }
%struct.netlink_dump_control = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@packet_diag_dump = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @packet_diag_handler_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_diag_handler_dump(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.packet_diag_req*, align 8
  %9 = alloca %struct.netlink_dump_control, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i32 8, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @sock_net(i32 %12)
  store %struct.net* %13, %struct.net** %7, align 8
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %15 = call i32 @nlmsg_len(%struct.nlmsghdr* %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %23 = call %struct.packet_diag_req* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.packet_diag_req* %23, %struct.packet_diag_req** %8, align 8
  %24 = load %struct.packet_diag_req*, %struct.packet_diag_req** %8, align 8
  %25 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %21
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NLM_F_DUMP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %9, i32 0, i32 0
  %40 = load i32, i32* @packet_diag_dump, align 4
  store i32 %40, i32* %39, align 4
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %46 = call i32 @netlink_dump_start(i32 %43, %struct.sk_buff* %44, %struct.nlmsghdr* %45, %struct.netlink_dump_control* %9)
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %38, %28, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local %struct.packet_diag_req* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

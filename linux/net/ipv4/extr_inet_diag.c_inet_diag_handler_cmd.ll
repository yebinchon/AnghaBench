; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_handler_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_handler_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_dump_control = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_DIAG_BY_FAMILY = common dso_local global i64 0, align 8
@NLM_F_DUMP = common dso_local global i32 0, align 4
@INET_DIAG_REQ_BYTECODE = common dso_local global i32 0, align 4
@inet_diag_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @inet_diag_handler_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_handler_cmd(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlink_dump_control, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i32 4, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %16 = call i32 @nlmsg_len(%struct.nlmsghdr* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %24 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_DIAG_BY_FAMILY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %22
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NLM_F_DUMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %28
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @INET_DIAG_REQ_BYTECODE, align 4
  %44 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %41, i32 %42, i32 %43)
  store %struct.nlattr* %44, %struct.nlattr** %8, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @inet_diag_bc_audit(%struct.nlattr* %45, %struct.sk_buff* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %35
  %54 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %10, i32 0, i32 0
  %55 = load i32, i32* @inet_diag_dump, align 4
  store i32 %55, i32* %54, align 4
  %56 = load %struct.net*, %struct.net** %7, align 8
  %57 = getelementptr inbounds %struct.net, %struct.net* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %61 = call i32 @netlink_dump_start(i32 %58, %struct.sk_buff* %59, %struct.nlmsghdr* %60, %struct.netlink_dump_control* %10)
  store i32 %61, i32* %3, align 4
  br label %71

62:                                               ; preds = %28, %22
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %64 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %69 = call i32 @nlmsg_data(%struct.nlmsghdr* %68)
  %70 = call i32 @inet_diag_cmd_exact(i64 %65, %struct.sk_buff* %66, %struct.nlmsghdr* %67, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %53, %50, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @inet_diag_bc_audit(%struct.nlattr*, %struct.sk_buff*) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @inet_diag_cmd_exact(i64, %struct.sk_buff*, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @nlmsg_data(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

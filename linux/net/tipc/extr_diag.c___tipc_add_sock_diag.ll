; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_diag.c___tipc_add_sock_diag.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_diag.c___tipc_add_sock_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.tipc_sock = type { i32 }
%struct.tipc_sock_diag_req = type { i32 }
%struct.nlmsghdr = type { i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@__tipc_diag_gen_cookie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.tipc_sock*)* @__tipc_add_sock_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_add_sock_diag(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.tipc_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.tipc_sock*, align 8
  %8 = alloca %struct.tipc_sock_diag_req*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.tipc_sock* %2, %struct.tipc_sock** %7, align 8
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tipc_sock_diag_req* @nlmsg_data(i32 %13)
  store %struct.tipc_sock_diag_req* %14, %struct.tipc_sock_diag_req** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %17 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %18 = load i32, i32* @NLM_F_MULTI, align 4
  %19 = call %struct.nlmsghdr* @nlmsg_put_answer(%struct.sk_buff* %15, %struct.netlink_callback* %16, i32 %17, i32 0, i32 %18)
  store %struct.nlmsghdr* %19, %struct.nlmsghdr** %9, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %21 = icmp ne %struct.nlmsghdr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %28 = load %struct.tipc_sock*, %struct.tipc_sock** %7, align 8
  %29 = load %struct.tipc_sock_diag_req*, %struct.tipc_sock_diag_req** %8, align 8
  %30 = getelementptr inbounds %struct.tipc_sock_diag_req, %struct.tipc_sock_diag_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @__tipc_diag_gen_cookie, align 4
  %33 = call i32 @tipc_sk_fill_sock_diag(%struct.sk_buff* %26, %struct.netlink_callback* %27, %struct.tipc_sock* %28, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %41 = call i32 @nlmsg_end(%struct.sk_buff* %39, %struct.nlmsghdr* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %36, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.tipc_sock_diag_req* @nlmsg_data(i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put_answer(%struct.sk_buff*, %struct.netlink_callback*, i32, i32, i32) #1

declare dso_local i32 @tipc_sk_fill_sock_diag(%struct.sk_buff*, %struct.netlink_callback*, %struct.tipc_sock*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

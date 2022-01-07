; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw_diag.c_raw_diag_dump_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw_diag.c_raw_diag_dump_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.inet_diag_req_v2*)* @raw_diag_dump_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_diag_dump_one(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.inet_diag_req_v2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.inet_diag_req_v2*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.inet_diag_req_v2* %2, %struct.inet_diag_req_v2** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %8, align 8
  %19 = load %struct.net*, %struct.net** %8, align 8
  %20 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %7, align 8
  %21 = call %struct.sock* @raw_sock_get(%struct.net* %19, %struct.inet_diag_req_v2* %20)
  store %struct.sock* %21, %struct.sock** %10, align 8
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = call i64 @IS_ERR(%struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.sock* %26)
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %3
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 72, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = call i32 @sock_put(%struct.sock* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %86

38:                                               ; preds = %28
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i64 @NETLINK_CB(%struct.sk_buff* %42)
  %44 = bitcast %struct.TYPE_2__* %12 to i64*
  store i64 %43, i64* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sk_user_ns(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i64 @NETLINK_CB(%struct.sk_buff* %48)
  %50 = bitcast %struct.TYPE_2__* %13 to i64*
  store i64 %49, i64* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %54 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* @CAP_NET_ADMIN, align 4
  %59 = call i32 @netlink_net_capable(%struct.sk_buff* %57, i32 %58)
  %60 = call i32 @inet_sk_diag_fill(%struct.sock* %39, i32* null, %struct.sk_buff* %40, %struct.inet_diag_req_v2* %41, i32 %47, i32 %52, i32 %55, i32 0, %struct.nlmsghdr* %56, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.sock*, %struct.sock** %10, align 8
  %62 = call i32 @sock_put(%struct.sock* %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %38
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %86

69:                                               ; preds = %38
  %70 = load %struct.net*, %struct.net** %8, align 8
  %71 = getelementptr inbounds %struct.net, %struct.net* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i64 @NETLINK_CB(%struct.sk_buff* %74)
  %76 = bitcast %struct.TYPE_2__* %14 to i64*
  store i64 %75, i64* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MSG_DONTWAIT, align 4
  %80 = call i32 @netlink_unicast(i32 %72, %struct.sk_buff* %73, i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %65, %33, %25
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.sock* @raw_sock_get(%struct.net*, %struct.inet_diag_req_v2*) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

declare dso_local i32 @PTR_ERR(%struct.sock*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @inet_sk_diag_fill(%struct.sock*, i32*, %struct.sk_buff*, %struct.inet_diag_req_v2*, i32, i32, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @sk_user_ns(i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @netlink_net_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

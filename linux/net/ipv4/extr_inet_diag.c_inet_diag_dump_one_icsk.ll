; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_dump_one_icsk.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_dump_one_icsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_hashinfo = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_diag_dump_one_icsk(%struct.inet_hashinfo* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.inet_diag_req_v2* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_hashinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.inet_diag_req_v2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  store %struct.inet_hashinfo* %0, %struct.inet_hashinfo** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.inet_diag_req_v2* %3, %struct.inet_diag_req_v2** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load i32, i32* @CAP_NET_ADMIN, align 4
  %20 = call i32 @netlink_net_capable(%struct.sk_buff* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net* @sock_net(i32 %23)
  store %struct.net* %24, %struct.net** %11, align 8
  %25 = load %struct.net*, %struct.net** %11, align 8
  %26 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %6, align 8
  %27 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %28 = call %struct.sock* @inet_diag_find_one_icsk(%struct.net* %25, %struct.inet_hashinfo* %26, %struct.inet_diag_req_v2* %27)
  store %struct.sock* %28, %struct.sock** %13, align 8
  %29 = load %struct.sock*, %struct.sock** %13, align 8
  %30 = call i64 @IS_ERR(%struct.sock* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.sock*, %struct.sock** %13, align 8
  %34 = call i32 @PTR_ERR(%struct.sock* %33)
  store i32 %34, i32* %5, align 4
  br label %103

35:                                               ; preds = %4
  %36 = load %struct.sock*, %struct.sock** %13, align 8
  %37 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @inet_sk_attr_size(%struct.sock* %36, %struct.inet_diag_req_v2* %37, i32 %38)
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sk_buff* @nlmsg_new(i32 %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %12, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %95

47:                                               ; preds = %35
  %48 = load %struct.sock*, %struct.sock** %13, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %50 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i64 @NETLINK_CB(%struct.sk_buff* %51)
  %53 = bitcast %struct.TYPE_2__* %15 to i64*
  store i64 %52, i64* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sk_user_ns(i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i64 @NETLINK_CB(%struct.sk_buff* %57)
  %59 = bitcast %struct.TYPE_2__* %16 to i64*
  store i64 %58, i64* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %63 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @sk_diag_fill(%struct.sock* %48, %struct.sk_buff* %49, %struct.inet_diag_req_v2* %50, i32 %56, i32 %61, i32 %64, i32 0, %struct.nlmsghdr* %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %47
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @EMSGSIZE, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %78 = call i32 @nlmsg_free(%struct.sk_buff* %77)
  br label %95

79:                                               ; preds = %47
  %80 = load %struct.net*, %struct.net** %11, align 8
  %81 = getelementptr inbounds %struct.net, %struct.net* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i64 @NETLINK_CB(%struct.sk_buff* %84)
  %86 = bitcast %struct.TYPE_2__* %17 to i64*
  store i64 %85, i64* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MSG_DONTWAIT, align 4
  %90 = call i32 @netlink_unicast(i32 %82, %struct.sk_buff* %83, i32 %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %70, %44
  %96 = load %struct.sock*, %struct.sock** %13, align 8
  %97 = icmp ne %struct.sock* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.sock*, %struct.sock** %13, align 8
  %100 = call i32 @sock_gen_put(%struct.sock* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %32
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @netlink_net_capable(%struct.sk_buff*, i32) #1

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.sock* @inet_diag_find_one_icsk(%struct.net*, %struct.inet_hashinfo*, %struct.inet_diag_req_v2*) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

declare dso_local i32 @PTR_ERR(%struct.sock*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet_sk_attr_size(%struct.sock*, %struct.inet_diag_req_v2*, i32) #1

declare dso_local i32 @sk_diag_fill(%struct.sock*, %struct.sk_buff*, %struct.inet_diag_req_v2*, i32, i32, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @sk_user_ns(i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @sock_gen_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

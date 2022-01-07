; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_tsp_dump_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_tsp_dump_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sctp_comm_param = type { i32, %struct.nlmsghdr*, %struct.inet_diag_req_v2*, %struct.sk_buff* }
%struct.nlmsghdr = type { i32 }
%struct.inet_diag_req_v2 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_transport*, i8*)* @sctp_tsp_dump_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_tsp_dump_one(%struct.sctp_transport* %0, i8* %1) #0 {
  %3 = alloca %struct.sctp_transport*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sctp_comm_param*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet_diag_req_v2*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  store %struct.sctp_transport* %0, %struct.sctp_transport** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %17, i32 0, i32 0
  %19 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  store %struct.sctp_association* %19, %struct.sctp_association** %5, align 8
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %21 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %20, i32 0, i32 0
  %22 = load %struct.sctp_association*, %struct.sctp_association** %21, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %6, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.sctp_comm_param*
  store %struct.sctp_comm_param* %27, %struct.sctp_comm_param** %7, align 8
  %28 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %28, i32 0, i32 3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %7, align 8
  %32 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %31, i32 0, i32 2
  %33 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %32, align 8
  store %struct.inet_diag_req_v2* %33, %struct.inet_diag_req_v2** %9, align 8
  %34 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %7, align 8
  %35 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %34, i32 0, i32 1
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %35, align 8
  store %struct.nlmsghdr* %36, %struct.nlmsghdr** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.net* @sock_net(i32 %39)
  store %struct.net* %40, %struct.net** %11, align 8
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %43 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sock_diag_check_cookie(%struct.sock* %41, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  br label %131

50:                                               ; preds = %2
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %54 = call i32 @inet_assoc_attr_size(%struct.sctp_association* %53)
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.sk_buff* @nlmsg_new(i32 %54, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %131

60:                                               ; preds = %50
  %61 = load %struct.sock*, %struct.sock** %6, align 8
  %62 = call i32 @lock_sock(%struct.sock* %61)
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %65 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.sock*, %struct.sock** %66, align 8
  %68 = icmp ne %struct.sock* %63, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load %struct.sock*, %struct.sock** %6, align 8
  %71 = call i32 @release_sock(%struct.sock* %70)
  %72 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %73 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.sock*, %struct.sock** %74, align 8
  store %struct.sock* %75, %struct.sock** %6, align 8
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = call i32 @lock_sock(%struct.sock* %76)
  br label %78

78:                                               ; preds = %69, %60
  %79 = load %struct.sock*, %struct.sock** %6, align 8
  %80 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = call i64 @NETLINK_CB(%struct.sk_buff* %83)
  %85 = bitcast %struct.TYPE_6__* %14 to i64*
  store i64 %84, i64* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sk_user_ns(i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i64 @NETLINK_CB(%struct.sk_buff* %89)
  %91 = bitcast %struct.TYPE_6__* %15 to i64*
  store i64 %90, i64* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %95 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %98 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %7, align 8
  %99 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @inet_sctp_diag_fill(%struct.sock* %79, %struct.sctp_association* %80, %struct.sk_buff* %81, %struct.inet_diag_req_v2* %82, i32 %88, i32 %93, i32 %96, i32 0, %struct.nlmsghdr* %97, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = call i32 @release_sock(%struct.sock* %102)
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %78
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @EMSGSIZE, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @WARN_ON(i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %114 = call i32 @kfree_skb(%struct.sk_buff* %113)
  br label %131

115:                                              ; preds = %78
  %116 = load %struct.net*, %struct.net** %11, align 8
  %117 = getelementptr inbounds %struct.net, %struct.net* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call i64 @NETLINK_CB(%struct.sk_buff* %120)
  %122 = bitcast %struct.TYPE_6__* %16 to i64*
  store i64 %121, i64* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MSG_DONTWAIT, align 4
  %126 = call i32 @netlink_unicast(i32 %118, %struct.sk_buff* %119, i32 %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130, %106, %59, %49
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @sock_diag_check_cookie(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet_assoc_attr_size(%struct.sctp_association*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @inet_sctp_diag_fill(%struct.sock*, %struct.sctp_association*, %struct.sk_buff*, %struct.inet_diag_req_v2*, i32, i32, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @sk_user_ns(i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_diag_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_diag_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.sctp_comm_param = type { i32, %struct.inet_diag_req_v2*, %struct.netlink_callback*, %struct.sk_buff* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@sctp_ep_dump = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@sctp_sock_filter = common dso_local global i32 0, align 4
@sctp_sock_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.netlink_callback*, %struct.inet_diag_req_v2*, %struct.nlattr*)* @sctp_diag_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_diag_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.inet_diag_req_v2* %2, %struct.nlattr* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.inet_diag_req_v2*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sctp_comm_param, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.inet_diag_req_v2* %2, %struct.inet_diag_req_v2** %7, align 8
  store %struct.nlattr* %3, %struct.nlattr** %8, align 8
  %13 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %7, align 8
  %14 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %10, align 8
  %20 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %11, i32 0, i32 0
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CAP_NET_ADMIN, align 4
  %25 = call i32 @netlink_net_capable(i32 %23, i32 %24)
  store i32 %25, i32* %20, align 8
  %26 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %11, i32 0, i32 1
  %27 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %7, align 8
  store %struct.inet_diag_req_v2* %27, %struct.inet_diag_req_v2** %26, align 8
  %28 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %11, i32 0, i32 2
  %29 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  store %struct.netlink_callback* %29, %struct.netlink_callback** %28, align 8
  %30 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %11, i32 0, i32 3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %30, align 8
  %32 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %33 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %38 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @TCPF_LISTEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @sctp_ep_dump, align 4
  %51 = call i64 @sctp_for_each_endpoint(i32 %50, %struct.sctp_comm_param* %11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %87

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %48
  %56 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %57 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %61 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %65 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %55, %4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @TCPF_LISTEN, align 4
  %71 = load i32, i32* @TCPF_CLOSE, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %87

77:                                               ; preds = %68
  %78 = load i32, i32* @sctp_sock_filter, align 4
  %79 = load i32, i32* @sctp_sock_dump, align 4
  %80 = load %struct.net*, %struct.net** %10, align 8
  %81 = call i32 @sctp_for_each_transport(i32 %78, i32 %79, %struct.net* %80, i32* %12, %struct.sctp_comm_param* %11)
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %84 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %77, %76, %53
  %88 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %89 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %94 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %98 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  store i32 0, i32* %100, align 4
  ret void
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @netlink_net_capable(i32, i32) #1

declare dso_local i64 @sctp_for_each_endpoint(i32, %struct.sctp_comm_param*) #1

declare dso_local i32 @sctp_for_each_transport(i32, i32, %struct.net*, i32*, %struct.sctp_comm_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_ep_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_ep_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sctp_comm_param = type { i32, %struct.inet_diag_req_v2*, %struct.netlink_callback*, %struct.sk_buff* }
%struct.inet_diag_req_v2 = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.netlink_callback = type { i64*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.net = type { i32 }
%struct.inet_sock = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@TCPF_LISTEN = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, i8*)* @sctp_ep_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_ep_dump(%struct.sctp_endpoint* %0, i8* %1) #0 {
  %3 = alloca %struct.sctp_endpoint*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sctp_comm_param*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.inet_diag_req_v2*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.sctp_comm_param*
  store %struct.sctp_comm_param* %16, %struct.sctp_comm_param** %5, align 8
  %17 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %6, align 8
  %21 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %5, align 8
  %22 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %21, i32 0, i32 3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %24, i32 0, i32 2
  %26 = load %struct.netlink_callback*, %struct.netlink_callback** %25, align 8
  store %struct.netlink_callback* %26, %struct.netlink_callback** %8, align 8
  %27 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %27, i32 0, i32 1
  %29 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %28, align 8
  store %struct.inet_diag_req_v2* %29, %struct.inet_diag_req_v2** %9, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load %struct.sock*, %struct.sock** %31, align 8
  %33 = call %struct.net* @sock_net(%struct.sock* %32)
  store %struct.net* %33, %struct.net** %10, align 8
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = call %struct.inet_sock* @inet_sk(%struct.sock* %34)
  store %struct.inet_sock* %35, %struct.inet_sock** %11, align 8
  store i32 0, i32* %12, align 4
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = call %struct.net* @sock_net(%struct.sock* %36)
  %38 = load %struct.net*, %struct.net** %10, align 8
  %39 = call i32 @net_eq(%struct.net* %37, %struct.net* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %157

42:                                               ; preds = %2
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %49 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %150

55:                                               ; preds = %42
  %56 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %57 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TCPF_LISTEN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %3, align 8
  %64 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %63, i32 0, i32 0
  %65 = call i32 @list_empty(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %150

68:                                               ; preds = %62, %55
  %69 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %70 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AF_UNSPEC, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %79 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %150

83:                                               ; preds = %74, %68
  %84 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %85 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %89 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %94 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %150

99:                                               ; preds = %92, %83
  %100 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %101 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %105 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %99
  %109 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %110 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %150

115:                                              ; preds = %108, %99
  %116 = load %struct.sock*, %struct.sock** %6, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %9, align 8
  %119 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %120 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @NETLINK_CB(i32 %121)
  %123 = bitcast %struct.TYPE_8__* %13 to i64*
  store i64 %122, i64* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sk_user_ns(i32 %125)
  %127 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %128 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @NETLINK_CB(i32 %129)
  %131 = bitcast %struct.TYPE_8__* %14 to i64*
  store i64 %130, i64* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %135 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @NLM_F_MULTI, align 4
  %140 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %141 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load %struct.sctp_comm_param*, %struct.sctp_comm_param** %5, align 8
  %144 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @inet_sctp_diag_fill(%struct.sock* %116, i32* null, %struct.sk_buff* %117, %struct.inet_diag_req_v2* %118, i32 %126, i32 %133, i32 %138, i32 %139, %struct.TYPE_7__* %142, i32 %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %115
  store i32 2, i32* %12, align 4
  br label %157

149:                                              ; preds = %115
  br label %150

150:                                              ; preds = %149, %114, %98, %82, %67, %54
  %151 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %152 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 4
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %150, %148, %41
  %158 = load i32, i32* %12, align 4
  ret i32 %158
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(%struct.net*, %struct.net*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @inet_sctp_diag_fill(%struct.sock*, i32*, %struct.sk_buff*, %struct.inet_diag_req_v2*, i32, i32, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @sk_user_ns(i32) #1

declare dso_local i64 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

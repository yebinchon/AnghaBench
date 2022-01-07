; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_conn_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32 }
%struct.request_sock = type { i32 }
%struct.dccp_request_sock = type { i32, i32, i32, i32, i32 }
%struct.dccp_skb_cb = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_BAD_SERVICE_CODE = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i32 0, align 4
@dccp_request_sock_ops = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@DCCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_v4_conn_request(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.inet_request_sock*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.dccp_request_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_skb_cb*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.TYPE_6__* @dccp_hdr_request(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %15)
  store %struct.dccp_skb_cb* %16, %struct.dccp_skb_cb** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.TYPE_4__* @skb_rtable(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RTCF_BROADCAST, align 4
  %22 = load i32, i32* @RTCF_MULTICAST, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %149

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @dccp_bad_service_code(%struct.sock* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @DCCP_RESET_CODE_BAD_SERVICE_CODE, align 4
  %34 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %10, align 8
  %35 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %146

36:                                               ; preds = %27
  %37 = load i32, i32* @DCCP_RESET_CODE_TOO_BUSY, align 4
  %38 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %10, align 8
  %39 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i64 @inet_csk_reqsk_queue_is_full(%struct.sock* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %146

44:                                               ; preds = %36
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i64 @sk_acceptq_is_full(%struct.sock* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %146

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call %struct.request_sock* @inet_reqsk_alloc(i32* @dccp_request_sock_ops, %struct.sock* %50, i32 1)
  store %struct.request_sock* %51, %struct.request_sock** %7, align 8
  %52 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %53 = icmp eq %struct.request_sock* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %146

55:                                               ; preds = %49
  %56 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i32 @dccp_sk(%struct.sock* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i64 @dccp_reqsk_init(%struct.request_sock* %56, i32 %58, %struct.sk_buff* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %143

63:                                               ; preds = %55
  %64 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %65 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %64)
  store %struct.dccp_request_sock* %65, %struct.dccp_request_sock** %8, align 8
  %66 = load %struct.sock*, %struct.sock** %4, align 8
  %67 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i64 @dccp_parse_options(%struct.sock* %66, %struct.dccp_request_sock* %67, %struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %143

72:                                               ; preds = %63
  %73 = load %struct.sock*, %struct.sock** %4, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %76 = call i64 @security_inet_conn_request(%struct.sock* %73, %struct.sk_buff* %74, %struct.request_sock* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %143

79:                                               ; preds = %72
  %80 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %81 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %80)
  store %struct.inet_request_sock* %81, %struct.inet_request_sock** %6, align 8
  %82 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %83 = call i32 @req_to_sk(%struct.request_sock* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sk_rcv_saddr_set(i32 %83, i32 %87)
  %89 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %90 = call i32 @req_to_sk(%struct.request_sock* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sk_daddr_set(i32 %90, i32 %94)
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @inet_request_mark(%struct.sock* %96, %struct.sk_buff* %97)
  %99 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %100 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @AF_INET, align 4
  %102 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %103 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %108 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %10, align 8
  %110 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %113 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %115 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %118 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = call i32 @dccp_v4_init_sequence(%struct.sk_buff* %119)
  %121 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %122 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %124 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %127 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %130 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.sock*, %struct.sock** %4, align 8
  %132 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %133 = call i64 @dccp_v4_send_response(%struct.sock* %131, %struct.request_sock* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %79
  br label %143

136:                                              ; preds = %79
  %137 = load %struct.sock*, %struct.sock** %4, align 8
  %138 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %139 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %140 = call i32 @inet_csk_reqsk_queue_hash_add(%struct.sock* %137, %struct.request_sock* %138, i32 %139)
  %141 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %142 = call i32 @reqsk_put(%struct.request_sock* %141)
  store i32 0, i32* %3, align 4
  br label %149

143:                                              ; preds = %135, %78, %71, %62
  %144 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %145 = call i32 @reqsk_free(%struct.request_sock* %144)
  br label %146

146:                                              ; preds = %143, %54, %48, %43, %32
  %147 = load i32, i32* @DCCP_MIB_ATTEMPTFAILS, align 4
  %148 = call i32 @__DCCP_INC_STATS(i32 %147)
  store i32 -1, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %136, %26
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_6__* @dccp_hdr_request(%struct.sk_buff*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @dccp_bad_service_code(%struct.sock*, i32) #1

declare dso_local i64 @inet_csk_reqsk_queue_is_full(%struct.sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet_reqsk_alloc(i32*, %struct.sock*, i32) #1

declare dso_local i64 @dccp_reqsk_init(%struct.request_sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, %struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local i64 @security_inet_conn_request(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @sk_rcv_saddr_set(i32, i32) #1

declare dso_local i32 @req_to_sk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sk_daddr_set(i32, i32) #1

declare dso_local i32 @inet_request_mark(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_v4_init_sequence(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v4_send_response(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_hash_add(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

declare dso_local i32 @__DCCP_INC_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

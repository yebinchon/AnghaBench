; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_conn_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.request_sock = type { i32 }
%struct.dccp_request_sock = type { i32, i32, i32, i32, i32 }
%struct.inet_request_sock = type { i32, i32, %struct.sk_buff*, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.dccp_skb_cb = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_BAD_SERVICE_CODE = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i32 0, align 4
@dccp6_request_sock_ops = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@DCCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_v6_conn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_conn_request(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.dccp_request_sock*, align 8
  %8 = alloca %struct.inet_request_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dccp_skb_cb*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %12)
  store %struct.ipv6_pinfo* %13, %struct.ipv6_pinfo** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.TYPE_8__* @dccp_hdr_request(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %18)
  store %struct.dccp_skb_cb* %19, %struct.dccp_skb_cb** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @ETH_P_IP, align 4
  %24 = call i64 @htons(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @dccp_v4_conn_request(%struct.sock* %27, %struct.sk_buff* %28)
  store i32 %29, i32* %3, align 4
  br label %214

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %214

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @dccp_bad_service_code(%struct.sock* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @DCCP_RESET_CODE_BAD_SERVICE_CODE, align 4
  %42 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %43 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %211

44:                                               ; preds = %35
  %45 = load i32, i32* @DCCP_RESET_CODE_TOO_BUSY, align 4
  %46 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %47 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i64 @inet_csk_reqsk_queue_is_full(%struct.sock* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %211

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i64 @sk_acceptq_is_full(%struct.sock* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %211

57:                                               ; preds = %52
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = call %struct.request_sock* @inet_reqsk_alloc(i32* @dccp6_request_sock_ops, %struct.sock* %58, i32 1)
  store %struct.request_sock* %59, %struct.request_sock** %6, align 8
  %60 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %61 = icmp eq %struct.request_sock* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %211

63:                                               ; preds = %57
  %64 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = call i32 @dccp_sk(%struct.sock* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i64 @dccp_reqsk_init(%struct.request_sock* %64, i32 %66, %struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %208

71:                                               ; preds = %63
  %72 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %73 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %72)
  store %struct.dccp_request_sock* %73, %struct.dccp_request_sock** %7, align 8
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i64 @dccp_parse_options(%struct.sock* %74, %struct.dccp_request_sock* %75, %struct.sk_buff* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %208

80:                                               ; preds = %71
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %84 = call i64 @security_inet_conn_request(%struct.sock* %81, %struct.sk_buff* %82, %struct.request_sock* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %208

87:                                               ; preds = %80
  %88 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %89 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %88)
  store %struct.inet_request_sock* %89, %struct.inet_request_sock** %8, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %95 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %101 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @AF_INET6, align 4
  %103 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %104 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sock*, %struct.sock** %4, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @inet_request_mark(%struct.sock* %105, %struct.sk_buff* %106)
  %108 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %109 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sock*, %struct.sock** %4, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @IP6CB(%struct.sk_buff* %112)
  %114 = call i64 @ipv6_opt_accepted(%struct.sock* %110, %struct.sk_buff* %111, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %144, label %116

116:                                              ; preds = %87
  %117 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %118 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %144, label %123

123:                                              ; preds = %116
  %124 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %125 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %123
  %131 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %132 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %139 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %137, %130, %123, %116, %87
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = call i32 @refcount_inc(i32* %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %150 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %149, i32 0, i32 2
  store %struct.sk_buff* %148, %struct.sk_buff** %150, align 8
  br label %151

151:                                              ; preds = %144, %137
  %152 = load %struct.sock*, %struct.sock** %4, align 8
  %153 = getelementptr inbounds %struct.sock, %struct.sock* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %156 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.sock*, %struct.sock** %4, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %151
  %162 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %163 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %162, i32 0, i32 1
  %164 = call i32 @ipv6_addr_type(i32* %163)
  %165 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call i32 @inet6_iif(%struct.sk_buff* %169)
  %171 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %172 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %168, %161, %151
  %174 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %175 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %178 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %180 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %183 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = call i32 @dccp_v6_init_sequence(%struct.sk_buff* %184)
  %186 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %187 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %189 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %192 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %195 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load %struct.sock*, %struct.sock** %4, align 8
  %197 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %198 = call i64 @dccp_v6_send_response(%struct.sock* %196, %struct.request_sock* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %173
  br label %208

201:                                              ; preds = %173
  %202 = load %struct.sock*, %struct.sock** %4, align 8
  %203 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %204 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %205 = call i32 @inet_csk_reqsk_queue_hash_add(%struct.sock* %202, %struct.request_sock* %203, i32 %204)
  %206 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %207 = call i32 @reqsk_put(%struct.request_sock* %206)
  store i32 0, i32* %3, align 4
  br label %214

208:                                              ; preds = %200, %86, %79, %70
  %209 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %210 = call i32 @reqsk_free(%struct.request_sock* %209)
  br label %211

211:                                              ; preds = %208, %62, %56, %51, %40
  %212 = load i32, i32* @DCCP_MIB_ATTEMPTFAILS, align 4
  %213 = call i32 @__DCCP_INC_STATS(i32 %212)
  store i32 -1, i32* %3, align 4
  br label %214

214:                                              ; preds = %211, %201, %34, %26
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @dccp_hdr_request(%struct.sk_buff*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dccp_v4_conn_request(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

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

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @inet_request_mark(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v6_init_sequence(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v6_send_response(%struct.sock*, %struct.request_sock*) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_make_synack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_make_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32, i32, i64 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.request_sock = type { i32, i32 }
%struct.tcp_fastopen_cookie = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32 }
%struct.tcp_sock = type { i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.tcp_out_options = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i8* }
%struct.tcphdr = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 (i32, %struct.tcp_md5sig_key*, %struct.sock*, %struct.sk_buff*)*, %struct.tcp_md5sig_key* (%struct.sock*, %struct.sock*)* }

@MAX_TCP_HEADER = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@TCP_MIB_OUTSEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tcp_make_synack(%struct.sock* %0, %struct.dst_entry* %1, %struct.request_sock* %2, %struct.tcp_fastopen_cookie* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca %struct.tcp_fastopen_cookie*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_request_sock*, align 8
  %13 = alloca %struct.tcp_sock*, align 8
  %14 = alloca %struct.tcp_md5sig_key*, align 8
  %15 = alloca %struct.tcp_out_options, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %8, align 8
  store %struct.request_sock* %2, %struct.request_sock** %9, align 8
  store %struct.tcp_fastopen_cookie* %3, %struct.tcp_fastopen_cookie** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %22 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %21)
  store %struct.inet_request_sock* %22, %struct.inet_request_sock** %12, align 8
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %23)
  store %struct.tcp_sock* %24, %struct.tcp_sock** %13, align 8
  store %struct.tcp_md5sig_key* null, %struct.tcp_md5sig_key** %14, align 8
  %25 = load i32, i32* @MAX_TCP_HEADER, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @alloc_skb(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %16, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %36 = call i32 @dst_release(%struct.dst_entry* %35)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %174

37:                                               ; preds = %5
  %38 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %39 = load i32, i32* @MAX_TCP_HEADER, align 4
  %40 = call i32 @skb_reserve(%struct.sk_buff* %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %52 [
    i32 128, label %42
    i32 130, label %47
    i32 129, label %48
  ]

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %44 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %45 = call %struct.sock* @req_to_sk(%struct.request_sock* %44)
  %46 = call i32 @skb_set_owner_w(%struct.sk_buff* %43, %struct.sock* %45)
  br label %52

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %50 = load %struct.sock*, %struct.sock** %7, align 8
  %51 = call i32 @skb_set_owner_w(%struct.sk_buff* %49, %struct.sock* %50)
  br label %52

52:                                               ; preds = %37, %48, %47, %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %54 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %55 = call i32 @skb_dst_set(%struct.sk_buff* %53, %struct.dst_entry* %54)
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %58 = call i32 @dst_metric_advmss(%struct.dst_entry* %57)
  %59 = call i32 @tcp_mss_clamp(%struct.tcp_sock* %56, i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = bitcast %struct.tcp_out_options* %15 to %struct.tcphdr*
  %61 = call i32 @memset(%struct.tcphdr* %60, i32 0, i32 56)
  %62 = call i8* (...) @tcp_clock_ns()
  store i8* %62, i8** %20, align 8
  %63 = load i8*, i8** %20, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %67 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %52
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = call i64 @tcp_skb_timestamp_us(%struct.sk_buff* %72)
  %74 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %75 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %52
  %78 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %79 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %80 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %84 = call i32 @skb_set_hash(%struct.sk_buff* %78, i32 %82, i32 %83)
  %85 = load %struct.sock*, %struct.sock** %7, align 8
  %86 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %89 = bitcast %struct.tcp_out_options* %15 to %struct.tcphdr*
  %90 = load %struct.tcp_md5sig_key*, %struct.tcp_md5sig_key** %14, align 8
  %91 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %92 = call i32 @tcp_synack_options(%struct.sock* %85, %struct.request_sock* %86, i32 %87, %struct.sk_buff* %88, %struct.tcphdr* %89, %struct.tcp_md5sig_key* %90, %struct.tcp_fastopen_cookie* %91)
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 56
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %17, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @skb_push(%struct.sk_buff* %96, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %100 = call i32 @skb_reset_transport_header(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.tcphdr*
  store %struct.tcphdr* %104, %struct.tcphdr** %18, align 8
  %105 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %106 = call i32 @memset(%struct.tcphdr* %105, i32 0, i32 56)
  %107 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %108 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %110 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %112 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %113 = call i32 @tcp_ecn_make_synack(%struct.request_sock* %111, %struct.tcphdr* %112)
  %114 = load %struct.inet_request_sock*, %struct.inet_request_sock** %12, align 8
  %115 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @htons(i32 %116)
  %118 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %119 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load %struct.inet_request_sock*, %struct.inet_request_sock** %12, align 8
  %121 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %124 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 8
  %125 = load %struct.inet_request_sock*, %struct.inet_request_sock** %12, align 8
  %126 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %134 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %133)
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @htonl(i32 %136)
  %138 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %141 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %140)
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @htonl(i32 %143)
  %145 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %146 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %145, i32 0, i32 5
  store i8* %144, i8** %146, align 8
  %147 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %148 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @min(i32 %149, i32 65535)
  %151 = call i8* @htons(i32 %150)
  %152 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %153 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %155 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %154, i64 1
  %156 = bitcast %struct.tcphdr* %155 to i32*
  %157 = bitcast %struct.tcp_out_options* %15 to %struct.tcphdr*
  %158 = call i32 @tcp_options_write(i32* %156, i32* null, %struct.tcphdr* %157)
  %159 = load i32, i32* %17, align 4
  %160 = ashr i32 %159, 2
  %161 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %162 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.sock*, %struct.sock** %7, align 8
  %164 = call i32 @sock_net(%struct.sock* %163)
  %165 = load i32, i32* @TCP_MIB_OUTSEGS, align 4
  %166 = call i32 @__TCP_INC_STATS(i32 %164, i32 %165)
  %167 = load i8*, i8** %20, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %171 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %172 = call i32 @tcp_add_tx_delay(%struct.sk_buff* %170, %struct.tcp_sock* %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %173, %struct.sk_buff** %6, align 8
  br label %174

174:                                              ; preds = %77, %34
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %175
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local %struct.sock* @req_to_sk(%struct.request_sock*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @tcp_mss_clamp(%struct.tcp_sock*, i32) #1

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @memset(%struct.tcphdr*, i32, i32) #1

declare dso_local i8* @tcp_clock_ns(...) #1

declare dso_local %struct.TYPE_4__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i64 @tcp_skb_timestamp_us(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_synack_options(%struct.sock*, %struct.request_sock*, i32, %struct.sk_buff*, %struct.tcphdr*, %struct.tcp_md5sig_key*, %struct.tcp_fastopen_cookie*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @tcp_ecn_make_synack(%struct.request_sock*, %struct.tcphdr*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tcp_options_write(i32*, i32*, %struct.tcphdr*) #1

declare dso_local i32 @__TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_add_tx_delay(%struct.sk_buff*, %struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

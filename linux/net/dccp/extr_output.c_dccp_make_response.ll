; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_make_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_make_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.request_sock = type { i32 }
%struct.dccp_hdr = type { i32, i32, i8*, i32, i32 }
%struct.dccp_request_sock = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_5__ = type { i32 }

@MAX_DCCP_HEADER = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_PKT_RESPONSE = common dso_local global i8* null, align 8
@DCCP_MIB_OUTSEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @dccp_make_response(%struct.sock* %0, %struct.dst_entry* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca %struct.dccp_request_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  store i32 32, i32* %10, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load i32, i32* @MAX_DCCP_HEADER, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %12, i32 %13, i32 1, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %116

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = load i32, i32* @MAX_DCCP_HEADER, align 4
  %22 = call i32 @skb_reserve(%struct.sk_buff* %20, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %25 = call i32 @dst_clone(%struct.dst_entry* %24)
  %26 = call i32 @skb_dst_set(%struct.sk_buff* %23, i32 %25)
  %27 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %28 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %27)
  store %struct.dccp_request_sock* %28, %struct.dccp_request_sock** %9, align 8
  %29 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %30 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %36 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %35, i32 0, i32 2
  %37 = call i32 @dccp_inc_seqno(i32* %36)
  br label %38

38:                                               ; preds = %34, %19
  %39 = load i8*, i8** @DCCP_PKT_RESPONSE, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %41 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %44 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %50 = call i64 @dccp_feat_server_ccid_dependencies(%struct.dccp_request_sock* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %113

53:                                               ; preds = %38
  %54 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = call i64 @dccp_insert_options_rsk(%struct.dccp_request_sock* %54, %struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %113

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = call %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff* %60, i32 32)
  store %struct.dccp_hdr* %61, %struct.dccp_hdr** %8, align 8
  %62 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %63 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htons(i32 %65)
  %67 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %70 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %74 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 32, %78
  %80 = sdiv i32 %79, 4
  %81 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %82 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** @DCCP_PKT_RESPONSE, align 8
  %84 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %85 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %87 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %89 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %90 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dccp_hdr_set_seq(%struct.dccp_hdr* %88, i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = call i32 @dccp_hdr_ack_bits(%struct.sk_buff* %93)
  %95 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %96 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dccp_hdr_set_ack(i32 %94, i32 %97)
  %99 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %100 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = call %struct.TYPE_5__* @dccp_hdr_response(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = call i32 @dccp_csum_outgoing(%struct.sk_buff* %105)
  %107 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %108 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  %110 = load i32, i32* @DCCP_MIB_OUTSEGS, align 4
  %111 = call i32 @DCCP_INC_STATS(i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %112, %struct.sk_buff** %4, align 8
  br label %116

113:                                              ; preds = %58, %52
  %114 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %116

116:                                              ; preds = %113, %59, %18
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %117
}

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.dst_entry*) #1

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_4__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @dccp_inc_seqno(i32*) #1

declare dso_local %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_feat_server_ccid_dependencies(%struct.dccp_request_sock*) #1

declare dso_local i64 @dccp_insert_options_rsk(%struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dccp_hdr_set_seq(%struct.dccp_hdr*, i32) #1

declare dso_local i32 @dccp_hdr_set_ack(i32, i32) #1

declare dso_local i32 @dccp_hdr_ack_bits(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @dccp_hdr_response(%struct.sk_buff*) #1

declare dso_local i32 @dccp_csum_outgoing(%struct.sk_buff*) #1

declare dso_local i32 @DCCP_INC_STATS(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_ctl_make_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_ctl_make_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32, i32, i32, i32, i32 }
%struct.dccp_skb_cb = type { i32, i64, i32, i32 }
%struct.dccp_hdr_reset = type { i32, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_PKT_RESET = common dso_local global i32 0, align 4
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @dccp_ctl_make_reset(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_hdr*, align 8
  %7 = alloca %struct.dccp_hdr*, align 8
  %8 = alloca %struct.dccp_skb_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_hdr_reset*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %12)
  store %struct.dccp_hdr* %13, %struct.dccp_hdr** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %14)
  store %struct.dccp_skb_cb* %15, %struct.dccp_skb_cb** %8, align 8
  store i32 40, i32* %9, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @alloc_skb(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = icmp eq %struct.sk_buff* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %102

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @skb_reserve(%struct.sk_buff* %27, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = call %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff* %34, i32 40)
  store %struct.dccp_hdr* %35, %struct.dccp_hdr** %7, align 8
  %36 = load i32, i32* @DCCP_PKT_RESET, align 4
  %37 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %38 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %49, i32 0, i32 0
  store i32 10, i32* %50, align 4
  %51 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = call %struct.dccp_hdr_reset* @dccp_hdr_reset(%struct.sk_buff* %53)
  store %struct.dccp_hdr_reset* %54, %struct.dccp_hdr_reset** %10, align 8
  %55 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %56 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dccp_hdr_reset*, %struct.dccp_hdr_reset** %10, align 8
  %59 = getelementptr inbounds %struct.dccp_hdr_reset, %struct.dccp_hdr_reset* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %61 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %79 [
    i32 128, label %63
    i32 129, label %71
    i32 130, label %71
  ]

63:                                               ; preds = %26
  %64 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %65 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dccp_hdr_reset*, %struct.dccp_hdr_reset** %10, align 8
  %68 = getelementptr inbounds %struct.dccp_hdr_reset, %struct.dccp_hdr_reset* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  br label %79

71:                                               ; preds = %26, %26
  %72 = load %struct.dccp_hdr_reset*, %struct.dccp_hdr_reset** %10, align 8
  %73 = getelementptr inbounds %struct.dccp_hdr_reset, %struct.dccp_hdr_reset* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %76 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32* %74, i32 %77, i32 3)
  br label %79

79:                                               ; preds = %26, %71, %63
  %80 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %81 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %87 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %88 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ADD48(i64 %89, i32 1)
  %91 = call i32 @dccp_hdr_set_seq(%struct.dccp_hdr* %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = call i32 @dccp_hdr_ack_bits(%struct.sk_buff* %93)
  %95 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %96 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dccp_hdr_set_ack(i32 %94, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = call i32 @dccp_csum_outgoing(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %3, align 8
  br label %102

102:                                              ; preds = %92, %25
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %103
}

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff*, i32) #1

declare dso_local %struct.dccp_hdr_reset* @dccp_hdr_reset(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dccp_hdr_set_seq(%struct.dccp_hdr*, i32) #1

declare dso_local i32 @ADD48(i64, i32) #1

declare dso_local i32 @dccp_hdr_set_ack(i32, i32) #1

declare dso_local i32 @dccp_hdr_ack_bits(%struct.sk_buff*) #1

declare dso_local i32 @dccp_csum_outgoing(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

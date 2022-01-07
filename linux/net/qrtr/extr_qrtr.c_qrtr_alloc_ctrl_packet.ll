; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_alloc_ctrl_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_alloc_ctrl_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qrtr_ctrl_pkt = type { i32 }

@QRTR_HDR_MAX_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.qrtr_ctrl_pkt**)* @qrtr_alloc_ctrl_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qrtr_alloc_ctrl_packet(%struct.qrtr_ctrl_pkt** %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.qrtr_ctrl_pkt**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.qrtr_ctrl_pkt** %0, %struct.qrtr_ctrl_pkt*** %3, align 8
  store i32 4, i32* %4, align 4
  %6 = load i64, i64* @QRTR_HDR_MAX_SIZE, align 8
  %7 = add nsw i64 %6, 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sk_buff* @alloc_skb(i64 %7, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i64, i64* @QRTR_HDR_MAX_SIZE, align 8
  %16 = call i32 @skb_reserve(%struct.sk_buff* %14, i64 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.qrtr_ctrl_pkt* @skb_put_zero(%struct.sk_buff* %17, i32 4)
  %19 = load %struct.qrtr_ctrl_pkt**, %struct.qrtr_ctrl_pkt*** %3, align 8
  store %struct.qrtr_ctrl_pkt* %18, %struct.qrtr_ctrl_pkt** %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %2, align 8
  br label %21

21:                                               ; preds = %13, %12
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %22
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.qrtr_ctrl_pkt* @skb_put_zero(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

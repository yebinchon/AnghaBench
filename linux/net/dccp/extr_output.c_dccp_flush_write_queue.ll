; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_flush_write_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_flush_write_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"CCID did not manage to send all packets\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"packet discarded due to err=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_flush_write_queue(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %9)
  store %struct.dccp_sock* %10, %struct.dccp_sock** %5, align 8
  br label %11

11:                                               ; preds = %66, %2
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = call %struct.sk_buff* @skb_peek(i32* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %67

22:                                               ; preds = %20
  %23 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i64 @ccid_hc_tx_send_packet(i32 %25, %struct.sock* %26, %struct.sk_buff* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @ccid_packet_dequeue_eval(i64 %29)
  switch i32 %30, label %66 [
    i32 128, label %31
    i32 131, label %33
    i32 129, label %55
    i32 130, label %58
  ]

31:                                               ; preds = %22
  %32 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %67

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @msecs_to_jiffies(i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %67

41:                                               ; preds = %33
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @dccp_wait_for_ccid(%struct.sock* %42, i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %67

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %51
  store i64 %54, i64* %52, align 8
  br label %66

55:                                               ; preds = %22
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = call i32 @dccp_xmit_packet(%struct.sock* %56)
  br label %66

58:                                               ; preds = %22
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = call i32 @skb_dequeue(i32* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %58, %22, %55, %48
  br label %11

67:                                               ; preds = %31, %40, %47, %20
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @ccid_hc_tx_send_packet(i32, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ccid_packet_dequeue_eval(i64) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @dccp_wait_for_ccid(%struct.sock*, i64) #1

declare dso_local i32 @dccp_xmit_packet(%struct.sock*) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

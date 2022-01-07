; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_conn_remove_acked_pdus.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_conn_remove_acked_pdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.llc_sock = type { i32 }

@LLC_2_SEQ_NBR_MODULO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_remove_acked_pdus(%struct.sock* %0, i64 %1, i8** %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.llc_pdu_sn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.llc_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.llc_sock* @llc_sk(%struct.sock* %14)
  store %struct.llc_sock* %15, %struct.llc_sock** %12, align 8
  %16 = load %struct.llc_sock*, %struct.llc_sock** %12, align 8
  %17 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %16, i32 0, i32 0
  %18 = call i8* @skb_queue_len(i32* %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %61

23:                                               ; preds = %3
  %24 = load %struct.llc_sock*, %struct.llc_sock** %12, align 8
  %25 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %24, i32 0, i32 0
  %26 = call %struct.sk_buff* @skb_peek(i32* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %27)
  store %struct.llc_pdu_sn* %28, %struct.llc_pdu_sn** %10, align 8
  %29 = load i32, i32* @LLC_2_SEQ_NBR_MODULO, align 4
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = add nsw i32 %29, %31
  %33 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %10, align 8
  %34 = call i64 @LLC_I_GET_NS(%struct.llc_pdu_sn* %33)
  %35 = trunc i64 %34 to i32
  %36 = sub nsw i32 %32, %35
  %37 = load i32, i32* @LLC_2_SEQ_NBR_MODULO, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %57, %23
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %60

49:                                               ; preds = %47
  %50 = load %struct.llc_sock*, %struct.llc_sock** %12, align 8
  %51 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %50, i32 0, i32 0
  %52 = call %struct.sk_buff* @skb_dequeue(i32* %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %9, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %39

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %22
  %62 = load %struct.llc_sock*, %struct.llc_sock** %12, align 8
  %63 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %62, i32 0, i32 0
  %64 = call i8* @skb_queue_len(i32* %63)
  %65 = load i8**, i8*** %6, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i8* @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_I_GET_NS(%struct.llc_pdu_sn*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

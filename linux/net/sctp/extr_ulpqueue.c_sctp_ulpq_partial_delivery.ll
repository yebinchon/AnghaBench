; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_partial_delivery.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_partial_delivery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i64, %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sctp_sock = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpq_partial_delivery(%struct.sctp_ulpq* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_ulpq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff_head, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %12 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %11, i32 0, i32 1
  %13 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  store %struct.sctp_association* %13, %struct.sctp_association** %6, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sctp_sock* @sctp_sk(i32 %17)
  store %struct.sctp_sock* %18, %struct.sctp_sock** %7, align 8
  %19 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %70

24:                                               ; preds = %2
  %25 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call %struct.sk_buff* @skb_peek(i32* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = call %struct.TYPE_8__* @sctp_skb2event(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i32 @sctp_tsnmap_get_ctsn(i32* %39)
  %41 = call i32 @TSN_lte(i32 %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %70

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %52 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %51, i32 0, i32 0
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50, %45
  %56 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %57 = call %struct.sctp_ulpevent* @sctp_ulpq_retrieve_first(%struct.sctp_ulpq* %56)
  store %struct.sctp_ulpevent* %57, %struct.sctp_ulpevent** %5, align 8
  %58 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %59 = icmp ne %struct.sctp_ulpevent* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %10)
  %62 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %63 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %62)
  %64 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %10, i32 %63)
  %65 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %66 = call i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq* %65, %struct.sk_buff_head* %10)
  %67 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %68 = call i32 @sctp_ulpq_set_pd(%struct.sctp_ulpq* %67)
  br label %70

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %23, %43, %60, %69, %50
  ret void
}

declare dso_local %struct.sctp_sock* @sctp_sk(i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.TYPE_8__* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @TSN_lte(i32, i32) #1

declare dso_local i32 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_retrieve_first(%struct.sctp_ulpq*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq*, %struct.sk_buff_head*) #1

declare dso_local i32 @sctp_ulpq_set_pd(%struct.sctp_ulpq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

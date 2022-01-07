; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_ulpevent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpq_flush(%struct.sctp_ulpq* %0) #0 {
  %2 = alloca %struct.sctp_ulpq*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %2, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %7 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %6, i32 0, i32 2
  %8 = call %struct.sk_buff* @__skb_dequeue(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %11)
  store %struct.sctp_ulpevent* %12, %struct.sctp_ulpevent** %4, align 8
  %13 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %14 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %13)
  br label %5

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %18 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %17, i32 0, i32 1
  %19 = call %struct.sk_buff* @__skb_dequeue(i32* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %22)
  store %struct.sctp_ulpevent* %23, %struct.sctp_ulpevent** %4, align 8
  %24 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %25 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %24)
  br label %16

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %32, %26
  %28 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %29 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %28, i32 0, i32 0
  %30 = call %struct.sk_buff* @__skb_dequeue(i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %3, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %33)
  store %struct.sctp_ulpevent* %34, %struct.sctp_ulpevent** %4, align 8
  %35 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %36 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %35)
  br label %27

37:                                               ; preds = %27
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

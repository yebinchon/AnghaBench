; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_queue_purge_ulpevents.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_queue_purge_ulpevents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sctp_ulpevent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_queue_purge_ulpevents(%struct.sk_buff_head* %0) #0 {
  %2 = alloca %struct.sk_buff_head*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sk_buff_head* %0, %struct.sk_buff_head** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %8 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %11)
  store %struct.sctp_ulpevent* %12, %struct.sctp_ulpevent** %5, align 8
  %13 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %14 = call i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %16, %10
  %25 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %26 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %25)
  br label %6

27:                                               ; preds = %6
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

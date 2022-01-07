; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_start_pd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_start_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*, i32)* @sctp_intl_start_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_intl_start_pd(%struct.sctp_ulpq* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_ulpq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %7, i32 0, i32 1
  %9 = call i32 @skb_queue_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %25, %11
  %13 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %14 = call %struct.sctp_ulpevent* @sctp_intl_retrieve_first(%struct.sctp_ulpq* %13)
  store %struct.sctp_ulpevent* %14, %struct.sctp_ulpevent** %5, align 8
  %15 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %16 = icmp ne %struct.sctp_ulpevent* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %6)
  %19 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %20 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %19)
  %21 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %6, i32 %20)
  %22 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %23 = call i32 @sctp_enqueue_event(%struct.sctp_ulpq* %22, %struct.sk_buff_head* %6)
  br label %24

24:                                               ; preds = %17, %12
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %27 = icmp ne %struct.sctp_ulpevent* %26, null
  br i1 %27, label %12, label %28

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %31 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %30, i32 0, i32 0
  %32 = call i32 @skb_queue_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %48, %34
  %36 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %37 = call %struct.sctp_ulpevent* @sctp_intl_retrieve_first_uo(%struct.sctp_ulpq* %36)
  store %struct.sctp_ulpevent* %37, %struct.sctp_ulpevent** %5, align 8
  %38 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %39 = icmp ne %struct.sctp_ulpevent* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %6)
  %42 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %43 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %42)
  %44 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %6, i32 %43)
  %45 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %46 = call i32 @sctp_enqueue_event(%struct.sctp_ulpq* %45, %struct.sk_buff_head* %6)
  br label %47

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %50 = icmp ne %struct.sctp_ulpevent* %49, null
  br i1 %50, label %35, label %51

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %29
  ret void
}

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_intl_retrieve_first(%struct.sctp_ulpq*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_enqueue_event(%struct.sctp_ulpq*, %struct.sk_buff_head*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_intl_retrieve_first_uo(%struct.sctp_ulpq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

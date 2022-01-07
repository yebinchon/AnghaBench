; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_do_sctp_enqueue_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_do_sctp_enqueue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_ulpq*, %struct.sctp_ulpevent*)* @do_sctp_enqueue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sctp_enqueue_event(%struct.sctp_ulpq* %0, %struct.sctp_ulpevent* %1) #0 {
  %3 = alloca %struct.sctp_ulpq*, align 8
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %3, align 8
  store %struct.sctp_ulpevent* %1, %struct.sctp_ulpevent** %4, align 8
  %6 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %5)
  %7 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %8 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %7)
  %9 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %5, i32 %8)
  %10 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %11 = call i32 @sctp_enqueue_event(%struct.sctp_ulpq* %10, %struct.sk_buff_head* %5)
  ret i32 %11
}

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_enqueue_event(%struct.sctp_ulpq*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

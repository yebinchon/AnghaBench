; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_read_nxtinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_read_nxtinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.msghdr = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@MSG_PEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpevent_read_nxtinfo(%struct.sctp_ulpevent* %0, %struct.msghdr* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %6, align 8
  %10 = load i32, i32* @MSG_PEEK, align 4
  %11 = call %struct.sk_buff* @sctp_skb_recv_datagram(%struct.sock* %9, i32 %10, i32 1, i32* %8)
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i32 @sctp_skb2event(%struct.sk_buff* %15)
  %17 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @__sctp_ulpevent_read_nxtinfo(i32 %16, %struct.msghdr* %17, %struct.sk_buff* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  br label %22

22:                                               ; preds = %14, %3
  ret void
}

declare dso_local %struct.sk_buff* @sctp_skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @__sctp_ulpevent_read_nxtinfo(i32, %struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

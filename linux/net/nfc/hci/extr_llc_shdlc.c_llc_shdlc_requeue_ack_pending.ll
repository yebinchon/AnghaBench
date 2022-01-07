; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_requeue_ack_pending.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_requeue_ack_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ns reset to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*)* @llc_shdlc_requeue_ack_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_requeue_ack_pending(%struct.llc_shdlc* %0) #0 {
  %2 = alloca %struct.llc_shdlc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %2, align 8
  %4 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %5 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %10 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %9, i32 0, i32 3
  %11 = call %struct.sk_buff* @skb_dequeue_tail(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @skb_pull(%struct.sk_buff* %14, i32 1)
  %16 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %17 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %16, i32 0, i32 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @skb_queue_head(i32* %17, %struct.sk_buff* %18)
  br label %8

20:                                               ; preds = %8
  %21 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %22 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %25 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue_tail(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

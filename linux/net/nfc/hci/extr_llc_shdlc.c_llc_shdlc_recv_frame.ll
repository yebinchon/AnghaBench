; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"NULL Frame -> link is dead\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"incoming frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*, %struct.sk_buff*)* @llc_shdlc_recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_recv_frame(%struct.llc_shdlc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_shdlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = icmp eq %struct.sk_buff* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EREMOTEIO, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %12 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @SHDLC_DUMP_SKB(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %14)
  %16 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %17 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_queue_tail(i32* %17, %struct.sk_buff* %18)
  br label %20

20:                                               ; preds = %13, %7
  %21 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %22 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %21, i32 0, i32 0
  %23 = call i32 @schedule_work(i32* %22)
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @SHDLC_DUMP_SKB(i8*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_rej.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"remote asks retransmission from frame %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Stopped T2(retransmit)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*, i32)* @llc_shdlc_rcv_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_rcv_rej(%struct.llc_shdlc* %0, i32 %1) #0 {
  %3 = alloca %struct.llc_shdlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %9 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %13 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @llc_shdlc_x_lteq_y_lt_z(i32 %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %2
  %18 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %19 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %24 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %23, i32 0, i32 3
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %27 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %31 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %46, %35
  %37 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %38 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = srem i32 %40, 8
  %42 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %43 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %48 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %47, i32 0, i32 2
  %49 = call %struct.sk_buff* @skb_dequeue(i32* %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  br label %36

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %55 = call i32 @llc_shdlc_requeue_ack_pending(%struct.llc_shdlc* %54)
  br label %56

56:                                               ; preds = %53, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @llc_shdlc_x_lteq_y_lt_z(i32, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @llc_shdlc_requeue_ack_pending(%struct.llc_shdlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_reset_t2.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_reset_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"release ack pending up to frame %d excluded\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"release ack pending frame %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"All sent frames acked. Stopped T2(retransmit)\0A\00", align 1
@SHDLC_T2_VALUE_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Start T2(retransmit) for remaining unacked sent frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*, i32)* @llc_shdlc_reset_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_reset_t2(%struct.llc_shdlc* %0, i32 %1) #0 {
  %3 = alloca %struct.llc_shdlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %8 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %16, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %20 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %19, i32 0, i32 3
  %21 = call %struct.sk_buff* @skb_dequeue(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = srem i32 %25, 8
  store i32 %26, i32* %6, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %29 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %28, i32 0, i32 3
  %30 = call i64 @skb_queue_empty(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %34 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %39 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %38, i32 0, i32 2
  %40 = call i32 @del_timer_sync(i32* %39)
  %41 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %42 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %37, %32
  br label %63

45:                                               ; preds = %27
  %46 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %47 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %46, i32 0, i32 3
  %48 = call %struct.sk_buff* @skb_peek(i32* %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %5, align 8
  %49 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %50 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %49, i32 0, i32 2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @SHDLC_T2_VALUE_MS, align 4
  %57 = call i64 @msecs_to_jiffies(i32 %56)
  %58 = add i64 %55, %57
  %59 = call i32 @mod_timer(i32* %50, i64 %58)
  %60 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %61 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

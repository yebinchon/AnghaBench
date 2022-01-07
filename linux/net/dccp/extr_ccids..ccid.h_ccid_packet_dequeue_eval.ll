; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ccids..ccid.h_ccid_packet_dequeue_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ccids..ccid.h_ccid_packet_dequeue_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCID_PACKET_ERR = common dso_local global i32 0, align 4
@CCID_PACKET_SEND_AT_ONCE = common dso_local global i32 0, align 4
@CCID_PACKET_DELAY_MAX = common dso_local global i32 0, align 4
@CCID_PACKET_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ccid_packet_dequeue_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid_packet_dequeue_eval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @CCID_PACKET_ERR, align 4
  store i32 %7, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @CCID_PACKET_SEND_AT_ONCE, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CCID_PACKET_DELAY_MAX, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @CCID_PACKET_DELAY, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %17, %11, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

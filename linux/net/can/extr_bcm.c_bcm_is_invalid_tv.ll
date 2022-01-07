; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_is_invalid_tv.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_is_invalid_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_msg_head = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@BCM_TIMER_SEC_MAX = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_msg_head*)* @bcm_is_invalid_tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_is_invalid_tv(%struct.bcm_msg_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_msg_head*, align 8
  store %struct.bcm_msg_head* %0, %struct.bcm_msg_head** %3, align 8
  %4 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %5 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %1
  %10 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BCM_TIMER_SEC_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %55, label %16

16:                                               ; preds = %9
  %17 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %18 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %16
  %23 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USEC_PER_SEC, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %55, label %29

29:                                               ; preds = %22
  %30 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %31 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %29
  %36 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %37 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BCM_TIMER_SEC_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %35
  %43 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %44 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %3, align 8
  %50 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @USEC_PER_SEC, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %42, %35, %29, %22, %16, %9, %1
  store i32 1, i32* %2, align 4
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

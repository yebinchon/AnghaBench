; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_grub_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_grub_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.sched_dl_entity = type { i64 }

@RATIO_SHIFT = common dso_local global i64 0, align 8
@BW_UNIT = common dso_local global i64 0, align 8
@BW_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.rq*, %struct.sched_dl_entity*)* @grub_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_reclaim(i64 %0, %struct.rq* %1, %struct.sched_dl_entity* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.sched_dl_entity*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.rq* %1, %struct.rq** %5, align 8
  store %struct.sched_dl_entity* %2, %struct.sched_dl_entity** %6, align 8
  %10 = load %struct.rq*, %struct.rq** %5, align 8
  %11 = getelementptr inbounds %struct.rq, %struct.rq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rq*, %struct.rq** %5, align 8
  %15 = getelementptr inbounds %struct.rq, %struct.rq* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %13, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %6, align 8
  %20 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rq*, %struct.rq** %5, align 8
  %23 = getelementptr inbounds %struct.rq, %struct.rq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = mul nsw i64 %21, %25
  %27 = load i64, i64* @RATIO_SHIFT, align 8
  %28 = ashr i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.rq*, %struct.rq** %5, align 8
  %31 = getelementptr inbounds %struct.rq, %struct.rq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = load i64, i64* @BW_UNIT, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub nsw i64 %35, %36
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %8, align 8
  br label %50

41:                                               ; preds = %3
  %42 = load i64, i64* @BW_UNIT, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load %struct.rq*, %struct.rq** %5, align 8
  %46 = getelementptr inbounds %struct.rq, %struct.rq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %44, %48
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %41, %39
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %8, align 8
  %53 = mul nsw i64 %51, %52
  %54 = load i64, i64* @BW_SHIFT, align 8
  %55 = ashr i64 %53, %54
  ret i64 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_compute_qlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_compute_qlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb_sched_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sfb_bucket** }
%struct.sfb_bucket = type { i64, i64 }

@SFB_LEVELS = common dso_local global i32 0, align 4
@SFB_NUMBUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, %struct.sfb_sched_data*)* @sfb_compute_qlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sfb_compute_qlen(i64* %0, i64* %1, %struct.sfb_sched_data* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sfb_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sfb_bucket*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.sfb_sched_data* %2, %struct.sfb_sched_data** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %13 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %16 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.sfb_bucket**, %struct.sfb_bucket*** %19, align 8
  %21 = getelementptr inbounds %struct.sfb_bucket*, %struct.sfb_bucket** %20, i64 0
  %22 = load %struct.sfb_bucket*, %struct.sfb_bucket** %21, align 8
  %23 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %22, i64 0
  store %struct.sfb_bucket* %23, %struct.sfb_bucket** %11, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %58, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SFB_LEVELS, align 4
  %27 = load i32, i32* @SFB_NUMBUCKETS, align 4
  %28 = mul nsw i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.sfb_bucket*, %struct.sfb_bucket** %11, align 8
  %33 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.sfb_bucket*, %struct.sfb_bucket** %11, align 8
  %38 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.sfb_bucket*, %struct.sfb_bucket** %11, align 8
  %42 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.sfb_bucket*, %struct.sfb_bucket** %11, align 8
  %48 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.sfb_bucket*, %struct.sfb_bucket** %11, align 8
  %53 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.sfb_bucket*, %struct.sfb_bucket** %11, align 8
  %57 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %56, i32 1
  store %struct.sfb_bucket* %57, %struct.sfb_bucket** %11, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %24

61:                                               ; preds = %24
  %62 = load i64, i64* %9, align 8
  %63 = load i64*, i64** %4, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @SFB_LEVELS, align 4
  %66 = load i32, i32* @SFB_NUMBUCKETS, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = sdiv i64 %64, %68
  %70 = load i64*, i64** %5, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64, i64* %8, align 8
  ret i64 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

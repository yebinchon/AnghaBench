; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_info_bdq_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_info_bdq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@DQ_FAKE_B = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTBELOW = common dso_local global i32 0, align 4
@QUOTA_NL_BHARDBELOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64)* @info_bdq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_bdq_free(%struct.dquot* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.dquot*, %struct.dquot** %4, align 8
  %8 = getelementptr inbounds %struct.dquot, %struct.dquot* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dquot*, %struct.dquot** %4, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %10, %14
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @DQ_FAKE_B, align 4
  %17 = load %struct.dquot*, %struct.dquot** %4, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.dquot*, %struct.dquot** %4, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %21
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load %struct.dquot*, %struct.dquot** %4, align 8
  %35 = getelementptr inbounds %struct.dquot, %struct.dquot* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @QUOTA_NL_BSOFTBELOW, align 4
  store i32 %40, i32* %3, align 4
  br label %61

41:                                               ; preds = %30
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.dquot*, %struct.dquot** %4, align 8
  %44 = getelementptr inbounds %struct.dquot, %struct.dquot* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %42, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load %struct.dquot*, %struct.dquot** %4, align 8
  %53 = getelementptr inbounds %struct.dquot, %struct.dquot* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @QUOTA_NL_BHARDBELOW, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %48, %41
  %60 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %57, %39, %28
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

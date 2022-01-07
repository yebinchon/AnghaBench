; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_info_idq_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_info_idq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@DQ_FAKE_B = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4
@QUOTA_NL_ISOFTBELOW = common dso_local global i32 0, align 4
@QUOTA_NL_IHARDBELOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64)* @info_idq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_idq_free(%struct.dquot* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @DQ_FAKE_B, align 4
  %8 = load %struct.dquot*, %struct.dquot** %4, align 8
  %9 = getelementptr inbounds %struct.dquot, %struct.dquot* %8, i32 0, i32 3
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load %struct.dquot*, %struct.dquot** %4, align 8
  %14 = getelementptr inbounds %struct.dquot, %struct.dquot* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dquot*, %struct.dquot** %4, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %16, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = load %struct.dquot*, %struct.dquot** %4, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dquot*, %struct.dquot** %4, align 8
  %27 = getelementptr inbounds %struct.dquot, %struct.dquot* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sb_has_quota_limits_enabled(i32 %25, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22, %12, %2
  %33 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %22
  %35 = load %struct.dquot*, %struct.dquot** %4, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.dquot*, %struct.dquot** %4, align 8
  %43 = getelementptr inbounds %struct.dquot, %struct.dquot* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @QUOTA_NL_ISOFTBELOW, align 4
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %34
  %50 = load %struct.dquot*, %struct.dquot** %4, align 8
  %51 = getelementptr inbounds %struct.dquot, %struct.dquot* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dquot*, %struct.dquot** %4, align 8
  %55 = getelementptr inbounds %struct.dquot, %struct.dquot* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %53, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.dquot*, %struct.dquot** %4, align 8
  %62 = getelementptr inbounds %struct.dquot, %struct.dquot* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @QUOTA_NL_IHARDBELOW, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %59, %49
  %69 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %66, %47, %32
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sb_has_quota_limits_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

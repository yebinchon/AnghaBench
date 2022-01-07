; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_warning_issued.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_warning_issued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32 }

@QUOTA_NL_BHARDWARN = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTLONGWARN = common dso_local global i32 0, align 4
@DQ_BLKS_B = common dso_local global i32 0, align 4
@QUOTA_NL_IHARDWARN = common dso_local global i32 0, align 4
@QUOTA_NL_ISOFTLONGWARN = common dso_local global i32 0, align 4
@DQ_INODES_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i32)* @warning_issued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warning_issued(%struct.dquot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @QUOTA_NL_BHARDWARN, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @QUOTA_NL_BSOFTLONGWARN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @DQ_BLKS_B, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @QUOTA_NL_IHARDWARN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @QUOTA_NL_ISOFTLONGWARN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @DQ_INODES_B, align 4
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi i32 [ %15, %14 ], [ %28, %27 ]
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.dquot*, %struct.dquot** %4, align 8
  %37 = getelementptr inbounds %struct.dquot, %struct.dquot* %36, i32 0, i32 0
  %38 = call i32 @test_and_set_bit(i32 %35, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

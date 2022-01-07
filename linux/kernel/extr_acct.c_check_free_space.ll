; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_check_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_check_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_acct_struct = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kstatfs = type { i64, i64 }

@SUSPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Process accounting paused\0A\00", align 1
@RESUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Process accounting resumed\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ACCT_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsd_acct_struct*)* @check_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_free_space(%struct.bsd_acct_struct* %0) #0 {
  %2 = alloca %struct.bsd_acct_struct*, align 8
  %3 = alloca %struct.kstatfs, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bsd_acct_struct* %0, %struct.bsd_acct_struct** %2, align 8
  %6 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %7 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @time_is_after_jiffies(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %14 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @vfs_statfs(i32* %16, %struct.kstatfs* %3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %66

20:                                               ; preds = %12
  %21 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %22 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SUSPEND, align 8
  %29 = mul nsw i64 %27, %28
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @do_div(i64 %30, i32 100)
  %32 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %3, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %38 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %25
  br label %57

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %3, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RESUME, align 8
  %45 = mul nsw i64 %43, %44
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @do_div(i64 %46, i32 100)
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %3, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %54 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %41
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i32, i32* @ACCT_TIMEOUT, align 4
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %65 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %19, %11
  %67 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %68 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  ret i32 %69
}

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i64 @vfs_statfs(i32*, %struct.kstatfs*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

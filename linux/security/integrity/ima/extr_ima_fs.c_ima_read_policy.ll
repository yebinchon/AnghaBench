; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_read_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_read_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@READING_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to open file: %s (%d)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rule: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ima_read_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_read_policy(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %5, align 8
  %13 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @READING_POLICY, align 4
  %16 = call i32 @kernel_read_file_from_path(i8* %14, i8** %4, i64* %6, i32 0, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %62

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %42, %24
  %27 = load i64, i64* %6, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @ima_parse_add_rule(i8* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %26

47:                                               ; preds = %41, %32
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @vfree(i8* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %62

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %57, %52, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @kernel_read_file_from_path(i8*, i8**, i64*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @ima_parse_add_rule(i8*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

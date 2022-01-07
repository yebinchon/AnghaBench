; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_make_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_make_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"liability %lld, run write-back\00", align 1
@NR_TO_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"new liability %lld (not shrunk)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Run GC\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Run commit (retries %d)\00", align 1
@MAX_MKSPC_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @make_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_free_space(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %57, %1
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = call i64 @get_liability(%struct.ubifs_info* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 (i8*, ...) @dbg_budg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = load i32, i32* @NR_TO_WRITE, align 4
  %15 = call i32 @shrink_liability(%struct.ubifs_info* %13, i32 %14)
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = call i64 @get_liability(%struct.ubifs_info* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (i8*, ...) @dbg_budg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = call i32 (i8*, ...) @dbg_budg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = call i32 @run_gc(%struct.ubifs_info* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %65

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, ...) @dbg_budg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = call i32 @ubifs_run_commit(%struct.ubifs_info* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @MAX_MKSPC_RETRIES, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %8, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %54, %45, %32, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @get_liability(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_budg(i8*, ...) #1

declare dso_local i32 @shrink_liability(%struct.ubifs_info*, i32) #1

declare dso_local i32 @run_gc(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_run_commit(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_main.c_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_main.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@PM_SUSPEND_ON = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@PM_SUSPEND_MAX = common dso_local global i64 0, align 8
@PM_SUSPEND_MEM = common dso_local global i64 0, align 8
@mem_sleep_current = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i32 (...) @pm_autosleep_lock()
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %5, align 4
  br label %63

17:                                               ; preds = %4
  %18 = call i64 (...) @pm_autosleep_state()
  %19 = load i64, i64* @PM_SUSPEND_ON, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %51

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @decode_state(i8* %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @PM_SUSPEND_MAX, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @PM_SUSPEND_MEM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @mem_sleep_current, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @pm_suspend(i64 %38)
  store i32 %39, i32* %11, align 4
  br label %50

40:                                               ; preds = %24
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @PM_SUSPEND_MAX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (...) @hibernate()
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50, %21
  %52 = call i32 (...) @pm_autosleep_unlock()
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  br label %60

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %57, %55 ], [ %59, %58 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @pm_autosleep_lock(...) #1

declare dso_local i64 @pm_autosleep_state(...) #1

declare dso_local i64 @decode_state(i8*, i64) #1

declare dso_local i32 @pm_suspend(i64) #1

declare dso_local i32 @hibernate(...) #1

declare dso_local i32 @pm_autosleep_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

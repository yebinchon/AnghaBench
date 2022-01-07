; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_wakelock.c_pm_wake_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_wakelock.c_pm_wake_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakelock = type { i32 }

@CAP_BLOCK_SUSPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wakelocks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_wake_unlock(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wakelock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @CAP_BLOCK_SUSPEND, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %13
  %22 = load i8*, i8** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %32
  %39 = call i32 @mutex_lock(i32* @wakelocks_lock)
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.wakelock* @wakelock_lookup_add(i8* %40, i64 %41, i32 0)
  store %struct.wakelock* %42, %struct.wakelock** %4, align 8
  %43 = load %struct.wakelock*, %struct.wakelock** %4, align 8
  %44 = call i64 @IS_ERR(%struct.wakelock* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.wakelock*, %struct.wakelock** %4, align 8
  %48 = call i32 @PTR_ERR(%struct.wakelock* %47)
  store i32 %48, i32* %6, align 4
  br label %57

49:                                               ; preds = %38
  %50 = load %struct.wakelock*, %struct.wakelock** %4, align 8
  %51 = getelementptr inbounds %struct.wakelock, %struct.wakelock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__pm_relax(i32 %52)
  %54 = load %struct.wakelock*, %struct.wakelock** %4, align 8
  %55 = call i32 @wakelocks_lru_most_recent(%struct.wakelock* %54)
  %56 = call i32 (...) @wakelocks_gc()
  br label %57

57:                                               ; preds = %49, %46
  %58 = call i32 @mutex_unlock(i32* @wakelocks_lock)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %35, %18, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wakelock* @wakelock_lookup_add(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.wakelock*) #1

declare dso_local i32 @PTR_ERR(%struct.wakelock*) #1

declare dso_local i32 @__pm_relax(i32) #1

declare dso_local i32 @wakelocks_lru_most_recent(%struct.wakelock*) #1

declare dso_local i32 @wakelocks_gc(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

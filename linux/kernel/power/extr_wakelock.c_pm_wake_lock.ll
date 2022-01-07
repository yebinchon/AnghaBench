; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_wakelock.c_pm_wake_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_wakelock.c_pm_wake_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakelock = type { i32 }

@CAP_BLOCK_SUSPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wakelocks_lock = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_wake_lock(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wakelock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @CAP_BLOCK_SUSPEND, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isspace(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i1 [ false, %18 ], [ %28, %23 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %18

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %103

45:                                               ; preds = %34
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 10
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @skip_spaces(i8* %56)
  %58 = call i32 @kstrtou64(i32 %57, i32 10, i64* %6)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %103

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %50, %45
  %66 = call i32 @mutex_lock(i32* @wakelocks_lock)
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call %struct.wakelock* @wakelock_lookup_add(i8* %67, i64 %68, i32 1)
  store %struct.wakelock* %69, %struct.wakelock** %5, align 8
  %70 = load %struct.wakelock*, %struct.wakelock** %5, align 8
  %71 = call i64 @IS_ERR(%struct.wakelock* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.wakelock*, %struct.wakelock** %5, align 8
  %75 = call i32 @PTR_ERR(%struct.wakelock* %74)
  store i32 %75, i32* %8, align 4
  br label %100

76:                                               ; preds = %65
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @NSEC_PER_MSEC, align 8
  %82 = add nsw i64 %80, %81
  %83 = sub nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @NSEC_PER_MSEC, align 8
  %86 = call i32 @do_div(i64 %84, i64 %85)
  %87 = load %struct.wakelock*, %struct.wakelock** %5, align 8
  %88 = getelementptr inbounds %struct.wakelock, %struct.wakelock* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @__pm_wakeup_event(i32 %89, i64 %90)
  br label %97

92:                                               ; preds = %76
  %93 = load %struct.wakelock*, %struct.wakelock** %5, align 8
  %94 = getelementptr inbounds %struct.wakelock, %struct.wakelock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__pm_stay_awake(i32 %95)
  br label %97

97:                                               ; preds = %92, %79
  %98 = load %struct.wakelock*, %struct.wakelock** %5, align 8
  %99 = call i32 @wakelocks_lru_most_recent(%struct.wakelock* %98)
  br label %100

100:                                              ; preds = %97, %73
  %101 = call i32 @mutex_unlock(i32* @wakelocks_lock)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %61, %42, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @kstrtou64(i32, i32, i64*) #1

declare dso_local i32 @skip_spaces(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wakelock* @wakelock_lookup_add(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.wakelock*) #1

declare dso_local i32 @PTR_ERR(%struct.wakelock*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @__pm_wakeup_event(i32, i64) #1

declare dso_local i32 @__pm_stay_awake(i32) #1

declare dso_local i32 @wakelocks_lru_most_recent(%struct.wakelock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

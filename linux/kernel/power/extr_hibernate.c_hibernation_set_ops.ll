; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_hibernation_set_ops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_hibernation_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_hibernation_ops = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@hibernation_ops = common dso_local global %struct.platform_hibernation_ops* null, align 8
@HIBERNATION_PLATFORM = common dso_local global i64 0, align 8
@hibernation_mode = common dso_local global i64 0, align 8
@HIBERNATION_SHUTDOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hibernation_set_ops(%struct.platform_hibernation_ops* %0) #0 {
  %2 = alloca %struct.platform_hibernation_ops*, align 8
  store %struct.platform_hibernation_ops* %0, %struct.platform_hibernation_ops** %2, align 8
  %3 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %4 = icmp ne %struct.platform_hibernation_ops* %3, null
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %7 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %5
  %11 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %12 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %10
  %16 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %17 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %22 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %27 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %32 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %37 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %42 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %47 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45, %40, %35, %30, %25, %20, %15, %10, %5
  %51 = call i32 @WARN_ON(i32 1)
  br label %68

52:                                               ; preds = %45, %1
  %53 = call i32 (...) @lock_system_sleep()
  %54 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  store %struct.platform_hibernation_ops* %54, %struct.platform_hibernation_ops** @hibernation_ops, align 8
  %55 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %56 = icmp ne %struct.platform_hibernation_ops* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @HIBERNATION_PLATFORM, align 8
  store i64 %58, i64* @hibernation_mode, align 8
  br label %66

59:                                               ; preds = %52
  %60 = load i64, i64* @hibernation_mode, align 8
  %61 = load i64, i64* @HIBERNATION_PLATFORM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @HIBERNATION_SHUTDOWN, align 8
  store i64 %64, i64* @hibernation_mode, align 8
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %57
  %67 = call i32 (...) @unlock_system_sleep()
  br label %68

68:                                               ; preds = %66, %50
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @lock_system_sleep(...) #1

declare dso_local i32 @unlock_system_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

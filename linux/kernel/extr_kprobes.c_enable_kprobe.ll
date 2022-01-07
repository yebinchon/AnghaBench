; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_enable_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_enable_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32 }

@kprobe_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KPROBE_FLAG_DISABLED = common dso_local global i32 0, align 4
@kprobes_all_disarmed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enable_kprobe(%struct.kprobe* %0) #0 {
  %2 = alloca %struct.kprobe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kprobe*, align 8
  store %struct.kprobe* %0, %struct.kprobe** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @mutex_lock(i32* @kprobe_mutex)
  %6 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %7 = call %struct.kprobe* @__get_valid_kprobe(%struct.kprobe* %6)
  store %struct.kprobe* %7, %struct.kprobe** %4, align 8
  %8 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %9 = icmp eq %struct.kprobe* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %18 = call i64 @kprobe_gone(%struct.kprobe* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %16
  %24 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %25 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %26 = icmp ne %struct.kprobe* %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %31 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* @kprobes_all_disarmed, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %34
  %38 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %39 = call i64 @kprobe_disabled(%struct.kprobe* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %45 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %49 = call i32 @arm_kprobe(%struct.kprobe* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %54 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %55 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %41
  br label %59

59:                                               ; preds = %58, %37, %34
  br label %60

60:                                               ; preds = %59, %20, %13
  %61 = call i32 @mutex_unlock(i32* @kprobe_mutex)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kprobe* @__get_valid_kprobe(%struct.kprobe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kprobe_gone(%struct.kprobe*) #1

declare dso_local i64 @kprobe_disabled(%struct.kprobe*) #1

declare dso_local i32 @arm_kprobe(%struct.kprobe*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

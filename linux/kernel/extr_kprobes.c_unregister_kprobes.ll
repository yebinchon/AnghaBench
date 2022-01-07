; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_unregister_kprobes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_unregister_kprobes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32* }

@kprobe_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_kprobes(%struct.kprobe** %0, i32 %1) #0 {
  %3 = alloca %struct.kprobe**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kprobe** %0, %struct.kprobe*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %61

9:                                                ; preds = %2
  %10 = call i32 @mutex_lock(i32* @kprobe_mutex)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %31, %9
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load %struct.kprobe**, %struct.kprobe*** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.kprobe*, %struct.kprobe** %16, i64 %18
  %20 = load %struct.kprobe*, %struct.kprobe** %19, align 8
  %21 = call i64 @__unregister_kprobe_top(%struct.kprobe* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.kprobe**, %struct.kprobe*** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.kprobe*, %struct.kprobe** %24, i64 %26
  %28 = load %struct.kprobe*, %struct.kprobe** %27, align 8
  %29 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %11

34:                                               ; preds = %11
  %35 = call i32 @mutex_unlock(i32* @kprobe_mutex)
  %36 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %58, %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.kprobe**, %struct.kprobe*** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.kprobe*, %struct.kprobe** %42, i64 %44
  %46 = load %struct.kprobe*, %struct.kprobe** %45, align 8
  %47 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.kprobe**, %struct.kprobe*** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.kprobe*, %struct.kprobe** %51, i64 %53
  %55 = load %struct.kprobe*, %struct.kprobe** %54, align 8
  %56 = call i32 @__unregister_kprobe_bottom(%struct.kprobe* %55)
  br label %57

57:                                               ; preds = %50, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %37

61:                                               ; preds = %8, %37
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__unregister_kprobe_top(%struct.kprobe*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @__unregister_kprobe_bottom(%struct.kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

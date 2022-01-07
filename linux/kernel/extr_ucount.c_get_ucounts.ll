; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ucount.c_get_ucounts.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ucount.c_get_ucounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucounts = type { i64, i32, i32, %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.hlist_head = type { i32 }

@ucounts_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucounts* (%struct.user_namespace*, i32)* @get_ucounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucounts* @get_ucounts(%struct.user_namespace* %0, i32 %1) #0 {
  %3 = alloca %struct.ucounts*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca %struct.ucounts*, align 8
  %8 = alloca %struct.ucounts*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.hlist_head* @ucounts_hashentry(%struct.user_namespace* %9, i32 %10)
  store %struct.hlist_head* %11, %struct.hlist_head** %6, align 8
  %12 = call i32 @spin_lock_irq(i32* @ucounts_lock)
  %13 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %16 = call %struct.ucounts* @find_ucounts(%struct.user_namespace* %13, i32 %14, %struct.hlist_head* %15)
  store %struct.ucounts* %16, %struct.ucounts** %7, align 8
  %17 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %18 = icmp ne %struct.ucounts* %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %2
  %20 = call i32 @spin_unlock_irq(i32* @ucounts_lock)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ucounts* @kzalloc(i32 24, i32 %21)
  store %struct.ucounts* %22, %struct.ucounts** %8, align 8
  %23 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %24 = icmp ne %struct.ucounts* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.ucounts* null, %struct.ucounts** %3, align 8
  br label %67

26:                                               ; preds = %19
  %27 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %28 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %29 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %28, i32 0, i32 3
  store %struct.user_namespace* %27, %struct.user_namespace** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %32 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %34 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = call i32 @spin_lock_irq(i32* @ucounts_lock)
  %36 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %39 = call %struct.ucounts* @find_ucounts(%struct.user_namespace* %36, i32 %37, %struct.hlist_head* %38)
  store %struct.ucounts* %39, %struct.ucounts** %7, align 8
  %40 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %41 = icmp ne %struct.ucounts* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %44 = call i32 @kfree(%struct.ucounts* %43)
  br label %51

45:                                               ; preds = %26
  %46 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %47 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %46, i32 0, i32 1
  %48 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %49 = call i32 @hlist_add_head(i32* %47, %struct.hlist_head* %48)
  %50 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  store %struct.ucounts* %50, %struct.ucounts** %7, align 8
  br label %51

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %54 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INT_MAX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.ucounts* null, %struct.ucounts** %7, align 8
  br label %64

59:                                               ; preds = %52
  %60 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %61 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %59, %58
  %65 = call i32 @spin_unlock_irq(i32* @ucounts_lock)
  %66 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  store %struct.ucounts* %66, %struct.ucounts** %3, align 8
  br label %67

67:                                               ; preds = %64, %25
  %68 = load %struct.ucounts*, %struct.ucounts** %3, align 8
  ret %struct.ucounts* %68
}

declare dso_local %struct.hlist_head* @ucounts_hashentry(%struct.user_namespace*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.ucounts* @find_ucounts(%struct.user_namespace*, i32, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.ucounts* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ucounts*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

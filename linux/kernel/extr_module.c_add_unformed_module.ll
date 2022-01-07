; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_add_unformed_module.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_add_unformed_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64, i32, i32 }

@MODULE_STATE_UNFORMED = common dso_local global i64 0, align 8
@module_mutex = common dso_local global i32 0, align 4
@MODULE_STATE_LIVE = common dso_local global i64 0, align 8
@module_wq = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@modules = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*)* @add_unformed_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_unformed_module(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %5 = load i64, i64* @MODULE_STATE_UNFORMED, align 8
  %6 = load %struct.module*, %struct.module** %2, align 8
  %7 = getelementptr inbounds %struct.module, %struct.module* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  br label %8

8:                                                ; preds = %37, %1
  %9 = call i32 @mutex_lock(i32* @module_mutex)
  %10 = load %struct.module*, %struct.module** %2, align 8
  %11 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.module*, %struct.module** %2, align 8
  %14 = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = call %struct.module* @find_module_all(i32 %12, i32 %16, i32 1)
  store %struct.module* %17, %struct.module** %4, align 8
  %18 = load %struct.module*, %struct.module** %4, align 8
  %19 = icmp ne %struct.module* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %8
  %21 = load %struct.module*, %struct.module** %4, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MODULE_STATE_LIVE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = call i32 @mutex_unlock(i32* @module_mutex)
  %28 = load i32, i32* @module_wq, align 4
  %29 = load %struct.module*, %struct.module** %2, align 8
  %30 = getelementptr inbounds %struct.module, %struct.module* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @finished_loading(i32 %31)
  %33 = call i32 @wait_event_interruptible(i32 %28, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %51

37:                                               ; preds = %26
  br label %8

38:                                               ; preds = %20
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %8
  %42 = load %struct.module*, %struct.module** %2, align 8
  %43 = call i32 @mod_update_bounds(%struct.module* %42)
  %44 = load %struct.module*, %struct.module** %2, align 8
  %45 = getelementptr inbounds %struct.module, %struct.module* %44, i32 0, i32 1
  %46 = call i32 @list_add_rcu(i32* %45, i32* @modules)
  %47 = load %struct.module*, %struct.module** %2, align 8
  %48 = call i32 @mod_tree_insert(%struct.module* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %38
  %50 = call i32 @mutex_unlock(i32* @module_mutex)
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.module* @find_module_all(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @finished_loading(i32) #1

declare dso_local i32 @mod_update_bounds(%struct.module*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mod_tree_insert(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

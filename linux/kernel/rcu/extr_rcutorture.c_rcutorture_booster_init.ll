; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_booster_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_booster_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boost_tasks = common dso_local global i32** null, align 8
@boost_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Creating rcu_torture_boost task\00", align 1
@rcu_torture_boost = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rcu_torture_boost\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"rcu_torture_boost task create failed\00", align 1
@n_rcu_torture_boost_ktrerror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rcutorture_booster_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcutorture_booster_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32**, i32*** @boost_tasks, align 8
  %6 = load i32, i32* %3, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32*, i32** %5, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = call i32 @mutex_lock(i32* @boost_mutex)
  %14 = call i32 (...) @rcu_torture_disable_rt_throttle()
  %15 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @rcu_torture_boost, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @cpu_to_node(i32 %17)
  %19 = call i32* @kthread_create_on_node(i32 %16, i32* null, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32**, i32*** @boost_tasks, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* %19, i32** %23, align 8
  %24 = load i32**, i32*** @boost_tasks, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %12
  %32 = load i32**, i32*** @boost_tasks, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @n_rcu_torture_boost_ktrerror, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @n_rcu_torture_boost_ktrerror, align 4
  %41 = load i32**, i32*** @boost_tasks, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* null, i32** %44, align 8
  %45 = call i32 @mutex_unlock(i32* @boost_mutex)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %62

47:                                               ; preds = %12
  %48 = load i32**, i32*** @boost_tasks, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @kthread_bind(i32* %52, i32 %53)
  %55 = load i32**, i32*** @boost_tasks, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @wake_up_process(i32* %59)
  %61 = call i32 @mutex_unlock(i32* @boost_mutex)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %47, %31, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_torture_disable_rt_throttle(...) #1

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i32* @kthread_create_on_node(i32, i32*, i32, i8*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kthread_bind(i32*, i32) #1

declare dso_local i32 @wake_up_process(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

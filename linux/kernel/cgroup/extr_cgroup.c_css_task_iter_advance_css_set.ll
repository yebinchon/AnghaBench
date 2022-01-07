; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_task_iter_advance_css_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_task_iter_advance_css_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.css_task_iter = type { i32, %struct.css_set*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, i32* }
%struct.css_set = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@css_set_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.css_task_iter*)* @css_task_iter_advance_css_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_task_iter_advance_css_set(%struct.css_task_iter* %0) #0 {
  %2 = alloca %struct.css_task_iter*, align 8
  %3 = alloca %struct.css_set*, align 8
  store %struct.css_task_iter* %0, %struct.css_task_iter** %2, align 8
  %4 = call i32 @lockdep_assert_held(i32* @css_set_lock)
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %7 = call %struct.css_set* @css_task_iter_next_css_set(%struct.css_task_iter* %6)
  store %struct.css_set* %7, %struct.css_set** %3, align 8
  %8 = load %struct.css_set*, %struct.css_set** %3, align 8
  %9 = icmp ne %struct.css_set* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %12 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %11, i32 0, i32 5
  store i32* null, i32** %12, align 8
  br label %93

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.css_set*, %struct.css_set** %3, align 8
  %16 = call i32 @css_set_populated(%struct.css_set* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.css_set*, %struct.css_set** %3, align 8
  %20 = getelementptr inbounds %struct.css_set, %struct.css_set* %19, i32 0, i32 1
  %21 = call i64 @list_empty(%struct.TYPE_2__* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %5, label %25

25:                                               ; preds = %23
  %26 = load %struct.css_set*, %struct.css_set** %3, align 8
  %27 = getelementptr inbounds %struct.css_set, %struct.css_set* %26, i32 0, i32 3
  %28 = call i64 @list_empty(%struct.TYPE_2__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.css_set*, %struct.css_set** %3, align 8
  %32 = getelementptr inbounds %struct.css_set, %struct.css_set* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %36 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  br label %57

37:                                               ; preds = %25
  %38 = load %struct.css_set*, %struct.css_set** %3, align 8
  %39 = getelementptr inbounds %struct.css_set, %struct.css_set* %38, i32 0, i32 2
  %40 = call i64 @list_empty(%struct.TYPE_2__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.css_set*, %struct.css_set** %3, align 8
  %44 = getelementptr inbounds %struct.css_set, %struct.css_set* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %48 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %47, i32 0, i32 5
  store i32* %46, i32** %48, align 8
  br label %56

49:                                               ; preds = %37
  %50 = load %struct.css_set*, %struct.css_set** %3, align 8
  %51 = getelementptr inbounds %struct.css_set, %struct.css_set* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %55 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %54, i32 0, i32 5
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.css_set*, %struct.css_set** %3, align 8
  %59 = getelementptr inbounds %struct.css_set, %struct.css_set* %58, i32 0, i32 3
  %60 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %61 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %60, i32 0, i32 4
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %61, align 8
  %62 = load %struct.css_set*, %struct.css_set** %3, align 8
  %63 = getelementptr inbounds %struct.css_set, %struct.css_set* %62, i32 0, i32 2
  %64 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %65 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %64, i32 0, i32 3
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %65, align 8
  %66 = load %struct.css_set*, %struct.css_set** %3, align 8
  %67 = getelementptr inbounds %struct.css_set, %struct.css_set* %66, i32 0, i32 1
  %68 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %69 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %68, i32 0, i32 2
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %69, align 8
  %70 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %71 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %70, i32 0, i32 1
  %72 = load %struct.css_set*, %struct.css_set** %71, align 8
  %73 = icmp ne %struct.css_set* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %57
  %75 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %76 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %75, i32 0, i32 0
  %77 = call i32 @list_del(i32* %76)
  %78 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %79 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %78, i32 0, i32 1
  %80 = load %struct.css_set*, %struct.css_set** %79, align 8
  %81 = call i32 @put_css_set_locked(%struct.css_set* %80)
  br label %82

82:                                               ; preds = %74, %57
  %83 = load %struct.css_set*, %struct.css_set** %3, align 8
  %84 = call i32 @get_css_set(%struct.css_set* %83)
  %85 = load %struct.css_set*, %struct.css_set** %3, align 8
  %86 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %87 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %86, i32 0, i32 1
  store %struct.css_set* %85, %struct.css_set** %87, align 8
  %88 = load %struct.css_task_iter*, %struct.css_task_iter** %2, align 8
  %89 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %88, i32 0, i32 0
  %90 = load %struct.css_set*, %struct.css_set** %3, align 8
  %91 = getelementptr inbounds %struct.css_set, %struct.css_set* %90, i32 0, i32 0
  %92 = call i32 @list_add(i32* %89, i32* %91)
  br label %93

93:                                               ; preds = %82, %10
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.css_set* @css_task_iter_next_css_set(%struct.css_task_iter*) #1

declare dso_local i32 @css_set_populated(%struct.css_set*) #1

declare dso_local i64 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_css_set_locked(%struct.css_set*) #1

declare dso_local i32 @get_css_set(%struct.css_set*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

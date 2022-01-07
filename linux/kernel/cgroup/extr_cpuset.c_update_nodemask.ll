; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_nodemask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }

@top_cpuset = common dso_local global %struct.cpuset zeroinitializer, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@callback_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset*, i8*)* @update_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_nodemask(%struct.cpuset* %0, %struct.cpuset* %1, i8* %2) #0 {
  %4 = alloca %struct.cpuset*, align 8
  %5 = alloca %struct.cpuset*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %4, align 8
  store %struct.cpuset* %1, %struct.cpuset** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %9 = icmp eq %struct.cpuset* %8, @top_cpuset
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EACCES, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  br label %71

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %19 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nodes_clear(i32 %20)
  br label %42

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %25 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nodelist_parse(i8* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %71

31:                                               ; preds = %22
  %32 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %33 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.cpuset, %struct.cpuset* @top_cpuset, i32 0, i32 0), align 4
  %36 = call i32 @nodes_subset(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %71

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %44 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %47 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nodes_equal(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %71

52:                                               ; preds = %42
  %53 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %54 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %55 = call i32 @validate_change(%struct.cpuset* %53, %struct.cpuset* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %71

59:                                               ; preds = %52
  %60 = call i32 @spin_lock_irq(i32* @callback_lock)
  %61 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %62 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %65 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = call i32 @spin_unlock_irq(i32* @callback_lock)
  %67 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %68 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %69 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %68, i32 0, i32 0
  %70 = call i32 @update_nodemasks_hier(%struct.cpuset* %67, i32* %69)
  br label %71

71:                                               ; preds = %59, %58, %51, %38, %30, %10
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @nodelist_parse(i8*, i32) #1

declare dso_local i32 @nodes_subset(i32, i32) #1

declare dso_local i64 @nodes_equal(i32, i32) #1

declare dso_local i32 @validate_change(%struct.cpuset*, %struct.cpuset*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @update_nodemasks_hier(%struct.cpuset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

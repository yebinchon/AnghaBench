; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_lookup_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_lookup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.task_struct* }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (i32, i32, i32)* @lookup_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @lookup_task(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  br label %20

16:                                               ; preds = %11
  %17 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi %struct.task_struct* [ %15, %14 ], [ %19, %16 ]
  store %struct.task_struct* %21, %struct.task_struct** %4, align 8
  br label %67

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.task_struct* @find_task_by_vpid(i32 %23)
  store %struct.task_struct* %24, %struct.task_struct** %8, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %26 = icmp ne %struct.task_struct* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %28, %struct.task_struct** %4, align 8
  br label %67

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %35 = call i64 @same_thread_group(%struct.task_struct* %33, %struct.task_struct* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi %struct.task_struct* [ %38, %37 ], [ null, %39 ]
  store %struct.task_struct* %41, %struct.task_struct** %4, align 8
  br label %67

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %48 = icmp eq %struct.task_struct* %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %51 = call i64 @thread_group_leader(%struct.task_struct* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45
  %54 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi %struct.task_struct* [ %54, %53 ], [ null, %55 ]
  store %struct.task_struct* %57, %struct.task_struct** %4, align 8
  br label %67

58:                                               ; preds = %42
  %59 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %60 = call i64 @has_group_leader_pid(%struct.task_struct* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi %struct.task_struct* [ %63, %62 ], [ null, %64 ]
  store %struct.task_struct* %66, %struct.task_struct** %4, align 8
  br label %67

67:                                               ; preds = %65, %56, %40, %27, %20
  %68 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  ret %struct.task_struct* %68
}

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i64 @has_group_leader_pid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

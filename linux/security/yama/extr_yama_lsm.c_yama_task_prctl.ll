; ModuleID = '/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_yama_task_prctl.c'
source_filename = "/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_yama_task_prctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@PR_SET_PTRACER_ANY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64)* @yama_task_prctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yama_task_prctl(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %16, %struct.task_struct** %12, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %67 [
    i32 128, label %18
  ]

18:                                               ; preds = %5
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %21 = call i32 @thread_group_leader(%struct.task_struct* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.task_struct* @rcu_dereference(i32 %26)
  store %struct.task_struct* %27, %struct.task_struct** %12, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %30 = call i32 @get_task_struct(%struct.task_struct* %29)
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %36 = call i32 @yama_ptracer_del(i32* null, %struct.task_struct* %35)
  store i32 0, i32* %11, align 4
  br label %64

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @PR_SET_PTRACER_ANY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %47 = call i32 @yama_ptracer_add(%struct.task_struct* null, %struct.task_struct* %46)
  store i32 %47, i32* %11, align 4
  br label %63

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = call %struct.task_struct* @find_get_task_by_vpid(i64 %49)
  store %struct.task_struct* %50, %struct.task_struct** %13, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %52 = icmp ne %struct.task_struct* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %62

56:                                               ; preds = %48
  %57 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %59 = call i32 @yama_ptracer_add(%struct.task_struct* %57, %struct.task_struct* %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %61 = call i32 @put_task_struct(%struct.task_struct* %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %66 = call i32 @put_task_struct(%struct.task_struct* %65)
  br label %67

67:                                               ; preds = %5, %64
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @thread_group_leader(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @rcu_dereference(i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @yama_ptracer_del(i32*, %struct.task_struct*) #1

declare dso_local i32 @yama_ptracer_add(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local %struct.task_struct* @find_get_task_by_vpid(i64) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

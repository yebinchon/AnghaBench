; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_futex.c_put_pi_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_futex.c_put_pi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.futex_pi_state* }
%struct.futex_pi_state = type { i32, %struct.task_struct*, %struct.TYPE_3__, i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_pi_state*)* @put_pi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pi_state(%struct.futex_pi_state* %0) #0 {
  %2 = alloca %struct.futex_pi_state*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.futex_pi_state* %0, %struct.futex_pi_state** %2, align 8
  %4 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %5 = icmp ne %struct.futex_pi_state* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %64

7:                                                ; preds = %1
  %8 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %9 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %8, i32 0, i32 0
  %10 = call i32 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %64

13:                                               ; preds = %7
  %14 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %15 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %14, i32 0, i32 1
  %16 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %20 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @raw_spin_lock_irq(i32* %21)
  %23 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %24 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %23, i32 0, i32 1
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  store %struct.task_struct* %25, %struct.task_struct** %3, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = icmp ne %struct.task_struct* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = call i32 @raw_spin_lock(i32* %30)
  %32 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %33 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %32, i32 0, i32 3
  %34 = call i32 @list_del_init(i32* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = call i32 @raw_spin_unlock(i32* %36)
  br label %38

38:                                               ; preds = %28, %18
  %39 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %40 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %39, i32 0, i32 2
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = call i32 @rt_mutex_proxy_unlock(%struct.TYPE_3__* %40, %struct.task_struct* %41)
  %43 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %44 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @raw_spin_unlock_irq(i32* %45)
  br label %47

47:                                               ; preds = %38, %13
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.futex_pi_state*, %struct.futex_pi_state** %49, align 8
  %51 = icmp ne %struct.futex_pi_state* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %54 = call i32 @kfree(%struct.futex_pi_state* %53)
  br label %64

55:                                               ; preds = %47
  %56 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %57 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %56, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %57, align 8
  %58 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %59 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %58, i32 0, i32 0
  %60 = call i32 @refcount_set(i32* %59, i32 1)
  %61 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.futex_pi_state* %61, %struct.futex_pi_state** %63, align 8
  br label %64

64:                                               ; preds = %6, %12, %55, %52
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @rt_mutex_proxy_unlock(%struct.TYPE_3__*, %struct.task_struct*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.futex_pi_state*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

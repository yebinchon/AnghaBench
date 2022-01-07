; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_exit_mm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_exit_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.mm_struct*, %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.core_state* }
%struct.core_state = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.core_thread = type { %struct.TYPE_8__*, i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@TIF_MEMDIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_mm() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = alloca %struct.core_state*, align 8
  %3 = alloca %struct.core_thread, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %6, %struct.mm_struct** %1, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %9 = call i32 @mm_release(%struct.TYPE_8__* %7, %struct.mm_struct* %8)
  %10 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %11 = icmp ne %struct.mm_struct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %90

13:                                               ; preds = %0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %15 = call i32 @sync_mm_rss(%struct.mm_struct* %14)
  %16 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 1
  %21 = load %struct.core_state*, %struct.core_state** %20, align 8
  store %struct.core_state* %21, %struct.core_state** %2, align 8
  %22 = load %struct.core_state*, %struct.core_state** %2, align 8
  %23 = icmp ne %struct.core_state* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %13
  %25 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  %27 = call i32 @up_read(i32* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %29 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %3, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.core_state*, %struct.core_state** %2, align 8
  %31 = getelementptr inbounds %struct.core_state, %struct.core_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @xchg(i32* %32, %struct.core_thread* %3)
  %34 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %3, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.core_state*, %struct.core_state** %2, align 8
  %36 = getelementptr inbounds %struct.core_state, %struct.core_state* %35, i32 0, i32 1
  %37 = call i64 @atomic_dec_and_test(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.core_state*, %struct.core_state** %2, align 8
  %41 = getelementptr inbounds %struct.core_state, %struct.core_state* %40, i32 0, i32 0
  %42 = call i32 @complete(i32* %41)
  br label %43

43:                                               ; preds = %39, %24
  br label %44

44:                                               ; preds = %51, %43
  %45 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %46 = call i32 @set_current_state(i32 %45)
  %47 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %3, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %53

51:                                               ; preds = %44
  %52 = call i32 (...) @freezable_schedule()
  br label %44

53:                                               ; preds = %50
  %54 = load i32, i32* @TASK_RUNNING, align 4
  %55 = call i32 @__set_current_state(i32 %54)
  %56 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %57 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %56, i32 0, i32 0
  %58 = call i32 @down_read(i32* %57)
  br label %59

59:                                               ; preds = %53, %13
  %60 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %61 = call i32 @mmgrab(%struct.mm_struct* %60)
  %62 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.mm_struct*, %struct.mm_struct** %64, align 8
  %66 = icmp ne %struct.mm_struct* %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %70 = call i32 @task_lock(%struct.TYPE_8__* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store %struct.mm_struct* null, %struct.mm_struct** %72, align 8
  %73 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 0
  %75 = call i32 @up_read(i32* %74)
  %76 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %78 = call i32 @enter_lazy_tlb(%struct.mm_struct* %76, %struct.TYPE_8__* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %80 = call i32 @task_unlock(%struct.TYPE_8__* %79)
  %81 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %82 = call i32 @mm_update_next_owner(%struct.mm_struct* %81)
  %83 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %84 = call i32 @mmput(%struct.mm_struct* %83)
  %85 = load i32, i32* @TIF_MEMDIE, align 4
  %86 = call i64 @test_thread_flag(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %59
  %89 = call i32 (...) @exit_oom_victim()
  br label %90

90:                                               ; preds = %12, %88, %59
  ret void
}

declare dso_local i32 @mm_release(%struct.TYPE_8__*, %struct.mm_struct*) #1

declare dso_local i32 @sync_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @xchg(i32*, %struct.core_thread*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @freezable_schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @mmgrab(%struct.mm_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @task_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @enter_lazy_tlb(%struct.mm_struct*, %struct.TYPE_8__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @mm_update_next_owner(%struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @exit_oom_victim(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

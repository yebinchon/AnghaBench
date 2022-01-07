; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_coredump.c_coredump_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_coredump.c_coredump_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }
%struct.core_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.core_thread*, %struct.task_struct* }
%struct.core_thread = type { %struct.core_thread*, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.core_state*)* @coredump_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coredump_wait(i32 %0, %struct.core_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.core_state*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.core_thread*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.core_state* %1, %struct.core_state** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %7, align 8
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.core_state*, %struct.core_state** %5, align 8
  %17 = getelementptr inbounds %struct.core_state, %struct.core_state* %16, i32 0, i32 1
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = load %struct.core_state*, %struct.core_state** %5, align 8
  %21 = getelementptr inbounds %struct.core_state, %struct.core_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.task_struct* %19, %struct.task_struct** %22, align 8
  %23 = load %struct.core_state*, %struct.core_state** %5, align 8
  %24 = getelementptr inbounds %struct.core_state, %struct.core_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.core_thread* null, %struct.core_thread** %25, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = call i64 @down_write_killable(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %2
  %34 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %41 = load %struct.core_state*, %struct.core_state** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @zap_threads(%struct.task_struct* %39, %struct.mm_struct* %40, %struct.core_state* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = call i32 @up_write(i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %44
  %51 = call i32 (...) @freezer_do_not_count()
  %52 = load %struct.core_state*, %struct.core_state** %5, align 8
  %53 = getelementptr inbounds %struct.core_state, %struct.core_state* %52, i32 0, i32 1
  %54 = call i32 @wait_for_completion(i32* %53)
  %55 = call i32 (...) @freezer_count()
  %56 = load %struct.core_state*, %struct.core_state** %5, align 8
  %57 = getelementptr inbounds %struct.core_state, %struct.core_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.core_thread*, %struct.core_thread** %58, align 8
  store %struct.core_thread* %59, %struct.core_thread** %9, align 8
  br label %60

60:                                               ; preds = %63, %50
  %61 = load %struct.core_thread*, %struct.core_thread** %9, align 8
  %62 = icmp ne %struct.core_thread* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.core_thread*, %struct.core_thread** %9, align 8
  %65 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @wait_task_inactive(i32 %66, i32 0)
  %68 = load %struct.core_thread*, %struct.core_thread** %9, align 8
  %69 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %68, i32 0, i32 0
  %70 = load %struct.core_thread*, %struct.core_thread** %69, align 8
  store %struct.core_thread* %70, %struct.core_thread** %9, align 8
  br label %60

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %30
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i32 @zap_threads(%struct.task_struct*, %struct.mm_struct*, %struct.core_state*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @freezer_do_not_count(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @freezer_count(...) #1

declare dso_local i32 @wait_task_inactive(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_rseq.c_rseq_need_restart.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_rseq.c_rseq_need_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL = common dso_local global i32 0, align 4
@RSEQ_CS_PREEMPT_MIGRATE_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @rseq_need_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rseq_need_restart(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @get_user(i32 %9, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RSEQ_CS_PREEMPT_MIGRATE_FLAGS, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RSEQ_CS_PREEMPT_MIGRATE_FLAGS, align 4
  %32 = icmp ne i32 %30, %31
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i1 [ false, %19 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %33
  %42 = call i32 (...) @preempt_disable()
  %43 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = call i32 (...) @preempt_enable()
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %41, %38, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @get_user(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

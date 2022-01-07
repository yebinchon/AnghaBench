; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_send_sigqueue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_send_sigqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigqueue = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.pid = type { i32 }
%struct.sigpending = type { i32, i32 }
%struct.task_struct = type { %struct.sigpending, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sigpending }

@SIGQUEUE_PREALLOC = common dso_local global i32 0, align 4
@TRACE_SIGNAL_IGNORED = common dso_local global i32 0, align 4
@SI_TIMER = common dso_local global i64 0, align 8
@TRACE_SIGNAL_ALREADY_PENDING = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@TRACE_SIGNAL_DELIVERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_sigqueue(%struct.sigqueue* %0, %struct.pid* %1, i32 %2) #0 {
  %4 = alloca %struct.sigqueue*, align 8
  %5 = alloca %struct.pid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigpending*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sigqueue* %0, %struct.sigqueue** %4, align 8
  store %struct.pid* %1, %struct.pid** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %14 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %18 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SIGQUEUE_PREALLOC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  store i32 -1, i32* %11, align 4
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.pid*, %struct.pid** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.task_struct* @pid_task(%struct.pid* %27, i32 %28)
  store %struct.task_struct* %29, %struct.task_struct** %9, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %31 = icmp ne %struct.task_struct* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %34 = call i32 @lock_task_sighand(%struct.task_struct* %33, i64* %10)
  %35 = call i32 @likely(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %3
  br label %116

38:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  %39 = load i32, i32* @TRACE_SIGNAL_IGNORED, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %42 = call i32 @prepare_signal(i32 %40, %struct.task_struct* %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %103

45:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  %46 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %47 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %46, i32 0, i32 2
  %48 = call i32 @list_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %45
  %55 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %56 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SI_TIMER, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %64 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* @TRACE_SIGNAL_ALREADY_PENDING, align 4
  store i32 %68, i32* %12, align 4
  br label %103

69:                                               ; preds = %45
  %70 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %71 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @signalfd_notify(%struct.task_struct* %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PIDTYPE_PID, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  br label %87

84:                                               ; preds = %69
  %85 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %86 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %85, i32 0, i32 0
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi %struct.sigpending* [ %83, %79 ], [ %86, %84 ]
  store %struct.sigpending* %88, %struct.sigpending** %8, align 8
  %89 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %90 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %89, i32 0, i32 2
  %91 = load %struct.sigpending*, %struct.sigpending** %8, align 8
  %92 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %91, i32 0, i32 1
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  %94 = load %struct.sigpending*, %struct.sigpending** %8, align 8
  %95 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %94, i32 0, i32 0
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @sigaddset(i32* %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @complete_signal(i32 %98, %struct.task_struct* %99, i32 %100)
  %102 = load i32, i32* @TRACE_SIGNAL_DELIVERED, align 4
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %87, %54, %44
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %106 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %105, i32 0, i32 1
  %107 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @PIDTYPE_PID, align 4
  %110 = icmp ne i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @trace_signal_generate(i32 %104, %struct.TYPE_4__* %106, %struct.task_struct* %107, i32 %111, i32 %112)
  %114 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %115 = call i32 @unlock_task_sighand(%struct.task_struct* %114, i64* %10)
  br label %116

116:                                              ; preds = %103, %37
  %117 = call i32 (...) @rcu_read_unlock()
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @prepare_signal(i32, %struct.task_struct*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @signalfd_notify(%struct.task_struct*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @complete_signal(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @trace_signal_generate(i32, %struct.TYPE_4__*, %struct.task_struct*, i32, i32) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

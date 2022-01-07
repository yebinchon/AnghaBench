; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_init_data_structures_once.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_init_data_structures_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@init_data_structures_once.ds_initialized = internal global i32 0, align 4
@init_data_structures_once.rcu_head_initialized = internal global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_SCHEDULING = common dso_local global i64 0, align 8
@delayed_free = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@lock_classes = common dso_local global %struct.TYPE_6__* null, align 8
@free_lock_classes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_data_structures_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_data_structures_once() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @init_data_structures_once.rcu_head_initialized, align 4
  %3 = call i64 @likely(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %52

6:                                                ; preds = %0
  %7 = load i64, i64* @system_state, align 8
  %8 = load i64, i64* @SYSTEM_SCHEDULING, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @init_rcu_head(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @delayed_free, i32 0, i32 1))
  store i32 1, i32* @init_data_structures_once.rcu_head_initialized, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* @init_data_structures_once.ds_initialized, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %52

16:                                               ; preds = %12
  store i32 1, i32* @init_data_structures_once.ds_initialized, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @delayed_free, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @delayed_free, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %49, %16
  %26 = load i32, i32* %1, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lock_classes, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lock_classes, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = call i32 @list_add_tail(i32* %35, i32* @free_lock_classes)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lock_classes, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lock_classes, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  br label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %25

52:                                               ; preds = %5, %15, %25
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @init_rcu_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

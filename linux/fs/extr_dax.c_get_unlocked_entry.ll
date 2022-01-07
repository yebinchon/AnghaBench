; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_get_unlocked_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_get_unlocked_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32 }
%struct.wait_exceptional_entry_queue = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@wake_exceptional_entry_func = common dso_local global i32 0, align 4
@XA_RETRY_ENTRY = common dso_local global i8* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xa_state*, i32)* @get_unlocked_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_unlocked_entry(%struct.xa_state* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xa_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wait_exceptional_entry_queue, align 4
  %8 = alloca i32*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %7, i32 0, i32 0
  %10 = call i32 @init_wait(%struct.TYPE_4__* %9)
  %11 = load i32, i32* @wake_exceptional_entry_func, align 4
  %12 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %7, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %16 = call i8* @xas_find_conflict(%struct.xa_state* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @xa_is_value(i8* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %14
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %3, align 8
  br label %61

29:                                               ; preds = %19
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @dax_entry_order(i8* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @XA_RETRY_ENTRY, align 8
  store i8* %35, i8** %3, align 8
  br label %61

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @dax_is_locked(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %3, align 8
  br label %61

42:                                               ; preds = %36
  %43 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %7, i32 0, i32 1
  %46 = call i32* @dax_entry_waitqueue(%struct.xa_state* %43, i8* %44, i32* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %7, i32 0, i32 0
  %49 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %50 = call i32 @prepare_to_wait_exclusive(i32* %47, %struct.TYPE_4__* %48, i32 %49)
  %51 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %52 = call i32 @xas_unlock_irq(%struct.xa_state* %51)
  %53 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %54 = call i32 @xas_reset(%struct.xa_state* %53)
  %55 = call i32 (...) @schedule()
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %7, i32 0, i32 0
  %58 = call i32 @finish_wait(i32* %56, %struct.TYPE_4__* %57)
  %59 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %60 = call i32 @xas_lock_irq(%struct.xa_state* %59)
  br label %14

61:                                               ; preds = %40, %34, %27
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i32 @init_wait(%struct.TYPE_4__*) #1

declare dso_local i8* @xas_find_conflict(%struct.xa_state*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xa_is_value(i8*) #1

declare dso_local i32 @dax_entry_order(i8*) #1

declare dso_local i32 @dax_is_locked(i8*) #1

declare dso_local i32* @dax_entry_waitqueue(%struct.xa_state*, i8*, i32*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @xas_unlock_irq(%struct.xa_state*) #1

declare dso_local i32 @xas_reset(%struct.xa_state*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @xas_lock_irq(%struct.xa_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

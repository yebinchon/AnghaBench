; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_wake_up_page_bit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_wake_up_page_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.wait_page_key = type { i32, i64, %struct.page* }
%struct.TYPE_8__ = type { i32, i32, i32*, i32* }

@TASK_NORMAL = common dso_local global i32 0, align 4
@WQ_FLAG_BOOKMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @wake_up_page_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_up_page_bit(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.wait_page_key, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call %struct.TYPE_7__* @page_waitqueue(%struct.page* %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %6, i32 0, i32 2
  store %struct.page* %11, %struct.page** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %6, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load i32, i32* @TASK_NORMAL, align 4
  %27 = call i32 @__wake_up_locked_key_bookmark(%struct.TYPE_7__* %25, i32 %26, %struct.wait_page_key* %6, %struct.TYPE_8__* %8)
  br label %28

28:                                               ; preds = %34, %2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @WQ_FLAG_BOOKMARK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = call i32 (...) @cpu_relax()
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = load i32, i32* @TASK_NORMAL, align 4
  %46 = call i32 @__wake_up_locked_key_bookmark(%struct.TYPE_7__* %44, i32 %45, %struct.wait_page_key* %6, %struct.TYPE_8__* %8)
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call i32 @waitqueue_active(%struct.TYPE_7__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %6, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = call i32 @ClearPageWaiters(%struct.page* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret void
}

declare dso_local %struct.TYPE_7__* @page_waitqueue(%struct.page*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__wake_up_locked_key_bookmark(%struct.TYPE_7__*, i32, %struct.wait_page_key*, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @waitqueue_active(%struct.TYPE_7__*) #1

declare dso_local i32 @ClearPageWaiters(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

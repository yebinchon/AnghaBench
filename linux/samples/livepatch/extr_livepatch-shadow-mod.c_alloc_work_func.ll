; ModuleID = '/home/carl/AnghaBench/linux/samples/livepatch/extr_livepatch-shadow-mod.c_alloc_work_func.c'
source_filename = "/home/carl/AnghaBench/linux/samples/livepatch/extr_livepatch-shadow-mod.c_alloc_work_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.dummy = type { i32 }

@dummy_list_mutex = common dso_local global i32 0, align 4
@dummy_list = common dso_local global i32 0, align 4
@alloc_dwork = common dso_local global i32 0, align 4
@ALLOC_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @alloc_work_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_work_func(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.dummy*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = call %struct.dummy* (...) @dummy_alloc()
  store %struct.dummy* %4, %struct.dummy** %3, align 8
  %5 = load %struct.dummy*, %struct.dummy** %3, align 8
  %6 = icmp ne %struct.dummy* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = call i32 @mutex_lock(i32* @dummy_list_mutex)
  %10 = load %struct.dummy*, %struct.dummy** %3, align 8
  %11 = getelementptr inbounds %struct.dummy, %struct.dummy* %10, i32 0, i32 0
  %12 = call i32 @list_add(i32* %11, i32* @dummy_list)
  %13 = call i32 @mutex_unlock(i32* @dummy_list_mutex)
  %14 = load i32, i32* @ALLOC_PERIOD, align 4
  %15 = mul nsw i32 1000, %14
  %16 = call i32 @msecs_to_jiffies(i32 %15)
  %17 = call i32 @schedule_delayed_work(i32* @alloc_dwork, i32 %16)
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.dummy* @dummy_alloc(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

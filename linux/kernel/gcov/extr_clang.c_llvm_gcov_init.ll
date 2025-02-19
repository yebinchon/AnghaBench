; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_clang.c_llvm_gcov_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_clang.c_llvm_gcov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gcov_lock = common dso_local global i32 0, align 4
@clang_gcov_list = common dso_local global i32 0, align 4
@current_info = common dso_local global %struct.gcov_info* null, align 8
@gcov_events_enabled = common dso_local global i64 0, align 8
@GCOV_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llvm_gcov_init(i32 (...)* %0, i32 (...)* %1) #0 {
  %3 = alloca i32 (...)*, align 8
  %4 = alloca i32 (...)*, align 8
  %5 = alloca %struct.gcov_info*, align 8
  store i32 (...)* %0, i32 (...)** %3, align 8
  store i32 (...)* %1, i32 (...)** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.gcov_info* @kzalloc(i32 8, i32 %6)
  store %struct.gcov_info* %7, %struct.gcov_info** %5, align 8
  %8 = load %struct.gcov_info*, %struct.gcov_info** %5, align 8
  %9 = icmp ne %struct.gcov_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.gcov_info*, %struct.gcov_info** %5, align 8
  %13 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.gcov_info*, %struct.gcov_info** %5, align 8
  %16 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = call i32 @mutex_lock(i32* @gcov_lock)
  %19 = load %struct.gcov_info*, %struct.gcov_info** %5, align 8
  %20 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %20, i32* @clang_gcov_list)
  %22 = load %struct.gcov_info*, %struct.gcov_info** %5, align 8
  store %struct.gcov_info* %22, %struct.gcov_info** @current_info, align 8
  %23 = load i32 (...)*, i32 (...)** %3, align 8
  %24 = call i32 (...) %23()
  store %struct.gcov_info* null, %struct.gcov_info** @current_info, align 8
  %25 = load i64, i64* @gcov_events_enabled, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %11
  %28 = load i32, i32* @GCOV_ADD, align 4
  %29 = load %struct.gcov_info*, %struct.gcov_info** %5, align 8
  %30 = call i32 @gcov_event(i32 %28, %struct.gcov_info* %29)
  br label %31

31:                                               ; preds = %27, %11
  %32 = call i32 @mutex_unlock(i32* @gcov_lock)
  br label %33

33:                                               ; preds = %31, %10
  ret void
}

declare dso_local %struct.gcov_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @gcov_event(i32, %struct.gcov_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

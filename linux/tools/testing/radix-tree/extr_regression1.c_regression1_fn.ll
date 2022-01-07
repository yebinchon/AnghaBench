; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression1.c_regression1_fn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression1.c_regression1_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }

@worker_barrier = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i64 0, align 8
@mt_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @regression1_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @regression1_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [10 x %struct.page*], align 16
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @rcu_register_thread()
  %8 = call i64 @pthread_barrier_wait(i32* @worker_barrier)
  %9 = load i64, i64* @PTHREAD_BARRIER_SERIAL_THREAD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %56, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 1000000
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = call %struct.page* @page_alloc(i32 0)
  store %struct.page* %16, %struct.page** %4, align 8
  %17 = call i32 @xa_lock(i32* @mt_tree)
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @radix_tree_insert(i32* @mt_tree, i32 0, %struct.page* %18)
  %20 = call i32 @xa_unlock(i32* @mt_tree)
  %21 = call %struct.page* @page_alloc(i32 1)
  store %struct.page* %21, %struct.page** %4, align 8
  %22 = call i32 @xa_lock(i32* @mt_tree)
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @radix_tree_insert(i32* @mt_tree, i32 1, %struct.page* %23)
  %25 = call i32 @xa_unlock(i32* @mt_tree)
  %26 = call i32 @xa_lock(i32* @mt_tree)
  %27 = call %struct.page* @radix_tree_delete(i32* @mt_tree, i32 1)
  store %struct.page* %27, %struct.page** %4, align 8
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = call i32 @pthread_mutex_lock(i32* %29)
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  %38 = call i32 @xa_unlock(i32* @mt_tree)
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 @page_free(%struct.page* %39)
  %41 = call i32 @xa_lock(i32* @mt_tree)
  %42 = call %struct.page* @radix_tree_delete(i32* @mt_tree, i32 0)
  store %struct.page* %42, %struct.page** %4, align 8
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = call i32 @pthread_mutex_lock(i32* %44)
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = call i32 @pthread_mutex_unlock(i32* %51)
  %53 = call i32 @xa_unlock(i32* @mt_tree)
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = call i32 @page_free(%struct.page* %54)
  br label %56

56:                                               ; preds = %15
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %12

59:                                               ; preds = %12
  br label %71

60:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %67, %60
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 100000000
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = getelementptr inbounds [10 x %struct.page*], [10 x %struct.page*]* %6, i64 0, i64 0
  %66 = call i32 @find_get_pages(i32 0, i32 10, %struct.page** %65)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %61

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %59
  %72 = call i32 (...) @rcu_unregister_thread()
  ret i8* null
}

declare dso_local i32 @rcu_register_thread(...) #1

declare dso_local i64 @pthread_barrier_wait(i32*) #1

declare dso_local %struct.page* @page_alloc(i32) #1

declare dso_local i32 @xa_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.page*) #1

declare dso_local i32 @xa_unlock(i32*) #1

declare dso_local %struct.page* @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @page_free(%struct.page*) #1

declare dso_local i32 @find_get_pages(i32, i32, %struct.page**) #1

declare dso_local i32 @rcu_unregister_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

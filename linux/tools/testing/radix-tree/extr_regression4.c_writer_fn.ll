; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression4.c_writer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression4.c_writer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@worker_barrier = common dso_local global i32 0, align 4
@mt_tree = common dso_local global i32 0, align 4
@obj1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @writer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @writer_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @rcu_register_thread()
  %5 = call i32 @pthread_barrier_wait(i32* @worker_barrier)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 1000000
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = call i32 @radix_tree_insert(i32* @mt_tree, i32 1, i32* @obj1)
  %11 = call i32 @radix_tree_delete(i32* @mt_tree, i32 1)
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %6

15:                                               ; preds = %6
  %16 = call i32 (...) @rcu_unregister_thread()
  ret i8* null
}

declare dso_local i32 @rcu_register_thread(...) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @rcu_unregister_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

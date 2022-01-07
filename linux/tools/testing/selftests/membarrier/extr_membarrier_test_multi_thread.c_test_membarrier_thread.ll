; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_multi_thread.c_test_membarrier_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_multi_thread.c_test_membarrier_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_membarrier_thread_mutex = common dso_local global i32 0, align 4
@thread_ready = common dso_local global i32 0, align 4
@test_membarrier_thread_cond = common dso_local global i32 0, align 4
@thread_quit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_membarrier_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @pthread_mutex_lock(i32* @test_membarrier_thread_mutex)
  store i32 1, i32* @thread_ready, align 4
  %4 = call i32 @pthread_cond_broadcast(i32* @test_membarrier_thread_cond)
  %5 = call i32 @pthread_mutex_unlock(i32* @test_membarrier_thread_mutex)
  %6 = call i32 @pthread_mutex_lock(i32* @test_membarrier_thread_mutex)
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i32, i32* @thread_quit, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @pthread_cond_wait(i32* @test_membarrier_thread_cond, i32* @test_membarrier_thread_mutex)
  br label %7

13:                                               ; preds = %7
  %14 = call i32 @pthread_mutex_unlock(i32* @test_membarrier_thread_mutex)
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

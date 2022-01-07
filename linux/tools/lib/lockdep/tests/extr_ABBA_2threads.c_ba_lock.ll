; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/tests/extr_ABBA_2threads.c_ba_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/tests/extr_ABBA_2threads.c_ba_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = common dso_local global i32 0, align 4
@bar = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i64 0, align 8
@a = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ba_lock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 @pthread_mutex_lock(i32* @b)
  %7 = call i64 @pthread_barrier_wait(i32* @bar)
  %8 = load i64, i64* @PTHREAD_BARRIER_SERIAL_THREAD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @pthread_barrier_destroy(i32* @bar)
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 @pthread_mutex_lock(i32* @a)
  %14 = call i32 @pthread_mutex_unlock(i32* @a)
  %15 = call i32 @pthread_mutex_unlock(i32* @b)
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @pthread_barrier_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

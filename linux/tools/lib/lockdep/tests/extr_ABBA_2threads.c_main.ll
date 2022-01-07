; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/tests/extr_ABBA_2threads.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/tests/extr_ABBA_2threads.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = common dso_local global i32 0, align 4
@ba_lock = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pthread_create() failed\0A\00", align 1
@a = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i64 0, align 8
@b = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @pthread_barrier_init(i32* @bar, i32* null, i32 2)
  %4 = load i32, i32* @ba_lock, align 4
  %5 = call i64 @pthread_create(i32* %2, i32* null, i32 %4, i32* null)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %23

10:                                               ; preds = %0
  %11 = call i32 @pthread_mutex_lock(i32* @a)
  %12 = call i64 @pthread_barrier_wait(i32* @bar)
  %13 = load i64, i64* @PTHREAD_BARRIER_SERIAL_THREAD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @pthread_barrier_destroy(i32* @bar)
  br label %17

17:                                               ; preds = %15, %10
  %18 = call i32 @pthread_mutex_lock(i32* @b)
  %19 = call i32 @pthread_mutex_unlock(i32* @b)
  %20 = call i32 @pthread_mutex_unlock(i32* @a)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @pthread_join(i32 %21, i32* null)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %17, %7
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @pthread_barrier_init(i32*, i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @pthread_barrier_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

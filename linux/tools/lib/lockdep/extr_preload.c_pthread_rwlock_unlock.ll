; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_preload.c_pthread_rwlock_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_preload.c_pthread_rwlock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@_RET_IP_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_rwlock_unlock(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 (...) @init_preload()
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_2__* @__get_lock(i32* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* @_RET_IP_, align 8
  %9 = call i32 @lock_release(i32* %7, i32 0, i64 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @ll_pthread_rwlock_unlock(i32* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call %struct.TYPE_2__* @__get_lock(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* @_RET_IP_, align 8
  %19 = call i32 @lock_acquire(i32* %17, i32 0, i32 0, i32 0, i32 1, i32* null, i64 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @init_preload(...) #1

declare dso_local i32 @lock_release(i32*, i32, i64) #1

declare dso_local %struct.TYPE_2__* @__get_lock(i32*) #1

declare dso_local i32 @ll_pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @lock_acquire(i32*, i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

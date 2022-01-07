; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_find_and_get_object.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_find_and_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32 }

@kmemleak_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmemleak_object* (i64, i32)* @find_and_get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmemleak_object* @find_and_get_object(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.kmemleak_object*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @read_lock_irqsave(i32* @kmemleak_lock, i64 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.kmemleak_object* @lookup_object(i64 %10, i32 %11)
  store %struct.kmemleak_object* %12, %struct.kmemleak_object** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @read_unlock_irqrestore(i32* @kmemleak_lock, i64 %13)
  %15 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  %16 = icmp ne %struct.kmemleak_object* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  %19 = call i32 @get_object(%struct.kmemleak_object* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store %struct.kmemleak_object* null, %struct.kmemleak_object** %6, align 8
  br label %22

22:                                               ; preds = %21, %17, %2
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  ret %struct.kmemleak_object* %24
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local %struct.kmemleak_object* @lookup_object(i64, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @get_object(%struct.kmemleak_object*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

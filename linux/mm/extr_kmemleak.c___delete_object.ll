; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c___delete_object.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c___delete_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32, i32, i32 }

@OBJECT_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmemleak_object*)* @__delete_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__delete_object(%struct.kmemleak_object* %0) #0 {
  %2 = alloca %struct.kmemleak_object*, align 8
  %3 = alloca i64, align 8
  store %struct.kmemleak_object* %0, %struct.kmemleak_object** %2, align 8
  %4 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %5 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @OBJECT_ALLOCATED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %14 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %13, i32 0, i32 2
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp slt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %20 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %19, i32 0, i32 1
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @OBJECT_ALLOCATED, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %26 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %30 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %29, i32 0, i32 1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %34 = call i32 @put_object(%struct.kmemleak_object* %33)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

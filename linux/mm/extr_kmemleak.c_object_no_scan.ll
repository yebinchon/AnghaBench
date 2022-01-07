; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_object_no_scan.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_object_no_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Not scanning unknown object at 0x%08lx\0A\00", align 1
@OBJECT_NO_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @object_no_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @object_no_scan(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.kmemleak_object*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.kmemleak_object* @find_and_get_object(i64 %5, i32 0)
  store %struct.kmemleak_object* %6, %struct.kmemleak_object** %4, align 8
  %7 = load %struct.kmemleak_object*, %struct.kmemleak_object** %4, align 8
  %8 = icmp ne %struct.kmemleak_object* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @kmemleak_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %10)
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.kmemleak_object*, %struct.kmemleak_object** %4, align 8
  %14 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %13, i32 0, i32 0
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @OBJECT_NO_SCAN, align 4
  %18 = load %struct.kmemleak_object*, %struct.kmemleak_object** %4, align 8
  %19 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.kmemleak_object*, %struct.kmemleak_object** %4, align 8
  %23 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %22, i32 0, i32 0
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.kmemleak_object*, %struct.kmemleak_object** %4, align 8
  %27 = call i32 @put_object(%struct.kmemleak_object* %26)
  br label %28

28:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.kmemleak_object* @find_and_get_object(i64, i32) #1

declare dso_local i32 @kmemleak_warn(i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_memory_bm_test_bit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_memory_bm_test_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_bitmap*, i64)* @memory_bm_test_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_bm_test_bit(%struct.memory_bitmap* %0, i64 %1) #0 {
  %3 = alloca %struct.memory_bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @memory_bm_find_bit(%struct.memory_bitmap* %8, i64 %9, i8** %5, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @test_bit(i32 %13, i8* %14)
  ret i32 %15
}

declare dso_local i32 @memory_bm_find_bit(%struct.memory_bitmap*, i64, i8**, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

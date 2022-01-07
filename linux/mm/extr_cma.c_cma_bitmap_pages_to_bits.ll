; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cma.c_cma_bitmap_pages_to_bits.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cma.c_cma_bitmap_pages_to_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cma*, i64)* @cma_bitmap_pages_to_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cma_bitmap_pages_to_bits(%struct.cma* %0, i64 %1) #0 {
  %3 = alloca %struct.cma*, align 8
  %4 = alloca i64, align 8
  store %struct.cma* %0, %struct.cma** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.cma*, %struct.cma** %3, align 8
  %7 = getelementptr inbounds %struct.cma, %struct.cma* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  %10 = call i64 @ALIGN(i64 %5, i64 %9)
  %11 = load %struct.cma*, %struct.cma** %3, align 8
  %12 = getelementptr inbounds %struct.cma, %struct.cma* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = lshr i64 %10, %13
  ret i64 %14
}

declare dso_local i64 @ALIGN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_handle_to_buddy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_handle_to_buddy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i64 }

@PAGE_HEADLESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@BUDDY_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @handle_to_buddy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_to_buddy(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.z3fold_header*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @PAGE_HEADLESS, align 4
  %7 = shl i32 1, %6
  %8 = sext i32 %7 to i64
  %9 = and i64 %5, %8
  %10 = call i32 @WARN_ON(i64 %9)
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @PAGE_MASK, align 8
  %16 = and i64 %14, %15
  %17 = inttoptr i64 %16 to %struct.z3fold_header*
  store %struct.z3fold_header* %17, %struct.z3fold_header** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %20 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  %23 = load i64, i64* @BUDDY_MASK, align 8
  %24 = and i64 %22, %23
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

declare dso_local i32 @WARN_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

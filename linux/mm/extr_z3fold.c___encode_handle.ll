; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c___encode_handle.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c___encode_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i64 }
%struct.z3fold_buddy_slots = type { i64* }

@HEADLESS = common dso_local global i32 0, align 4
@PAGE_HEADLESS = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@BUDDY_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.z3fold_header*, %struct.z3fold_buddy_slots*, i32)* @__encode_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__encode_handle(%struct.z3fold_header* %0, %struct.z3fold_buddy_slots* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.z3fold_header*, align 8
  %6 = alloca %struct.z3fold_buddy_slots*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.z3fold_header* %0, %struct.z3fold_header** %5, align 8
  store %struct.z3fold_buddy_slots* %1, %struct.z3fold_buddy_slots** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %11 = ptrtoint %struct.z3fold_header* %10 to i64
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @HEADLESS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @PAGE_HEADLESS, align 4
  %18 = shl i32 1, %17
  %19 = sext i32 %18 to i64
  %20 = or i64 %16, %19
  store i64 %20, i64* %4, align 8
  br label %55

21:                                               ; preds = %3
  %22 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @__idx(%struct.z3fold_header* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LAST, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %34 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BUDDY_SHIFT, align 8
  %37 = shl i64 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %32, %21
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.z3fold_buddy_slots*, %struct.z3fold_buddy_slots** %6, align 8
  %43 = getelementptr inbounds %struct.z3fold_buddy_slots, %struct.z3fold_buddy_slots* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  %48 = load %struct.z3fold_buddy_slots*, %struct.z3fold_buddy_slots** %6, align 8
  %49 = getelementptr inbounds %struct.z3fold_buddy_slots, %struct.z3fold_buddy_slots* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = ptrtoint i64* %53 to i64
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %40, %15
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @__idx(%struct.z3fold_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

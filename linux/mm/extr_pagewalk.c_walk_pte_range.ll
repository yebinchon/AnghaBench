; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_pagewalk.c_walk_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_pagewalk.c_walk_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { %struct.mm_walk_ops* }
%struct.mm_walk_ops = type { i32 (i32*, i64, i64, %struct.mm_walk.0*)* }
%struct.mm_walk.0 = type opaque

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.mm_walk*)* @walk_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_pte_range(i32* %0, i64 %1, i64 %2, %struct.mm_walk* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_walk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_walk_ops*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mm_walk* %3, %struct.mm_walk** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %13 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %12, i32 0, i32 0
  %14 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %13, align 8
  store %struct.mm_walk_ops* %14, %struct.mm_walk_ops** %11, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @pte_offset_map(i32* %15, i64 %16)
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %41, %4
  %19 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %11, align 8
  %20 = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %19, i32 0, i32 0
  %21 = load i32 (i32*, i64, i64, %struct.mm_walk.0*)*, i32 (i32*, i64, i64, %struct.mm_walk.0*)** %20, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = add i64 %24, %25
  %27 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %28 = bitcast %struct.mm_walk* %27 to %struct.mm_walk.0*
  %29 = call i32 %21(i32* %22, i64 %23, i64 %26, %struct.mm_walk.0* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %44

33:                                               ; preds = %18
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %44

41:                                               ; preds = %33
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  br label %18

44:                                               ; preds = %40, %32
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @pte_unmap(i32* %45)
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_free_handle.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_free_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_buddy_slots = type { i64* }
%struct.z3fold_pool = type { i32 }

@PAGE_HEADLESS = common dso_local global i32 0, align 4
@BUDDY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @free_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_handle(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.z3fold_buddy_slots*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z3fold_pool*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i32, i32* @PAGE_HEADLESS, align 4
  %9 = shl i32 1, %8
  %10 = sext i32 %9 to i64
  %11 = and i64 %7, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %54

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i64, i64* %2, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %2, align 8
  %24 = call %struct.z3fold_buddy_slots* @handle_to_slots(i64 %23)
  store %struct.z3fold_buddy_slots* %24, %struct.z3fold_buddy_slots** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %40, %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BUDDY_MASK, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.z3fold_buddy_slots*, %struct.z3fold_buddy_slots** %3, align 8
  %31 = getelementptr inbounds %struct.z3fold_buddy_slots, %struct.z3fold_buddy_slots* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %25

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.z3fold_buddy_slots*, %struct.z3fold_buddy_slots** %3, align 8
  %48 = call %struct.z3fold_pool* @slots_to_pool(%struct.z3fold_buddy_slots* %47)
  store %struct.z3fold_pool* %48, %struct.z3fold_pool** %6, align 8
  %49 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %50 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.z3fold_buddy_slots*, %struct.z3fold_buddy_slots** %3, align 8
  %53 = call i32 @kmem_cache_free(i32 %51, %struct.z3fold_buddy_slots* %52)
  br label %54

54:                                               ; preds = %13, %46, %43
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.z3fold_buddy_slots* @handle_to_slots(i64) #1

declare dso_local %struct.z3fold_pool* @slots_to_pool(%struct.z3fold_buddy_slots*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.z3fold_buddy_slots*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

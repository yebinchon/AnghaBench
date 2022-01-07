; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_create_basic_memory_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_create_basic_memory_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }

@forbidden_pages_map = common dso_local global %struct.memory_bitmap* null, align 8
@free_pages_map = common dso_local global %struct.memory_bitmap* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Basic memory bitmaps created\0A\00", align 1
@PG_UNSAFE_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_basic_memory_bitmaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.memory_bitmap*, align 8
  %3 = alloca %struct.memory_bitmap*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.memory_bitmap*, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %6 = icmp ne %struct.memory_bitmap* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.memory_bitmap*, %struct.memory_bitmap** @free_pages_map, align 8
  %9 = icmp ne %struct.memory_bitmap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %69

11:                                               ; preds = %7, %0
  %12 = load %struct.memory_bitmap*, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %13 = icmp ne %struct.memory_bitmap* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.memory_bitmap*, %struct.memory_bitmap** @free_pages_map, align 8
  %16 = icmp ne %struct.memory_bitmap* %15, null
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ true, %11 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.memory_bitmap* @kzalloc(i32 4, i32 %22)
  store %struct.memory_bitmap* %23, %struct.memory_bitmap** %2, align 8
  %24 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %25 = icmp ne %struct.memory_bitmap* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %69

29:                                               ; preds = %21
  %30 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @PG_ANY, align 4
  %33 = call i32 @memory_bm_create(%struct.memory_bitmap* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %64

37:                                               ; preds = %29
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.memory_bitmap* @kzalloc(i32 4, i32 %38)
  store %struct.memory_bitmap* %39, %struct.memory_bitmap** %3, align 8
  %40 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %41 = icmp ne %struct.memory_bitmap* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %60

43:                                               ; preds = %37
  %44 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load i32, i32* @PG_ANY, align 4
  %47 = call i32 @memory_bm_create(%struct.memory_bitmap* %44, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %57

51:                                               ; preds = %43
  %52 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  store %struct.memory_bitmap* %52, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %53 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  store %struct.memory_bitmap* %53, %struct.memory_bitmap** @free_pages_map, align 8
  %54 = load %struct.memory_bitmap*, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %55 = call i32 @mark_nosave_pages(%struct.memory_bitmap* %54)
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %69

57:                                               ; preds = %50
  %58 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %59 = call i32 @kfree(%struct.memory_bitmap* %58)
  br label %60

60:                                               ; preds = %57, %42
  %61 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %62 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %63 = call i32 @memory_bm_free(%struct.memory_bitmap* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %36
  %65 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %66 = call i32 @kfree(%struct.memory_bitmap* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %64, %51, %26, %10
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.memory_bitmap* @kzalloc(i32, i32) #1

declare dso_local i32 @memory_bm_create(%struct.memory_bitmap*, i32, i32) #1

declare dso_local i32 @mark_nosave_pages(%struct.memory_bitmap*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kfree(%struct.memory_bitmap*) #1

declare dso_local i32 @memory_bm_free(%struct.memory_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_dup_mm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_dup_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mm_struct* (%struct.task_struct*, %struct.mm_struct*)* @dup_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mm_struct* @dup_mm(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  %8 = call %struct.mm_struct* (...) @allocate_mm()
  store %struct.mm_struct* %8, %struct.mm_struct** %6, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %10 = icmp ne %struct.mm_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = call i32 @memcpy(%struct.mm_struct* %13, %struct.mm_struct* %14, i32 24)
  %16 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mm_init(%struct.mm_struct* %16, %struct.task_struct* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %63

24:                                               ; preds = %12
  %25 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = call i32 @dup_mmap(%struct.mm_struct* %25, %struct.mm_struct* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %56

31:                                               ; preds = %24
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = call i32 @get_mm_rss(%struct.mm_struct* %32)
  %34 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %31
  %46 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @try_module_get(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %56

54:                                               ; preds = %45, %31
  %55 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  store %struct.mm_struct* %55, %struct.mm_struct** %3, align 8
  br label %64

56:                                               ; preds = %53, %30
  %57 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %58 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %57, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %58, align 8
  %59 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %60 = call i32 @mm_init_owner(%struct.mm_struct* %59, i32* null)
  %61 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %62 = call i32 @mmput(%struct.mm_struct* %61)
  br label %63

63:                                               ; preds = %56, %23, %11
  store %struct.mm_struct* null, %struct.mm_struct** %3, align 8
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  ret %struct.mm_struct* %65
}

declare dso_local %struct.mm_struct* @allocate_mm(...) #1

declare dso_local i32 @memcpy(%struct.mm_struct*, %struct.mm_struct*, i32) #1

declare dso_local i32 @mm_init(%struct.mm_struct*, %struct.task_struct*, i32) #1

declare dso_local i32 @dup_mmap(%struct.mm_struct*, %struct.mm_struct*) #1

declare dso_local i32 @get_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mm_init_owner(%struct.mm_struct*, i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

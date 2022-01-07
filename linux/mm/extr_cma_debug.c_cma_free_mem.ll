; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cma_debug.c_cma_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cma_debug.c_cma_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma = type { i64 }
%struct.cma_mem = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"cma: cannot release partial block when order_per_bit != 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma*, i32)* @cma_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_free_mem(%struct.cma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cma_mem*, align 8
  store %struct.cma* %0, %struct.cma** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cma_mem* null, %struct.cma_mem** %6, align 8
  br label %7

7:                                                ; preds = %69, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %7
  %11 = load %struct.cma*, %struct.cma** %4, align 8
  %12 = call %struct.cma_mem* @cma_get_entry_from_list(%struct.cma* %11)
  store %struct.cma_mem* %12, %struct.cma_mem** %6, align 8
  %13 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %14 = icmp eq %struct.cma_mem* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %71

16:                                               ; preds = %10
  %17 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %18 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.cma*, %struct.cma** %4, align 8
  %24 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %25 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %28 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cma_release(%struct.cma* %23, i32 %26, i32 %29)
  %31 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %32 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %37 = call i32 @kfree(%struct.cma_mem* %36)
  br label %69

38:                                               ; preds = %16
  %39 = load %struct.cma*, %struct.cma** %4, align 8
  %40 = getelementptr inbounds %struct.cma, %struct.cma* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.cma*, %struct.cma** %4, align 8
  %45 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %46 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @cma_release(%struct.cma* %44, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %52 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %57 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  store i32 0, i32* %5, align 4
  %60 = load %struct.cma*, %struct.cma** %4, align 8
  %61 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %62 = call i32 @cma_add_to_cma_mem_list(%struct.cma* %60, %struct.cma_mem* %61)
  br label %68

63:                                               ; preds = %38
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.cma*, %struct.cma** %4, align 8
  %66 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %67 = call i32 @cma_add_to_cma_mem_list(%struct.cma* %65, %struct.cma_mem* %66)
  br label %70

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %22
  br label %7

70:                                               ; preds = %63, %7
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.cma_mem* @cma_get_entry_from_list(%struct.cma*) #1

declare dso_local i32 @cma_release(%struct.cma*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cma_mem*) #1

declare dso_local i32 @cma_add_to_cma_mem_list(%struct.cma*, %struct.cma_mem*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

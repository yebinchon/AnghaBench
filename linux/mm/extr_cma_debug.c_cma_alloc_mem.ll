; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cma_debug.c_cma_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cma_debug.c_cma_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma = type { i32 }
%struct.cma_mem = type { i32, %struct.page* }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma*, i32)* @cma_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_alloc_mem(%struct.cma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cma_mem*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.cma* %0, %struct.cma** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cma_mem* @kzalloc(i32 16, i32 %8)
  store %struct.cma_mem* %9, %struct.cma_mem** %6, align 8
  %10 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %11 = icmp ne %struct.cma_mem* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.cma*, %struct.cma** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.page* @cma_alloc(%struct.cma* %16, i32 %17, i32 0, i32 0)
  store %struct.page* %18, %struct.page** %7, align 8
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %23 = call i32 @kfree(%struct.cma_mem* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %15
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %29 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %28, i32 0, i32 1
  store %struct.page* %27, %struct.page** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %32 = getelementptr inbounds %struct.cma_mem, %struct.cma_mem* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cma*, %struct.cma** %4, align 8
  %34 = load %struct.cma_mem*, %struct.cma_mem** %6, align 8
  %35 = call i32 @cma_add_to_cma_mem_list(%struct.cma* %33, %struct.cma_mem* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %21, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.cma_mem* @kzalloc(i32, i32) #1

declare dso_local %struct.page* @cma_alloc(%struct.cma*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.cma_mem*) #1

declare dso_local i32 @cma_add_to_cma_mem_list(%struct.cma*, %struct.cma_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

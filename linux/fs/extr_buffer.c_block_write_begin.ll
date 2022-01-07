; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_write_begin(%struct.address_space* %0, i32 %1, i32 %2, i32 %3, %struct.page** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.page** %4, %struct.page*** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load %struct.address_space*, %struct.address_space** %8, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %20, i32 %21, i32 %22)
  store %struct.page* %23, %struct.page** %15, align 8
  %24 = load %struct.page*, %struct.page** %15, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %47

29:                                               ; preds = %6
  %30 = load %struct.page*, %struct.page** %15, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @__block_write_begin(%struct.page* %30, i32 %31, i32 %32, i32* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.page*, %struct.page** %15, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %15, align 8
  %42 = call i32 @put_page(%struct.page* %41)
  store %struct.page* null, %struct.page** %15, align 8
  br label %43

43:                                               ; preds = %38, %29
  %44 = load %struct.page*, %struct.page** %15, align 8
  %45 = load %struct.page**, %struct.page*** %12, align 8
  store %struct.page* %44, %struct.page** %45, align 8
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %26
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

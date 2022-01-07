; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = load %struct.address_space*, %struct.address_space** %10, align 8
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %22, i32 %23, i32 %24)
  store %struct.page* %25, %struct.page** %16, align 8
  %26 = load %struct.page*, %struct.page** %16, align 8
  %27 = icmp ne %struct.page* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %54

31:                                               ; preds = %7
  %32 = load %struct.page*, %struct.page** %16, align 8
  %33 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %32, %struct.page** %33, align 8
  %34 = load %struct.page*, %struct.page** %16, align 8
  %35 = call i32 @PageUptodate(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sub i32 %43, 1
  %45 = and i32 %42, %44
  store i32 %45, i32* %18, align 4
  %46 = load %struct.page*, %struct.page** %16, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @zero_user_segments(%struct.page* %46, i32 0, i32 %47, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %37, %31
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user_segments(%struct.page*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

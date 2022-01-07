; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_prepare_image.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_prepare_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }
%struct.linked_page = type { i8* }

@buffer = common dso_local global i32* null, align 8
@PG_UNSAFE_CLEAR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PG_SAFE = common dso_local global i32 0, align 4
@PG_UNSAFE_KEEP = common dso_local global i32 0, align 4
@nr_copy_pages = common dso_local global i32 0, align 4
@allocated_unsafe_pages = common dso_local global i32 0, align 4
@PBES_PER_LINKED_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@safe_pages_list = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_bitmap*, %struct.memory_bitmap*)* @prepare_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_image(%struct.memory_bitmap* %0, %struct.memory_bitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memory_bitmap*, align 8
  %5 = alloca %struct.memory_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linked_page*, align 8
  %9 = alloca i32, align 4
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %4, align 8
  store %struct.memory_bitmap* %1, %struct.memory_bitmap** %5, align 8
  %10 = load i32*, i32** @buffer, align 8
  %11 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %12 = call i32 @free_image_page(i32* %10, i32 %11)
  store i32* null, i32** @buffer, align 8
  %13 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %14 = call i32 @count_highmem_image_pages(%struct.memory_bitmap* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %16 = call i32 @mark_unsafe_pages(%struct.memory_bitmap* %15)
  %17 = load %struct.memory_bitmap*, %struct.memory_bitmap** %4, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = load i32, i32* @PG_SAFE, align 4
  %20 = call i32 @memory_bm_create(%struct.memory_bitmap* %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %108

24:                                               ; preds = %2
  %25 = load %struct.memory_bitmap*, %struct.memory_bitmap** %4, align 8
  %26 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %27 = call i32 @duplicate_memory_bitmap(%struct.memory_bitmap* %25, %struct.memory_bitmap* %26)
  %28 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %29 = load i32, i32* @PG_UNSAFE_KEEP, align 4
  %30 = call i32 @memory_bm_free(%struct.memory_bitmap* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %35 = call i32 @prepare_highmem_image(%struct.memory_bitmap* %34, i32* %7)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %108

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* @nr_copy_pages, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 %41, %42
  %44 = load i32, i32* @allocated_unsafe_pages, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PBES_PER_LINKED_PAGE, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %61, %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = load i32, i32* @PG_SAFE, align 4
  %55 = call %struct.linked_page* @get_image_page(i32 %53, i32 %54)
  store %struct.linked_page* %55, %struct.linked_page** %8, align 8
  %56 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %57 = icmp ne %struct.linked_page* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %108

61:                                               ; preds = %52
  %62 = load i8*, i8** @safe_pages_list, align 8
  %63 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %64 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %66 = bitcast %struct.linked_page* %65 to i8*
  store i8* %66, i8** @safe_pages_list, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %6, align 4
  br label %49

69:                                               ; preds = %49
  %70 = load i32, i32* @nr_copy_pages, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub i32 %70, %71
  %73 = load i32, i32* @allocated_unsafe_pages, align 4
  %74 = sub i32 %72, %73
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %98, %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp ugt i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %75
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call i64 @get_zeroed_page(i32 %79)
  %81 = inttoptr i64 %80 to %struct.linked_page*
  store %struct.linked_page* %81, %struct.linked_page** %8, align 8
  %82 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %83 = icmp ne %struct.linked_page* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %108

87:                                               ; preds = %78
  %88 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %89 = call i32 @virt_to_page(%struct.linked_page* %88)
  %90 = call i32 @swsusp_page_is_free(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** @safe_pages_list, align 8
  %94 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %95 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %97 = bitcast %struct.linked_page* %96 to i8*
  store i8* %97, i8** @safe_pages_list, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %100 = call i32 @virt_to_page(%struct.linked_page* %99)
  %101 = call i32 @swsusp_set_page_forbidden(i32 %100)
  %102 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %103 = call i32 @virt_to_page(%struct.linked_page* %102)
  %104 = call i32 @swsusp_set_page_free(i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, -1
  store i32 %106, i32* %6, align 4
  br label %75

107:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %111

108:                                              ; preds = %84, %58, %38, %23
  %109 = call i32 (...) @swsusp_free()
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %107
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @free_image_page(i32*, i32) #1

declare dso_local i32 @count_highmem_image_pages(%struct.memory_bitmap*) #1

declare dso_local i32 @mark_unsafe_pages(%struct.memory_bitmap*) #1

declare dso_local i32 @memory_bm_create(%struct.memory_bitmap*, i32, i32) #1

declare dso_local i32 @duplicate_memory_bitmap(%struct.memory_bitmap*, %struct.memory_bitmap*) #1

declare dso_local i32 @memory_bm_free(%struct.memory_bitmap*, i32) #1

declare dso_local i32 @prepare_highmem_image(%struct.memory_bitmap*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.linked_page* @get_image_page(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @swsusp_page_is_free(i32) #1

declare dso_local i32 @virt_to_page(%struct.linked_page*) #1

declare dso_local i32 @swsusp_set_page_forbidden(i32) #1

declare dso_local i32 @swsusp_set_page_free(i32) #1

declare dso_local i32 @swsusp_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_read_next.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_read_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot_handle = type { i64, i8* }
%struct.page = type { i32 }
%struct.swsusp_info = type { i32 }

@nr_meta_pages = common dso_local global i64 0, align 8
@nr_copy_pages = common dso_local global i64 0, align 8
@buffer = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PG_ANY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@orig_bm = common dso_local global i32 0, align 4
@copy_bm = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_read_next(%struct.snapshot_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snapshot_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  store %struct.snapshot_handle* %0, %struct.snapshot_handle** %3, align 8
  %7 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %8 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @nr_meta_pages, align 8
  %11 = load i64, i64* @nr_copy_pages, align 8
  %12 = add nsw i64 %10, %11
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load i8*, i8** @buffer, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = load i32, i32* @PG_ANY, align 4
  %21 = call i8* @get_image_page(i32 %19, i32 %20)
  store i8* %21, i8** @buffer, align 8
  %22 = load i8*, i8** @buffer, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %88

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %30 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** @buffer, align 8
  %35 = bitcast i8* %34 to %struct.swsusp_info*
  %36 = call i32 @init_header(%struct.swsusp_info* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %88

41:                                               ; preds = %33
  %42 = load i8*, i8** @buffer, align 8
  %43 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %44 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = call i32 @memory_bm_position_reset(i32* @orig_bm)
  %46 = call i32 @memory_bm_position_reset(i32* @copy_bm)
  br label %82

47:                                               ; preds = %28
  %48 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %49 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @nr_meta_pages, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8*, i8** @buffer, align 8
  %55 = call i32 @clear_page(i8* %54)
  %56 = load i8*, i8** @buffer, align 8
  %57 = call i32 @pack_pfns(i8* %56, i32* @orig_bm)
  br label %81

58:                                               ; preds = %47
  %59 = call i32 @memory_bm_next_pfn(i32* @copy_bm)
  %60 = call %struct.page* @pfn_to_page(i32 %59)
  store %struct.page* %60, %struct.page** %5, align 8
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i64 @PageHighMem(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i8* @kmap_atomic(%struct.page* %65)
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** @buffer, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @copy_page(i8* %67, i8* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @kunmap_atomic(i8* %70)
  %72 = load i8*, i8** @buffer, align 8
  %73 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %74 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %80

75:                                               ; preds = %58
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i8* @page_address(%struct.page* %76)
  %78 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %79 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %64
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %41
  %83 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %84 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %39, %24, %14
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i8* @get_image_page(i32, i32) #1

declare dso_local i32 @init_header(%struct.swsusp_info*) #1

declare dso_local i32 @memory_bm_position_reset(i32*) #1

declare dso_local i32 @clear_page(i8*) #1

declare dso_local i32 @pack_pfns(i8*, i32*) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @memory_bm_next_pfn(i32*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

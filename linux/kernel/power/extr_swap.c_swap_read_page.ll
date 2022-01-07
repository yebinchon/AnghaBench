; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swap_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swap_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i64, %struct.swap_map_page_list*, %struct.TYPE_2__* }
%struct.swap_map_page_list = type { %struct.TYPE_2__*, %struct.swap_map_page_list* }
%struct.TYPE_2__ = type { i32* }
%struct.hib_bio_batch = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@MAP_PAGE_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*, i8*, %struct.hib_bio_batch*)* @swap_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_read_page(%struct.swap_map_handle* %0, i8* %1, %struct.hib_bio_batch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.swap_map_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hib_bio_batch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.swap_map_page_list*, align 8
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hib_bio_batch* %2, %struct.hib_bio_batch** %7, align 8
  %11 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %12 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %20 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %25 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %91

34:                                               ; preds = %18
  %35 = load i32, i32* @REQ_OP_READ, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %7, align 8
  %39 = call i32 @hib_submit_io(i32 %35, i32 0, i32 %36, i8* %37, %struct.hib_bio_batch* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %91

44:                                               ; preds = %34
  %45 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %46 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* @MAP_PAGE_ENTRIES, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %44
  %52 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %53 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %55 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %54, i32 0, i32 1
  %56 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %55, align 8
  %57 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = ptrtoint %struct.TYPE_2__* %58 to i64
  %60 = call i32 @free_page(i64 %59)
  %61 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %62 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %61, i32 0, i32 1
  %63 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %62, align 8
  store %struct.swap_map_page_list* %63, %struct.swap_map_page_list** %10, align 8
  %64 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %65 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %64, i32 0, i32 1
  %66 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %65, align 8
  %67 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %66, i32 0, i32 1
  %68 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %67, align 8
  %69 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %70 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %69, i32 0, i32 1
  store %struct.swap_map_page_list* %68, %struct.swap_map_page_list** %70, align 8
  %71 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %10, align 8
  %72 = call i32 @kfree(%struct.swap_map_page_list* %71)
  %73 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %74 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %73, i32 0, i32 1
  %75 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %74, align 8
  %76 = icmp ne %struct.swap_map_page_list* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %51
  %78 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %79 = call i32 @release_swap_reader(%struct.swap_map_handle* %78)
  br label %88

80:                                               ; preds = %51
  %81 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %82 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %81, i32 0, i32 1
  %83 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %82, align 8
  %84 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.swap_map_handle*, %struct.swap_map_handle** %5, align 8
  %87 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %86, i32 0, i32 2
  store %struct.TYPE_2__* %85, %struct.TYPE_2__** %87, align 8
  br label %88

88:                                               ; preds = %80, %77
  br label %89

89:                                               ; preds = %88, %44
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %42, %31, %15
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @hib_submit_io(i32, i32, i32, i8*, %struct.hib_bio_batch*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.swap_map_page_list*) #1

declare dso_local i32 @release_swap_reader(%struct.swap_map_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

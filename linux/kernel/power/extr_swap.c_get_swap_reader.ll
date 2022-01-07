; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_get_swap_reader.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_get_swap_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.swap_map_handle = type { %struct.swap_map_page_list*, %struct.swap_map_page*, i64 }
%struct.swap_map_page_list = type { %struct.swap_map_page*, %struct.swap_map_page_list* }
%struct.swap_map_page = type { i64 }

@swsusp_header = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*, i32*)* @get_swap_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_swap_reader(%struct.swap_map_handle* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_map_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swap_map_page_list*, align 8
  %8 = alloca %struct.swap_map_page_list*, align 8
  %9 = alloca i64, align 8
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @swsusp_header, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @swsusp_header, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %23 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %22, i32 0, i32 1
  store %struct.swap_map_page* null, %struct.swap_map_page** %23, align 8
  %24 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %25 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %24, i32 0, i32 0
  store %struct.swap_map_page_list* null, %struct.swap_map_page_list** %25, align 8
  store %struct.swap_map_page_list* null, %struct.swap_map_page_list** %8, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @swsusp_header, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %89, %21
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %29
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.swap_map_page_list* @kzalloc(i32 16, i32 %33)
  store %struct.swap_map_page_list* %34, %struct.swap_map_page_list** %7, align 8
  %35 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  %36 = icmp ne %struct.swap_map_page_list* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %39 = call i32 @release_swap_reader(%struct.swap_map_handle* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %105

42:                                               ; preds = %32
  %43 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %44 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %43, i32 0, i32 0
  %45 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %44, align 8
  %46 = icmp ne %struct.swap_map_page_list* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  %49 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %50 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %49, i32 0, i32 0
  store %struct.swap_map_page_list* %48, %struct.swap_map_page_list** %50, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %8, align 8
  %53 = icmp ne %struct.swap_map_page_list* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  %56 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %8, align 8
  %57 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %56, i32 0, i32 1
  store %struct.swap_map_page_list* %55, %struct.swap_map_page_list** %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  store %struct.swap_map_page_list* %59, %struct.swap_map_page_list** %8, align 8
  %60 = load i32, i32* @GFP_NOIO, align 4
  %61 = load i32, i32* @__GFP_HIGH, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @__get_free_page(i32 %62)
  %64 = inttoptr i64 %63 to %struct.swap_map_page*
  %65 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  %66 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %65, i32 0, i32 0
  store %struct.swap_map_page* %64, %struct.swap_map_page** %66, align 8
  %67 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  %68 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %67, i32 0, i32 0
  %69 = load %struct.swap_map_page*, %struct.swap_map_page** %68, align 8
  %70 = icmp ne %struct.swap_map_page* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %58
  %72 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %73 = call i32 @release_swap_reader(%struct.swap_map_handle* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %105

76:                                               ; preds = %58
  %77 = load i32, i32* @REQ_OP_READ, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  %80 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %79, i32 0, i32 0
  %81 = load %struct.swap_map_page*, %struct.swap_map_page** %80, align 8
  %82 = call i32 @hib_submit_io(i32 %77, i32 0, i64 %78, %struct.swap_map_page* %81, i32* null)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %87 = call i32 @release_swap_reader(%struct.swap_map_handle* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %105

89:                                               ; preds = %76
  %90 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %7, align 8
  %91 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %90, i32 0, i32 0
  %92 = load %struct.swap_map_page*, %struct.swap_map_page** %91, align 8
  %93 = getelementptr inbounds %struct.swap_map_page, %struct.swap_map_page* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %9, align 8
  br label %29

95:                                               ; preds = %29
  %96 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %97 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %99 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %98, i32 0, i32 0
  %100 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %99, align 8
  %101 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %100, i32 0, i32 0
  %102 = load %struct.swap_map_page*, %struct.swap_map_page** %101, align 8
  %103 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %104 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %103, i32 0, i32 1
  store %struct.swap_map_page* %102, %struct.swap_map_page** %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %95, %85, %71, %37, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.swap_map_page_list* @kzalloc(i32, i32) #1

declare dso_local i32 @release_swap_reader(%struct.swap_map_handle*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @hib_submit_io(i32, i32, i64, %struct.swap_map_page*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

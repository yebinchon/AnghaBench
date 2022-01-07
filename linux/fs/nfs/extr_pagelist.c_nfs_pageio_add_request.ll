; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i64, i64, i64 }
%struct.nfs_page = type { i32, i32, i32, %struct.nfs_page*, %struct.nfs_page* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_page*, align 8
  %11 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  %12 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %22 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %23 = call i32 @nfs_pageio_setup_mirroring(%struct.nfs_pageio_descriptor* %21, %struct.nfs_page* %22)
  %24 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %106

29:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %93, %29
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %33 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %96

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %41 = call i32 @nfs_page_group_lock(%struct.nfs_page* %40)
  %42 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %42, i32 0, i32 4
  %44 = load %struct.nfs_page*, %struct.nfs_page** %43, align 8
  store %struct.nfs_page* %44, %struct.nfs_page** %11, align 8
  br label %45

45:                                               ; preds = %54, %39
  %46 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %47 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %46, i32 0, i32 3
  %48 = load %struct.nfs_page*, %struct.nfs_page** %47, align 8
  %49 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %50 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %49, i32 0, i32 4
  %51 = load %struct.nfs_page*, %struct.nfs_page** %50, align 8
  %52 = icmp ne %struct.nfs_page* %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %56 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %55, i32 0, i32 3
  %57 = load %struct.nfs_page*, %struct.nfs_page** %56, align 8
  store %struct.nfs_page* %57, %struct.nfs_page** %11, align 8
  br label %45

58:                                               ; preds = %45
  %59 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %60 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.nfs_page* @nfs_create_subreq(%struct.nfs_page* %59, %struct.nfs_page* %60, i32 %61, i32 %62, i32 %63)
  store %struct.nfs_page* %64, %struct.nfs_page** %10, align 8
  %65 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %66 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %65)
  %67 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %68 = call i64 @IS_ERR(%struct.nfs_page* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %72 = call i64 @PTR_ERR(%struct.nfs_page* %71)
  %73 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %74 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %106

75:                                               ; preds = %58
  br label %78

76:                                               ; preds = %36
  %77 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %77, %struct.nfs_page** %10, align 8
  br label %78

78:                                               ; preds = %76, %75
  %79 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %80 = call i64 @nfs_pgio_has_mirroring(%struct.nfs_pageio_descriptor* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %85 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %88 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %89 = call i32 @nfs_pageio_add_request_mirror(%struct.nfs_pageio_descriptor* %87, %struct.nfs_page* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %6, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %6, align 8
  br label %30

96:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %109

97:                                               ; preds = %91
  %98 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %99 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %100 = icmp ne %struct.nfs_page* %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %103 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %104 = call i32 @nfs_pageio_cleanup_request(%struct.nfs_pageio_descriptor* %102, %struct.nfs_page* %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %70, %28
  %107 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %108 = call i32 @nfs_pageio_error_cleanup(%struct.nfs_pageio_descriptor* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %96
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @nfs_pageio_setup_mirroring(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_page_group_lock(%struct.nfs_page*) #1

declare dso_local %struct.nfs_page* @nfs_create_subreq(%struct.nfs_page*, %struct.nfs_page*, i32, i32, i32) #1

declare dso_local i32 @nfs_page_group_unlock(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i64 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i64 @nfs_pgio_has_mirroring(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_pageio_add_request_mirror(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_pageio_cleanup_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_pageio_error_cleanup(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

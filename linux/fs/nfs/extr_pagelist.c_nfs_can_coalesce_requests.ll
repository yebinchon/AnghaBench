; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_can_coalesce_requests.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_can_coalesce_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i64, i64, i64, i32 }
%struct.nfs_pageio_descriptor = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)* }
%struct.file_lock_context = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.file_lock_context* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_page*, %struct.nfs_page*, %struct.nfs_pageio_descriptor*)* @nfs_can_coalesce_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_can_coalesce_requests(%struct.nfs_page* %0, %struct.nfs_page* %1, %struct.nfs_pageio_descriptor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_pageio_descriptor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file_lock_context*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %6, align 8
  store %struct.nfs_pageio_descriptor* %2, %struct.nfs_pageio_descriptor** %7, align 8
  %10 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %11 = icmp ne %struct.nfs_page* %10, null
  br i1 %11, label %12, label %101

12:                                               ; preds = %3
  %13 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %14 = call %struct.TYPE_7__* @nfs_req_openctx(%struct.nfs_page* %13)
  %15 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %16 = call %struct.TYPE_7__* @nfs_req_openctx(%struct.nfs_page* %15)
  %17 = call i32 @nfs_match_open_context(%struct.TYPE_7__* %14, %struct.TYPE_7__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %134

20:                                               ; preds = %12
  %21 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %22 = call %struct.TYPE_7__* @nfs_req_openctx(%struct.nfs_page* %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_8__* @d_inode(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.file_lock_context*, %struct.file_lock_context** %26, align 8
  store %struct.file_lock_context* %27, %struct.file_lock_context** %9, align 8
  %28 = load %struct.file_lock_context*, %struct.file_lock_context** %9, align 8
  %29 = icmp ne %struct.file_lock_context* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = load %struct.file_lock_context*, %struct.file_lock_context** %9, align 8
  %32 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %31, i32 0, i32 1
  %33 = call i64 @list_empty_careful(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.file_lock_context*, %struct.file_lock_context** %9, align 8
  %37 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %36, i32 0, i32 0
  %38 = call i64 @list_empty_careful(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %42 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nfs_match_lock_context(i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %134

50:                                               ; preds = %40, %35, %20
  %51 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %52 = call i64 @req_offset(%struct.nfs_page* %51)
  %53 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %54 = call i64 @req_offset(%struct.nfs_page* %53)
  %55 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %56 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = icmp ne i64 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %134

61:                                               ; preds = %50
  %62 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %63 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %66 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %71 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %74 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %77 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = icmp ne i64 %72, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %134

82:                                               ; preds = %69
  br label %100

83:                                               ; preds = %61
  %84 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %85 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %90 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %93 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88, %83
  store i32 0, i32* %4, align 4
  br label %134

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %3
  %102 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %103 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)*, i64 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)** %105, align 8
  %107 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %108 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %109 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %110 = call i64 %106(%struct.nfs_pageio_descriptor* %107, %struct.nfs_page* %108, %struct.nfs_page* %109)
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %113 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ugt i64 %111, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @WARN_ON_ONCE(i32 %116)
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %101
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %123 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %129 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %126, %120, %101
  %131 = load i64, i64* %8, align 8
  %132 = icmp ugt i64 %131, 0
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %98, %81, %60, %49, %19
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @nfs_match_open_context(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local %struct.TYPE_8__* @d_inode(i32) #1

declare dso_local i64 @list_empty_careful(i32*) #1

declare dso_local i32 @nfs_match_lock_context(i32, i32) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

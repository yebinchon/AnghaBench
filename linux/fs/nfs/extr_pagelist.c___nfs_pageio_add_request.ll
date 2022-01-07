; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c___nfs_pageio_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c___nfs_pageio_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i64 }
%struct.nfs_page = type { i32, i32, i32 }
%struct.nfs_pgio_mirror = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @__nfs_pageio_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_pgio_mirror*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %12 = call %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %11)
  store %struct.nfs_pgio_mirror* %12, %struct.nfs_pgio_mirror** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %14 = call i32 @nfs_page_group_lock(%struct.nfs_page* %13)
  %15 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %15, %struct.nfs_page** %7, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %20 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %23 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %126, %2
  %26 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %27 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %28 = call i32 @nfs_pageio_do_add_request(%struct.nfs_pageio_descriptor* %26, %struct.nfs_page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %71, label %30

30:                                               ; preds = %25
  %31 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  %38 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %39 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON_ONCE(i32 %43)
  %45 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  %52 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %53 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %52)
  %54 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %55 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %57 = call i32 @nfs_pageio_doio(%struct.nfs_pageio_descriptor* %56)
  %58 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %59 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %30
  %63 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %64 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %30
  br label %139

68:                                               ; preds = %62
  %69 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %70 = call i32 @nfs_page_group_lock(%struct.nfs_page* %69)
  br label %126

71:                                               ; preds = %25
  %72 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %73 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %76 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %74, %77
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = icmp ugt i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @WARN_ON_ONCE(i32 %81)
  %83 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %84 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ugt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @WARN_ON_ONCE(i32 %88)
  %90 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %91 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON_ONCE(i32 %94)
  %96 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %97 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %102 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %107 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %71
  %114 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %115 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call %struct.nfs_page* @nfs_create_subreq(%struct.nfs_page* %114, %struct.nfs_page* %115, i32 %116, i32 %117, i32 %118)
  store %struct.nfs_page* %119, %struct.nfs_page** %7, align 8
  %120 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %121 = call i64 @IS_ERR(%struct.nfs_page* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %132

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %71
  br label %126

126:                                              ; preds = %125, %68
  %127 = load i32, i32* %8, align 4
  %128 = icmp ugt i32 %127, 0
  br i1 %128, label %25, label %129

129:                                              ; preds = %126
  %130 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %131 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %130)
  store i32 1, i32* %3, align 4
  br label %148

132:                                              ; preds = %123
  %133 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %134 = call i64 @PTR_ERR(%struct.nfs_page* %133)
  %135 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %136 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %138 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %137)
  store i32 0, i32* %3, align 4
  br label %148

139:                                              ; preds = %67
  %140 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %141 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %142 = icmp ne %struct.nfs_page* %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %145 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %146 = call i32 @nfs_pageio_cleanup_request(%struct.nfs_pageio_descriptor* %144, %struct.nfs_page* %145)
  br label %147

147:                                              ; preds = %143, %139
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %132, %129
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_page_group_lock(%struct.nfs_page*) #1

declare dso_local i32 @nfs_pageio_do_add_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nfs_page_group_unlock(%struct.nfs_page*) #1

declare dso_local i32 @nfs_pageio_doio(%struct.nfs_pageio_descriptor*) #1

declare dso_local %struct.nfs_page* @nfs_create_subreq(%struct.nfs_page*, %struct.nfs_page*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i64 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_pageio_cleanup_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

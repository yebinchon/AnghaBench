; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_vfs_dedupe_file_range_compare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_vfs_dedupe_file_range_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.page = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.inode*, i32, i32, i32*)* @vfs_dedupe_file_range_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_dedupe_file_range_compare(%struct.inode* %0, i32 %1, %struct.inode* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %22, align 4
  store i32 1, i32* %21, align 4
  br label %25

25:                                               ; preds = %137, %6
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %147

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @min(i32 %39, i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %150

50:                                               ; preds = %28
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.page* @vfs_dedupe_get_page(%struct.inode* %51, i32 %52)
  store %struct.page* %53, %struct.page** %18, align 8
  %54 = load %struct.page*, %struct.page** %18, align 8
  %55 = call i64 @IS_ERR(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.page*, %struct.page** %18, align 8
  %59 = call i32 @PTR_ERR(%struct.page* %58)
  store i32 %59, i32* %22, align 4
  br label %150

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.page* @vfs_dedupe_get_page(%struct.inode* %61, i32 %62)
  store %struct.page* %63, %struct.page** %19, align 8
  %64 = load %struct.page*, %struct.page** %19, align 8
  %65 = call i64 @IS_ERR(%struct.page* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.page*, %struct.page** %19, align 8
  %69 = call i32 @PTR_ERR(%struct.page* %68)
  store i32 %69, i32* %22, align 4
  %70 = load %struct.page*, %struct.page** %18, align 8
  %71 = call i32 @put_page(%struct.page* %70)
  br label %150

72:                                               ; preds = %60
  %73 = load %struct.page*, %struct.page** %18, align 8
  %74 = load %struct.page*, %struct.page** %19, align 8
  %75 = call i32 @vfs_lock_two_pages(%struct.page* %73, %struct.page* %74)
  %76 = load %struct.page*, %struct.page** %18, align 8
  %77 = call i32 @PageUptodate(%struct.page* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %72
  %80 = load %struct.page*, %struct.page** %19, align 8
  %81 = call i32 @PageUptodate(%struct.page* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load %struct.page*, %struct.page** %18, align 8
  %85 = getelementptr inbounds %struct.page, %struct.page* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load %struct.page*, %struct.page** %19, align 8
  %93 = getelementptr inbounds %struct.page, %struct.page* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %83, %79, %72
  store i32 0, i32* %21, align 4
  br label %126

100:                                              ; preds = %91
  %101 = load %struct.page*, %struct.page** %18, align 8
  %102 = call i8* @kmap_atomic(%struct.page* %101)
  store i8* %102, i8** %16, align 8
  %103 = load %struct.page*, %struct.page** %19, align 8
  %104 = call i8* @kmap_atomic(%struct.page* %103)
  store i8* %104, i8** %17, align 8
  %105 = load %struct.page*, %struct.page** %18, align 8
  %106 = call i32 @flush_dcache_page(%struct.page* %105)
  %107 = load %struct.page*, %struct.page** %19, align 8
  %108 = call i32 @flush_dcache_page(%struct.page* %107)
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr i8, i8* %109, i64 %111
  %113 = load i8*, i8** %17, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr i8, i8* %113, i64 %115
  %117 = load i32, i32* %20, align 4
  %118 = call i64 @memcmp(i8* %112, i8* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %100
  store i32 0, i32* %21, align 4
  br label %121

121:                                              ; preds = %120, %100
  %122 = load i8*, i8** %17, align 8
  %123 = call i32 @kunmap_atomic(i8* %122)
  %124 = load i8*, i8** %16, align 8
  %125 = call i32 @kunmap_atomic(i8* %124)
  br label %126

126:                                              ; preds = %121, %99
  %127 = load %struct.page*, %struct.page** %18, align 8
  %128 = load %struct.page*, %struct.page** %19, align 8
  %129 = call i32 @vfs_unlock_two_pages(%struct.page* %127, %struct.page* %128)
  %130 = load %struct.page*, %struct.page** %19, align 8
  %131 = call i32 @put_page(%struct.page* %130)
  %132 = load %struct.page*, %struct.page** %18, align 8
  %133 = call i32 @put_page(%struct.page* %132)
  %134 = load i32, i32* %21, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  br label %147

137:                                              ; preds = %126
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %25

147:                                              ; preds = %136, %25
  %148 = load i32, i32* %21, align 4
  %149 = load i32*, i32** %13, align 8
  store i32 %148, i32* %149, align 4
  store i32 0, i32* %7, align 4
  br label %152

150:                                              ; preds = %67, %57, %49
  %151 = load i32, i32* %22, align 4
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.page* @vfs_dedupe_get_page(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @vfs_lock_two_pages(%struct.page*, %struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @vfs_unlock_two_pages(%struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

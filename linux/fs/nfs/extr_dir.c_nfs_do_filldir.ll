; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_do_filldir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_do_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64*, i32, %struct.TYPE_8__*, %struct.file* }
%struct.TYPE_8__ = type { i32 }
%struct.file = type { %struct.nfs_open_dir_context* }
%struct.nfs_open_dir_context = type { i32 }
%struct.nfs_cache_array = type { i32, i64, i64, %struct.nfs_cache_array_entry* }
%struct.nfs_cache_array_entry = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@DIRCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"NFS: nfs_do_filldir() filling ended @ cookie %Lu; returning = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @nfs_do_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_filldir(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_cache_array*, align 8
  %7 = alloca %struct.nfs_open_dir_context*, align 8
  %8 = alloca %struct.nfs_cache_array_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.nfs_cache_array* null, %struct.nfs_cache_array** %6, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %13, align 8
  store %struct.nfs_open_dir_context* %14, %struct.nfs_open_dir_context** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.nfs_cache_array* @kmap(i32 %17)
  store %struct.nfs_cache_array* %18, %struct.nfs_cache_array** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %100, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %103

28:                                               ; preds = %22
  %29 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %29, i32 0, i32 3
  %31 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %31, i64 %33
  store %struct.nfs_cache_array_entry* %34, %struct.nfs_cache_array_entry** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %8, align 8
  %39 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %8, align 8
  %43 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %8, align 8
  %47 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nfs_compat_user_ino64(i32 %48)
  %50 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %8, align 8
  %51 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dir_emit(%struct.TYPE_8__* %37, i32 %41, i32 %45, i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %28
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %103

58:                                               ; preds = %28
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %67 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %58
  %72 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %73 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %72, i32 0, i32 3
  %74 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %74, i64 %77
  %79 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  store i64 %80, i64* %83, align 8
  br label %91

84:                                               ; preds = %58
  %85 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %86 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %71
  %92 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %93 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %98 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %22

103:                                              ; preds = %55, %22
  %104 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %105 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @kunmap(i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = call i32 @cache_page_release(%struct.TYPE_7__* %116)
  %118 = load i32, i32* @DIRCACHE, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @dfprintk(i32 %118, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %122, i32 %123)
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.nfs_cache_array* @kmap(i32) #1

declare dso_local i32 @dir_emit(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_compat_user_ino64(i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @cache_page_release(%struct.TYPE_7__*) #1

declare dso_local i32 @dfprintk(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

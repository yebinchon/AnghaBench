; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_make_empty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.minix_sb_info = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MINIX_V3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_make_empty(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.minix_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.page* @grab_cache_page(i32 %14, i32 0)
  store %struct.page* %15, %struct.page** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.minix_sb_info* @minix_sb(i32 %18)
  store %struct.minix_sb_info* %19, %struct.minix_sb_info** %7, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %109

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %28 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 2, %29
  %31 = call i32 @minix_prepare_chunk(%struct.page* %26, i32 0, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = call i32 @unlock_page(%struct.page* %35)
  br label %105

37:                                               ; preds = %25
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i8* @kmap_atomic(%struct.page* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = call i32 @memset(i8* %40, i32 0, i32 %41)
  %43 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %44 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MINIX_V3, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %10, align 8
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %62 = call %struct.TYPE_5__* @minix_next_entry(%struct.TYPE_5__* %60, %struct.minix_sb_info* %61)
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %10, align 8
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strcpy(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %96

72:                                               ; preds = %37
  %73 = load i8*, i8** %8, align 8
  %74 = bitcast i8* %73 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %11, align 8
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strcpy(i32 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %86 = call %struct.TYPE_5__* @minix_next_entry(%struct.TYPE_5__* %84, %struct.minix_sb_info* %85)
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %11, align 8
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strcpy(i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %72, %48
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @kunmap_atomic(i8* %97)
  %99 = load %struct.page*, %struct.page** %6, align 8
  %100 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %101 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 2, %102
  %104 = call i32 @dir_commit_chunk(%struct.page* %99, i32 0, i32 %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %96, %34
  %106 = load %struct.page*, %struct.page** %6, align 8
  %107 = call i32 @put_page(%struct.page* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.page* @grab_cache_page(i32, i32) #1

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @minix_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @minix_next_entry(%struct.TYPE_5__*, %struct.minix_sb_info*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

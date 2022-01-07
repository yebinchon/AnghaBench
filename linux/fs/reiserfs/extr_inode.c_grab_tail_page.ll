; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_grab_tail_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_grab_tail_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reiserfs_get_block_create_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-6000\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"error reading block %lu\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page**, %struct.buffer_head**)* @grab_tail_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_tail_page(%struct.inode* %0, %struct.page** %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %37, 1
  %39 = and i64 %36, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %118

44:                                               ; preds = %3
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call %struct.page* @grab_cache_page(i32 %47, i64 %48)
  store %struct.page* %49, %struct.page** %15, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %16, align 4
  %52 = load %struct.page*, %struct.page** %15, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %110

55:                                               ; preds = %44
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = udiv i64 %56, %57
  %59 = load i64, i64* %11, align 8
  %60 = mul i64 %58, %59
  store i64 %60, i64* %10, align 8
  %61 = load %struct.page*, %struct.page** %15, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %63, %64
  %66 = load i32, i32* @reiserfs_get_block_create_0, align 4
  %67 = call i32 @__block_write_begin(%struct.page* %61, i64 %62, i64 %65, i32 %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %112

71:                                               ; preds = %55
  %72 = load %struct.page*, %struct.page** %15, align 8
  %73 = call %struct.buffer_head* @page_buffers(%struct.page* %72)
  store %struct.buffer_head* %73, %struct.buffer_head** %14, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %74, %struct.buffer_head** %13, align 8
  br label %75

75:                                               ; preds = %87, %71
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %91

80:                                               ; preds = %75
  %81 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 1
  %83 = load %struct.buffer_head*, %struct.buffer_head** %82, align 8
  store %struct.buffer_head* %83, %struct.buffer_head** %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %80
  %88 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %90 = icmp ne %struct.buffer_head* %88, %89
  br i1 %90, label %75, label %91

91:                                               ; preds = %87, %79
  %92 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %93 = call i32 @buffer_uptodate(%struct.buffer_head* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %100 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @reiserfs_error(%struct.TYPE_2__* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %16, align 4
  br label %112

105:                                              ; preds = %91
  %106 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %107 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %106, %struct.buffer_head** %107, align 8
  %108 = load %struct.page*, %struct.page** %15, align 8
  %109 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page* %108, %struct.page** %109, align 8
  br label %110

110:                                              ; preds = %105, %54
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %4, align 4
  br label %118

112:                                              ; preds = %95, %70
  %113 = load %struct.page*, %struct.page** %15, align 8
  %114 = call i32 @unlock_page(%struct.page* %113)
  %115 = load %struct.page*, %struct.page** %15, align 8
  %116 = call i32 @put_page(%struct.page* %115)
  %117 = load i32, i32* %16, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %112, %110, %41
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.page* @grab_cache_page(i32, i64) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i64, i64, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_error(%struct.TYPE_2__*, i8*, i8*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_read_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_read_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Inode %llu lost inline data flag\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Inode %llu has with inline data has bad size: %Lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_read_inline_data(%struct.inode* %0, %struct.page* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %14, %struct.ocfs2_dinode** %10, align 8
  %15 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %16 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32, i8*, i64, ...) @ocfs2_error(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EROFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %87

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i64 @i_size_read(%struct.inode* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %45 = call i64 @ocfs2_max_inline_data_with_xattr(i32 %43, %struct.ocfs2_dinode* %44)
  %46 = icmp sgt i64 %40, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %39, %33
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 (i32, i8*, i64, ...) @ocfs2_error(i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load i32, i32* @EROFS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %87

59:                                               ; preds = %39
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i8* @kmap_atomic(%struct.page* %60)
  store i8* %61, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @memcpy(i8* %65, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %64, %59
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr i8, i8* %74, i64 %75
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i32 @memset(i8* %76, i32 0, i64 %79)
  %81 = load %struct.page*, %struct.page** %6, align 8
  %82 = call i32 @flush_dcache_page(%struct.page* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @kunmap_atomic(i8* %83)
  %85 = load %struct.page*, %struct.page** %6, align 8
  %86 = call i32 @SetPageUptodate(%struct.page* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %73, %47, %22
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, ...) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_max_inline_data_with_xattr(i32, %struct.ocfs2_dinode*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

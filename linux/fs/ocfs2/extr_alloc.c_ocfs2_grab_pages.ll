; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_grab_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_grab_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_grab_pages(%struct.inode* %0, i64 %1, i64 %2, %struct.page** %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.page** %3, %struct.page*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %13, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  store i32 0, i32* %11, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @PAGE_ALIGN(i64 %24)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %14, align 8
  br label %29

29:                                               ; preds = %54, %5
  %30 = load %struct.address_space*, %struct.address_space** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.page* @find_or_create_page(%struct.address_space* %30, i64 %31, i32 %32)
  %34 = load %struct.page**, %struct.page*** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 %36
  store %struct.page* %33, %struct.page** %37, align 8
  %38 = load %struct.page**, %struct.page*** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.page*, %struct.page** %38, i64 %40
  %42 = load %struct.page*, %struct.page** %41, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %61

49:                                               ; preds = %29
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %29, label %60

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.page**, %struct.page*** %9, align 8
  %66 = icmp ne %struct.page** %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.page**, %struct.page*** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ocfs2_unlock_and_free_pages(%struct.page** %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_unlock_and_free_pages(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

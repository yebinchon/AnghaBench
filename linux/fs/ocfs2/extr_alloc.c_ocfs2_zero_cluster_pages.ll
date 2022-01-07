; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_zero_cluster_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_zero_cluster_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, %struct.page**, i32, i32, i32*)* @ocfs2_zero_cluster_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_zero_cluster_pages(%struct.inode* %0, i32 %1, i32 %2, %struct.page** %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.page** %3, %struct.page*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %20, i32* %18, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %19, align 8
  %24 = load %struct.super_block*, %struct.super_block** %19, align 8
  %25 = call i32 @OCFS2_SB(%struct.super_block* %24)
  %26 = call i32 @ocfs2_sparse_alloc(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  br label %89

34:                                               ; preds = %7
  %35 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %35, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %85, %34
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %88

40:                                               ; preds = %36
  %41 = load %struct.page**, %struct.page*** %11, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  store %struct.page* %45, %struct.page** %16, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load %struct.page*, %struct.page** %16, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %57, %40
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = icmp ugt i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = icmp ugt i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load %struct.page*, %struct.page** %16, align 8
  %78 = call i32 @ocfs2_map_and_dirty_page(%struct.inode* %73, i32* %74, i32 %75, i32 %76, %struct.page* %77, i32 1, i32* %13)
  %79 = load %struct.page*, %struct.page** %16, align 8
  %80 = getelementptr inbounds %struct.page, %struct.page* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = shl i32 %82, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %62
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %36

88:                                               ; preds = %36
  br label %89

89:                                               ; preds = %88, %33
  %90 = load %struct.page**, %struct.page*** %11, align 8
  %91 = icmp ne %struct.page** %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.page**, %struct.page*** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @ocfs2_unlock_and_free_pages(%struct.page** %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %89
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_sparse_alloc(i32) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_map_and_dirty_page(%struct.inode*, i32*, i32, i32, %struct.page*, i32, i32*) #1

declare dso_local i32 @ocfs2_unlock_and_free_pages(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

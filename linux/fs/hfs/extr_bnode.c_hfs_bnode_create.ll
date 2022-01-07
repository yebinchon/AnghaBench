; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_bnode.c_hfs_bnode_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_bnode.c_hfs_bnode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, i32, i64, %struct.page** }
%struct.page = type { i32 }
%struct.hfs_btree = type { i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"new node %u already hashed?\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HFS_BNODE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@HFS_BNODE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfs_bnode* @hfs_bnode_create(%struct.hfs_btree* %0, i32 %1) #0 {
  %3 = alloca %struct.hfs_bnode*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %10 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %12, i32 %13)
  store %struct.hfs_bnode* %14, %struct.hfs_bnode** %6, align 8
  %15 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %16 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %15, i32 0, i32 2
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %19 = icmp ne %struct.hfs_bnode* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %24, %struct.hfs_bnode** %3, align 8
  br label %103

25:                                               ; preds = %2
  %26 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.hfs_bnode* @__hfs_bnode_create(%struct.hfs_btree* %26, i32 %27)
  store %struct.hfs_bnode* %28, %struct.hfs_bnode** %6, align 8
  %29 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %30 = icmp ne %struct.hfs_bnode* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.hfs_bnode* @ERR_PTR(i32 %33)
  store %struct.hfs_bnode* %34, %struct.hfs_bnode** %3, align 8
  br label %103

35:                                               ; preds = %25
  %36 = load i32, i32* @HFS_BNODE_ERROR, align 4
  %37 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %38 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %43 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.hfs_bnode* @ERR_PTR(i32 %45)
  store %struct.hfs_bnode* %46, %struct.hfs_bnode** %3, align 8
  br label %103

47:                                               ; preds = %35
  %48 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %49 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %48, i32 0, i32 3
  %50 = load %struct.page**, %struct.page*** %49, align 8
  store %struct.page** %50, %struct.page*** %7, align 8
  %51 = load %struct.page**, %struct.page*** %7, align 8
  %52 = load %struct.page*, %struct.page** %51, align 8
  %53 = call i64 @kmap(%struct.page* %52)
  %54 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %55 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %61 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @min(i32 %59, i32 %63)
  %65 = call i32 @memset(i64 %57, i32 0, i64 %64)
  %66 = load %struct.page**, %struct.page*** %7, align 8
  %67 = load %struct.page*, %struct.page** %66, align 8
  %68 = call i32 @set_page_dirty(%struct.page* %67)
  %69 = load %struct.page**, %struct.page*** %7, align 8
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = call i32 @kunmap(%struct.page* %70)
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %91, %47
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %75 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.page**, %struct.page*** %7, align 8
  %80 = getelementptr inbounds %struct.page*, %struct.page** %79, i32 1
  store %struct.page** %80, %struct.page*** %7, align 8
  %81 = load %struct.page*, %struct.page** %80, align 8
  %82 = call i64 @kmap(%struct.page* %81)
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = call i32 @memset(i64 %82, i32 0, i64 %83)
  %85 = load %struct.page**, %struct.page*** %7, align 8
  %86 = load %struct.page*, %struct.page** %85, align 8
  %87 = call i32 @set_page_dirty(%struct.page* %86)
  %88 = load %struct.page**, %struct.page*** %7, align 8
  %89 = load %struct.page*, %struct.page** %88, align 8
  %90 = call i32 @kunmap(%struct.page* %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %72

94:                                               ; preds = %72
  %95 = load i32, i32* @HFS_BNODE_NEW, align 4
  %96 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %97 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %96, i32 0, i32 1
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  %99 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %100 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %99, i32 0, i32 0
  %101 = call i32 @wake_up(i32* %100)
  %102 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %102, %struct.hfs_bnode** %3, align 8
  br label %103

103:                                              ; preds = %94, %41, %31, %20
  %104 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  ret %struct.hfs_bnode* %104
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.hfs_bnode* @__hfs_bnode_create(%struct.hfs_btree*, i32) #1

declare dso_local %struct.hfs_bnode* @ERR_PTR(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

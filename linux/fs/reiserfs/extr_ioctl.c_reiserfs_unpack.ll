; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_ioctl.c_reiserfs_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_ioctl.c_reiserfs_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_6__*, %struct.address_space* }
%struct.TYPE_6__ = type { i64 }
%struct.address_space = type { i32 }
%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_7__ = type { i32 }

@i_nopack_mask = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_unpack(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @i_nopack_mask, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call %struct.TYPE_7__* @REISERFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %121

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call %struct.TYPE_7__* @REISERFS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @i_nopack_mask, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %121

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @reiserfs_write_unlock_nested(%struct.TYPE_6__* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @inode_lock(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @reiserfs_write_lock_nested(%struct.TYPE_6__* %47, i32 %48)
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @reiserfs_write_lock(%struct.TYPE_6__* %52)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %57, 1
  %59 = and i64 %56, %58
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %38
  %63 = load i32, i32* @i_nopack_mask, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call %struct.TYPE_7__* @REISERFS_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %113

69:                                               ; preds = %38
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = zext i32 %73 to i64
  %75 = lshr i64 %72, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 2
  %79 = load %struct.address_space*, %struct.address_space** %78, align 8
  store %struct.address_space* %79, %struct.address_space** %9, align 8
  %80 = load %struct.address_space*, %struct.address_space** %9, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call %struct.page* @grab_cache_page(%struct.address_space* %80, i32 %81)
  store %struct.page* %82, %struct.page** %8, align 8
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  %85 = load %struct.page*, %struct.page** %8, align 8
  %86 = icmp ne %struct.page* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %69
  br label %113

88:                                               ; preds = %69
  %89 = load %struct.page*, %struct.page** %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @__reiserfs_write_begin(%struct.page* %89, i64 %90, i32 0)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %108

95:                                               ; preds = %88
  %96 = load %struct.page*, %struct.page** %8, align 8
  %97 = call i32 @flush_dcache_page(%struct.page* %96)
  %98 = load %struct.page*, %struct.page** %8, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @reiserfs_commit_write(i32* null, %struct.page* %98, i64 %99, i64 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @i_nopack_mask, align 4
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = call %struct.TYPE_7__* @REISERFS_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %95, %94
  %109 = load %struct.page*, %struct.page** %8, align 8
  %110 = call i32 @unlock_page(%struct.page* %109)
  %111 = load %struct.page*, %struct.page** %8, align 8
  %112 = call i32 @put_page(%struct.page* %111)
  br label %113

113:                                              ; preds = %108, %87, %62
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = call i32 @inode_unlock(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %113, %37, %22
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_7__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.TYPE_6__*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_6__*) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @__reiserfs_write_begin(%struct.page*, i64, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @reiserfs_commit_write(i32*, %struct.page*, i64, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

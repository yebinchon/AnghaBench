; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32 }
%struct.super_block = type { i32 }
%struct.hfs_find_data = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@HFSPLUS_FIRSTUSER_CNID = common dso_local global i64 0, align 8
@HFSPLUS_ROOT_CNID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @hfsplus_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfs_find_data, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.inode* @iget_locked(%struct.super_block* %9, i64 %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.inode* @ERR_PTR(i32 %16)
  store %struct.inode* %17, %struct.inode** %3, align 8
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @I_NEW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %26, %struct.inode** %3, align 8
  br label %105

27:                                               ; preds = %18
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HFSPLUS_FIRSTUSER_CNID, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %27
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HFSPLUS_ROOT_CNID, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %58, %27
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_3__* @HFSPLUS_SB(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @hfs_find_init(i32 %70, %struct.hfs_find_data* %6)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %64
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @hfsplus_find_cat(i32 %77, i64 %80, %struct.hfs_find_data* %6)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call i32 @hfsplus_cat_read_inode(%struct.inode* %85, %struct.hfs_find_data* %6)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %74
  %88 = call i32 @hfs_find_exit(%struct.hfs_find_data* %6)
  br label %89

89:                                               ; preds = %87, %64
  br label %93

90:                                               ; preds = %58
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = call i32 @hfsplus_system_read_inode(%struct.inode* %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = call i32 @iget_failed(%struct.inode* %97)
  %99 = load i32, i32* %8, align 4
  %100 = call %struct.inode* @ERR_PTR(i32 %99)
  store %struct.inode* %100, %struct.inode** %3, align 8
  br label %105

101:                                              ; preds = %93
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = call i32 @unlock_new_inode(%struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %104, %struct.inode** %3, align 8
  br label %105

105:                                              ; preds = %101, %96, %25, %14
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %106
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_3__* @HFSPLUS_SB(i32) #1

declare dso_local i32 @hfsplus_find_cat(i32, i64, %struct.hfs_find_data*) #1

declare dso_local i32 @hfsplus_cat_read_inode(%struct.inode*, %struct.hfs_find_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @hfsplus_system_read_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fuse_inode_handle = type { i64, i64 }
%struct.fuse_conn = type { i32 }
%struct.inode = type { i64 }
%struct.fuse_entry_out = type { i32 }
%struct.qstr = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@fuse_inode_eq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FUSE_ROOT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fuse_inode_handle*)* @fuse_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_get_dentry(%struct.super_block* %0, %struct.fuse_inode_handle* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fuse_inode_handle*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_entry_out, align 4
  %11 = alloca %struct.qstr, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fuse_inode_handle* %1, %struct.fuse_inode_handle** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %12)
  store %struct.fuse_conn* %13, %struct.fuse_conn** %6, align 8
  %14 = load i32, i32* @ESTALE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.fuse_inode_handle*, %struct.fuse_inode_handle** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %104

21:                                               ; preds = %2
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load %struct.fuse_inode_handle*, %struct.fuse_inode_handle** %5, align 8
  %24 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @fuse_inode_eq, align 4
  %27 = load %struct.fuse_inode_handle*, %struct.fuse_inode_handle** %5, align 8
  %28 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %27, i32 0, i32 0
  %29 = call %struct.inode* @ilookup5(%struct.super_block* %22, i64 %25, i32 %26, i64* %28)
  store %struct.inode* %29, %struct.inode** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %74, label %32

32:                                               ; preds = %21
  %33 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %36 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %104

40:                                               ; preds = %32
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = load %struct.fuse_inode_handle*, %struct.fuse_inode_handle** %5, align 8
  %43 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @fuse_lookup_name(%struct.super_block* %41, i64 %44, %struct.qstr* %11, %struct.fuse_entry_out* %10, %struct.inode** %7)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %104

54:                                               ; preds = %48, %40
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = icmp ne %struct.inode* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @ESTALE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %104

63:                                               ; preds = %57
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i64 @get_node_id(%struct.inode* %66)
  %68 = load %struct.fuse_inode_handle*, %struct.fuse_inode_handle** %5, align 8
  %69 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %101

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %21
  %75 = load i32, i32* @ESTALE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.fuse_inode_handle*, %struct.fuse_inode_handle** %5, align 8
  %81 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %101

85:                                               ; preds = %74
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = call %struct.dentry* @d_obtain_alias(%struct.inode* %86)
  store %struct.dentry* %87, %struct.dentry** %8, align 8
  %88 = load %struct.dentry*, %struct.dentry** %8, align 8
  %89 = call i32 @IS_ERR(%struct.dentry* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = call i64 @get_node_id(%struct.inode* %92)
  %94 = load i64, i64* @FUSE_ROOT_ID, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.dentry*, %struct.dentry** %8, align 8
  %98 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %97)
  br label %99

99:                                               ; preds = %96, %91, %85
  %100 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %100, %struct.dentry** %3, align 8
  br label %107

101:                                              ; preds = %84, %72
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = call i32 @iput(%struct.inode* %102)
  br label %104

104:                                              ; preds = %101, %60, %53, %39, %20
  %105 = load i32, i32* %9, align 4
  %106 = call %struct.dentry* @ERR_PTR(i32 %105)
  store %struct.dentry* %106, %struct.dentry** %3, align 8
  br label %107

107:                                              ; preds = %104, %99
  %108 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %108
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i64, i32, i64*) #1

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i32 @fuse_lookup_name(%struct.super_block*, i64, %struct.qstr*, %struct.fuse_entry_out*, %struct.inode**) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

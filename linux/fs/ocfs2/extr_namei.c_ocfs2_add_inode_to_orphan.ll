; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_add_inode_to_orphan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_add_inode_to_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_DIO_ORPHAN_PREFIX_LEN = common dso_local global i64 0, align 8
@OCFS2_ORPHAN_NAMELEN = common dso_local global i64 0, align 8
@OCFS2_DIO_ORPHANED_FL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_INODE_ADD_TO_ORPHAN_CREDITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_add_inode_to_orphan(%struct.ocfs2_super* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %13 = load i64, i64* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 8
  %14 = load i64, i64* @OCFS2_ORPHAN_NAMELEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = add nsw i64 %15, 1
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  %19 = bitcast %struct.ocfs2_dir_lookup_result* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 8, i1 false)
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @ocfs2_inode_lock(%struct.inode* %20, %struct.buffer_head** %9, i32 1)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %119

27:                                               ; preds = %2
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %31, %struct.ocfs2_dinode** %12, align 8
  %32 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OCFS2_DIO_ORPHANED_FL, align 4
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = and i32 %34, %36
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %27
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @i_size_read(%struct.inode* %43)
  %45 = call i32 @ocfs2_truncate_file(%struct.inode* %41, %struct.buffer_head* %42, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @ENOSPC, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %56

56:                                               ; preds = %53, %48
  br label %114

57:                                               ; preds = %40
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = call i32 @ocfs2_del_inode_from_orphan(%struct.ocfs2_super* %58, %struct.inode* %59, %struct.buffer_head* %60, i32 0, i32 0)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %114

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %27
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super* %69, %struct.inode** %7, i32 %73, i8* %18, %struct.ocfs2_dir_lookup_result* %8, i32 1)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %114

80:                                               ; preds = %68
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %82 = load i32, i32* @OCFS2_INODE_ADD_TO_ORPHAN_CREDITS, align 4
  %83 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %81, i32 %82)
  store i32* %83, i32** %11, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @PTR_ERR(i32* %88)
  store i32 %89, i32* %10, align 4
  br label %106

90:                                               ; preds = %80
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = call i32 @ocfs2_orphan_add(%struct.ocfs2_super* %91, i32* %92, %struct.inode* %93, %struct.buffer_head* %94, i8* %18, %struct.ocfs2_dir_lookup_result* %8, %struct.inode* %95, i32 1)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %102

102:                                              ; preds = %99, %90
  %103 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %103, i32* %104)
  br label %106

106:                                              ; preds = %102, %87
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = call i32 @ocfs2_inode_unlock(%struct.inode* %107, i32 1)
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = call i32 @inode_unlock(%struct.inode* %109)
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = call i32 @iput(%struct.inode* %111)
  %113 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %8)
  br label %114

114:                                              ; preds = %106, %77, %64, %56
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = call i32 @ocfs2_inode_unlock(%struct.inode* %115, i32 1)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = call i32 @brelse(%struct.buffer_head* %117)
  br label %119

119:                                              ; preds = %114, %24
  %120 = load i32, i32* %10, align 4
  %121 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %121)
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #3

declare dso_local i32 @mlog_errno(i32) #3

declare dso_local i64 @unlikely(i32) #3

declare dso_local i32 @cpu_to_le32(i32) #3

declare dso_local i32 @ocfs2_truncate_file(%struct.inode*, %struct.buffer_head*, i32) #3

declare dso_local i32 @i_size_read(%struct.inode*) #3

declare dso_local i32 @ocfs2_del_inode_from_orphan(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32) #3

declare dso_local i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super*, %struct.inode**, i32, i8*, %struct.ocfs2_dir_lookup_result*, i32) #3

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #3

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #3

declare dso_local i64 @IS_ERR(i32*) #3

declare dso_local i32 @PTR_ERR(i32*) #3

declare dso_local i32 @ocfs2_orphan_add(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, i8*, %struct.ocfs2_dir_lookup_result*, %struct.inode*, i32) #3

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #3

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #3

declare dso_local i32 @inode_unlock(%struct.inode*) #3

declare dso_local i32 @iput(%struct.inode*) #3

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #3

declare dso_local i32 @brelse(%struct.buffer_head*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

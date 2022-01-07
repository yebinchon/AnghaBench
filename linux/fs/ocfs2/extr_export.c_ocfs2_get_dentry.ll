; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_export.c_ocfs2_get_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_export.c_ocfs2_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64 }
%struct.super_block = type { i32 }
%struct.ocfs2_inode_handle = type { i64, i64 }
%struct.inode = type { i64 }
%struct.ocfs2_super = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"getting nfs sync lock(EX) failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"test inode bit failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.ocfs2_inode_handle*)* @ocfs2_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ocfs2_get_dentry(%struct.super_block* %0, %struct.ocfs2_inode_handle* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ocfs2_inode_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ocfs2_inode_handle* %1, %struct.ocfs2_inode_handle** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %6, align 8
  %13 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @trace_ocfs2_get_dentry_begin(%struct.super_block* %16, %struct.ocfs2_inode_handle* %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @ESTALE, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.inode* @ERR_PTR(i32 %24)
  %26 = bitcast %struct.inode* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %10, align 8
  br label %145

27:                                               ; preds = %2
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.inode* @ocfs2_ilookup(%struct.super_block* %28, i64 %29)
  store %struct.inode* %30, %struct.inode** %5, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %108

34:                                               ; preds = %27
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %36 = call i32 @ocfs2_nfs_sync_lock(%struct.ocfs2_super* %35, i32 1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @ML_ERROR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mlog(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %78

43:                                               ; preds = %34
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @ocfs2_test_inode_bit(%struct.ocfs2_super* %44, i64 %45, i32* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ESTALE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @ML_ERROR, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @mlog(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  br label %75

62:                                               ; preds = %43
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @trace_ocfs2_get_dentry_test_bit(i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ESTALE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %72, i64 %73, i32 0, i32 0)
  store %struct.inode* %74, %struct.inode** %5, align 8
  br label %75

75:                                               ; preds = %71, %68, %61
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %77 = call i32 @ocfs2_nfs_sync_unlock(%struct.ocfs2_super* %76, i32 1)
  br label %78

78:                                               ; preds = %75, %39
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ESTALE, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %89 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @trace_ocfs2_get_dentry_stale(i64 %87, i64 %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %8, align 4
  %94 = call %struct.inode* @ERR_PTR(i32 %93)
  %95 = bitcast %struct.inode* %94 to %struct.dentry*
  store %struct.dentry* %95, %struct.dentry** %10, align 8
  br label %145

96:                                               ; preds = %78
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call i64 @IS_ERR(%struct.inode* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call i32 @PTR_ERR(%struct.inode* %101)
  %103 = call i32 @mlog_errno(i32 %102)
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = call %struct.inode* @ERR_CAST(%struct.inode* %104)
  %106 = bitcast %struct.inode* %105 to %struct.dentry*
  store %struct.dentry* %106, %struct.dentry** %10, align 8
  br label %145

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %33
  %109 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %110 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %108
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %119 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @trace_ocfs2_get_dentry_generation(i64 %117, i64 %120, i64 %123)
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = call i32 @iput(%struct.inode* %125)
  %127 = load i32, i32* @ESTALE, align 4
  %128 = sub nsw i32 0, %127
  %129 = call %struct.inode* @ERR_PTR(i32 %128)
  %130 = bitcast %struct.inode* %129 to %struct.dentry*
  store %struct.dentry* %130, %struct.dentry** %10, align 8
  br label %145

131:                                              ; preds = %108
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = call %struct.inode* @d_obtain_alias(%struct.inode* %132)
  %134 = bitcast %struct.inode* %133 to %struct.dentry*
  store %struct.dentry* %134, %struct.dentry** %10, align 8
  %135 = load %struct.dentry*, %struct.dentry** %10, align 8
  %136 = bitcast %struct.dentry* %135 to %struct.inode*
  %137 = call i64 @IS_ERR(%struct.inode* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.dentry*, %struct.dentry** %10, align 8
  %141 = bitcast %struct.dentry* %140 to %struct.inode*
  %142 = call i32 @PTR_ERR(%struct.inode* %141)
  %143 = call i32 @mlog_errno(i32 %142)
  br label %144

144:                                              ; preds = %139, %131
  br label %145

145:                                              ; preds = %144, %116, %100, %92, %22
  %146 = load %struct.dentry*, %struct.dentry** %10, align 8
  %147 = bitcast %struct.dentry* %146 to %struct.inode*
  %148 = call i32 @trace_ocfs2_get_dentry_end(%struct.inode* %147)
  %149 = load %struct.dentry*, %struct.dentry** %10, align 8
  ret %struct.dentry* %149
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_get_dentry_begin(%struct.super_block*, %struct.ocfs2_inode_handle*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @ocfs2_ilookup(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_nfs_sync_lock(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_test_inode_bit(%struct.ocfs2_super*, i64, i32*) #1

declare dso_local i32 @trace_ocfs2_get_dentry_test_bit(i32, i32) #1

declare dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super*, i64, i32, i32) #1

declare dso_local i32 @ocfs2_nfs_sync_unlock(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @trace_ocfs2_get_dentry_stale(i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_get_dentry_generation(i64, i64, i64) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_get_dentry_end(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_export.c_ocfs2_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_export.c_ocfs2_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"getting nfs sync lock(EX) failed %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"test inode bit failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @ocfs2_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ocfs2_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %2, align 8
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @trace_ocfs2_get_parent(%struct.dentry* %10, i32 %14, i32 %18, i64 %22)
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OCFS2_SB(i32 %26)
  %28 = call i32 @ocfs2_nfs_sync_lock(i32 %27, i32 1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @ML_ERROR, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mlog(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  br label %114

37:                                               ; preds = %1
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @ocfs2_inode_lock(%struct.inode* %38, i32* null, i32 0)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %3, align 4
  %52 = call %struct.dentry* @ERR_PTR(i32 %51)
  store %struct.dentry* %52, %struct.dentry** %5, align 8
  br label %108

53:                                               ; preds = %37
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i32 @ocfs2_lookup_ino_from_name(%struct.inode* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32* %4)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.dentry* @ERR_PTR(i32 %60)
  store %struct.dentry* %61, %struct.dentry** %5, align 8
  br label %105

62:                                               ; preds = %53
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @OCFS2_SB(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ocfs2_test_inode_bit(i32 %66, i32 %67, i32* %7)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %62
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @ESTALE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @ML_ERROR, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @mlog(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %3, align 4
  %85 = call %struct.dentry* @ERR_PTR(i32 %84)
  store %struct.dentry* %85, %struct.dentry** %5, align 8
  br label %105

86:                                               ; preds = %62
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @trace_ocfs2_get_dentry_test_bit(i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ESTALE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call %struct.dentry* @ERR_PTR(i32 %95)
  store %struct.dentry* %96, %struct.dentry** %5, align 8
  br label %105

97:                                               ; preds = %86
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @OCFS2_SB(i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @ocfs2_iget(i32 %101, i32 %102, i32 0, i32 0)
  %104 = call %struct.dentry* @d_obtain_alias(i32 %103)
  store %struct.dentry* %104, %struct.dentry** %5, align 8
  br label %105

105:                                              ; preds = %97, %92, %83, %58
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call i32 @ocfs2_inode_unlock(%struct.inode* %106, i32 0)
  br label %108

108:                                              ; preds = %105, %50
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @OCFS2_SB(i32 %111)
  %113 = call i32 @ocfs2_nfs_sync_unlock(i32 %112, i32 1)
  br label %114

114:                                              ; preds = %108, %31
  %115 = load %struct.dentry*, %struct.dentry** %5, align 8
  %116 = call i32 @trace_ocfs2_get_parent_end(%struct.dentry* %115)
  %117 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %117
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @trace_ocfs2_get_parent(%struct.dentry*, i32, i32, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_nfs_sync_lock(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(%struct.inode*, i8*, i32, i32*) #1

declare dso_local i32 @ocfs2_test_inode_bit(i32, i32, i32*) #1

declare dso_local i32 @trace_ocfs2_get_dentry_test_bit(i32, i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @ocfs2_iget(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_nfs_sync_unlock(i32, i32) #1

declare dso_local i32 @trace_ocfs2_get_parent_end(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

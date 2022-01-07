; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_convert_worker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_convert_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }
%struct.ocfs2_dentry_lock = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.dentry = type { i32 }

@DLM_LOCK_PR = common dso_local global i32 0, align 4
@UNBLOCK_CONTINUE = common dso_local global i32 0, align 4
@OCFS2_INODE_MAYBE_ORPHANED = common dso_local global i32 0, align 4
@dentry_attach_lock = common dso_local global i32 0, align 4
@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"extra_ref = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"d_delete(%pd);\0A\00", align 1
@UNBLOCK_STOP_POST = common dso_local global i32 0, align 4
@UNBLOCK_CONTINUE_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, i32)* @ocfs2_dentry_convert_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dentry_convert_worker(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dentry_lock*, align 8
  %7 = alloca %struct.ocfs2_inode_info*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %12 = call %struct.ocfs2_dentry_lock* @ocfs2_lock_res_dl(%struct.ocfs2_lock_res* %11)
  store %struct.ocfs2_dentry_lock* %12, %struct.ocfs2_dentry_lock** %6, align 8
  %13 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %6, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.TYPE_3__* %15)
  store %struct.ocfs2_inode_info* %16, %struct.ocfs2_inode_info** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DLM_LOCK_PR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @UNBLOCK_CONTINUE, align 4
  store i32 %21, i32* %3, align 4
  br label %111

22:                                               ; preds = %2
  %23 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %24 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i32, i32* @OCFS2_INODE_MAYBE_ORPHANED, align 4
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %32 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %34, i32 0, i32 1
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = call i32 @spin_lock(i32* @dentry_attach_lock)
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %22
  %46 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %6, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %45, %22
  %56 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %58 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %57, i32 0, i32 1
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @UNBLOCK_CONTINUE, align 4
  store i32 %66, i32* %3, align 4
  br label %111

67:                                               ; preds = %55
  %68 = call i32 @spin_lock(i32* @dentry_attach_lock)
  br label %69

69:                                               ; preds = %67, %92
  %70 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %6, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %6, align 8
  %74 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.dentry* @ocfs2_find_local_alias(%struct.TYPE_3__* %72, i32 %75, i32 1)
  store %struct.dentry* %76, %struct.dentry** %8, align 8
  %77 = load %struct.dentry*, %struct.dentry** %8, align 8
  %78 = icmp ne %struct.dentry* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %101

80:                                               ; preds = %69
  %81 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %82 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %6, align 8
  %83 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @S_ISDIR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.dentry*, %struct.dentry** %8, align 8
  %91 = call i32 @shrink_dcache_parent(%struct.dentry* %90)
  br label %92

92:                                               ; preds = %89, %80
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = ptrtoint %struct.dentry* %93 to i32
  %95 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.dentry*, %struct.dentry** %8, align 8
  %97 = call i32 @d_delete(%struct.dentry* %96)
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = call i32 @dput(%struct.dentry* %98)
  %100 = call i32 @spin_lock(i32* @dentry_attach_lock)
  br label %69

101:                                              ; preds = %79
  %102 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %103 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %6, align 8
  %104 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @UNBLOCK_STOP_POST, align 4
  store i32 %108, i32* %3, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @UNBLOCK_CONTINUE_POST, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %107, %65, %20
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.ocfs2_dentry_lock* @ocfs2_lock_res_dl(%struct.ocfs2_lock_res*) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local %struct.dentry* @ocfs2_find_local_alias(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

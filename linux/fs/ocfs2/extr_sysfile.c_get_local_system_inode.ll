; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_sysfile.c_get_local_system_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_sysfile.c_get_local_system_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32, %struct.inode**, i32 }

@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@OCFS2_FIRST_LOCAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_LAST_LOCAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@NUM_LOCAL_SYSTEM_INODES = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode** (%struct.ocfs2_super*, i32, i32)* @get_local_system_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode** @get_local_system_inode(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode**, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode**, align 8
  %10 = alloca %struct.inode**, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.inode** null, %struct.inode*** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @OCFS2_FIRST_LOCAL_SYSTEM_INODE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @OCFS2_LAST_LOCAL_SYSTEM_INODE, align 4
  %22 = icmp sgt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i1 [ true, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 1
  %32 = load %struct.inode**, %struct.inode*** %31, align 8
  store %struct.inode** %32, %struct.inode*** %9, align 8
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.inode**, %struct.inode*** %9, align 8
  %37 = icmp ne %struct.inode** %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %23
  %43 = load i32, i32* @NUM_LOCAL_SYSTEM_INODES, align 4
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @array3_size(i32 8, i32 %43, i32 %46)
  %48 = load i32, i32* @GFP_NOFS, align 4
  %49 = call %struct.inode** @kzalloc(i32 %47, i32 %48)
  store %struct.inode** %49, %struct.inode*** %9, align 8
  %50 = load %struct.inode**, %struct.inode*** %9, align 8
  %51 = icmp ne %struct.inode** %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @mlog_errno(i32 %54)
  store %struct.inode** null, %struct.inode*** %4, align 8
  br label %91

56:                                               ; preds = %42
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %61 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %60, i32 0, i32 1
  %62 = load %struct.inode**, %struct.inode*** %61, align 8
  %63 = icmp ne %struct.inode** %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode** %65, %struct.inode*** %10, align 8
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %67 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %66, i32 0, i32 1
  %68 = load %struct.inode**, %struct.inode*** %67, align 8
  store %struct.inode** %68, %struct.inode*** %9, align 8
  br label %73

69:                                               ; preds = %56
  %70 = load %struct.inode**, %struct.inode*** %9, align 8
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %72 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %71, i32 0, i32 1
  store %struct.inode** %70, %struct.inode*** %72, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.inode**, %struct.inode*** %10, align 8
  %78 = call i32 @kfree(%struct.inode** %77)
  br label %79

79:                                               ; preds = %73, %23
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @NUM_LOCAL_SYSTEM_INODES, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @OCFS2_FIRST_LOCAL_SYSTEM_INODE, align 4
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %82, %85
  store i32 %86, i32* %8, align 4
  %87 = load %struct.inode**, %struct.inode*** %9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.inode*, %struct.inode** %87, i64 %89
  store %struct.inode** %90, %struct.inode*** %4, align 8
  br label %91

91:                                               ; preds = %79, %52
  %92 = load %struct.inode**, %struct.inode*** %4, align 8
  ret %struct.inode** %92
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inode** @kzalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @kfree(%struct.inode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

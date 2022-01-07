; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_inode.c_xchk_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_inode.c_xchk_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xfs_dinode = type { i32 }
%struct.TYPE_7__ = type { i32 }

@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_inode(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_dinode, align 4
  %5 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %12 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xchk_ino_set_corrupt(%struct.xfs_scrub* %11, i32 %16)
  store i32 0, i32* %2, align 4
  br label %66

18:                                               ; preds = %1
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @xfs_inode_to_disk(%struct.TYPE_6__* %21, %struct.xfs_dinode* %4, i32 0)
  %23 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xchk_dinode(%struct.xfs_scrub* %23, %struct.xfs_dinode* %4, i32 %28)
  %30 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %31 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %64

39:                                               ; preds = %18
  %40 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISREG(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %50 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %51 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xchk_inode_check_reflink_iflag(%struct.xfs_scrub* %49, i32 %54)
  br label %56

56:                                               ; preds = %48, %39
  %57 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %58 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %59 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xchk_inode_xref(%struct.xfs_scrub* %57, i32 %62, %struct.xfs_dinode* %4)
  br label %64

64:                                               ; preds = %56, %38
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @xchk_ino_set_corrupt(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xfs_inode_to_disk(%struct.TYPE_6__*, %struct.xfs_dinode*, i32) #1

declare dso_local i32 @xchk_dinode(%struct.xfs_scrub*, %struct.xfs_dinode*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__*) #1

declare dso_local i32 @xchk_inode_check_reflink_iflag(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xchk_inode_xref(%struct.xfs_scrub*, i32, %struct.xfs_dinode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

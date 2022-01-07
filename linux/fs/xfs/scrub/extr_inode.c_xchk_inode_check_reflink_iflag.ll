; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_inode.c_xchk_inode_check_reflink_iflag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_inode.c_xchk_inode_check_reflink_iflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_scrub*, i32)* @xchk_inode_check_reflink_iflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xchk_inode_check_reflink_iflag(%struct.xfs_scrub* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 2
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %5, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = call i32 @xfs_sb_version_hasreflink(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @xfs_reflink_inode_has_shared_extents(i32 %19, i32 %22, i32* %6)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @XFS_INO_TO_AGNO(%struct.xfs_mount* %25, i32 %26)
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @XFS_INO_TO_AGBNO(%struct.xfs_mount* %28, i32 %29)
  %31 = call i32 @xchk_xref_process_error(%struct.xfs_scrub* %24, i32 %27, i32 %30, i32* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  br label %61

34:                                               ; preds = %16
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @xfs_is_reflink_inode(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @xchk_ino_set_preen(%struct.xfs_scrub* %44, i32 %45)
  br label %61

47:                                               ; preds = %40, %34
  %48 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @xfs_is_reflink_inode(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @xchk_ino_set_corrupt(%struct.xfs_scrub* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %53, %47
  br label %61

61:                                               ; preds = %15, %33, %60, %43
  ret void
}

declare dso_local i32 @xfs_sb_version_hasreflink(i32*) #1

declare dso_local i32 @xfs_reflink_inode_has_shared_extents(i32, i32, i32*) #1

declare dso_local i32 @xchk_xref_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

declare dso_local i32 @XFS_INO_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_INO_TO_AGBNO(%struct.xfs_mount*, i32) #1

declare dso_local i64 @xfs_is_reflink_inode(i32) #1

declare dso_local i32 @xchk_ino_set_preen(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xchk_ino_set_corrupt(%struct.xfs_scrub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_attr.c_xchk_setup_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_attr.c_xchk_setup_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32 }
%struct.xfs_inode = type { i32 }

@XCHK_TRY_HARDER = common dso_local global i32 0, align 4
@XATTR_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_setup_xattr(%struct.xfs_scrub* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XCHK_TRY_HARDER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %15 = load i32, i32* @XATTR_SIZE_MAX, align 4
  %16 = call i32 @xchk_setup_xattr_buf(%struct.xfs_scrub* %14, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %25 = call i32 @xchk_setup_inode_contents(%struct.xfs_scrub* %23, %struct.xfs_inode* %24, i32 0)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @xchk_setup_xattr_buf(%struct.xfs_scrub*, i32, i32) #1

declare dso_local i32 @xchk_setup_inode_contents(%struct.xfs_scrub*, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

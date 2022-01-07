; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_verify_forkoff.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_verify_forkoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dinode = type { i32, i32, i32 }
%struct.xfs_mount = type { i32 }

@__this_address = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_dinode*, %struct.xfs_mount*)* @xfs_dinode_verify_forkoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_dinode_verify_forkoff(%struct.xfs_dinode* %0, %struct.xfs_mount* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_dinode*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_dinode* %0, %struct.xfs_dinode** %4, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %5, align 8
  %6 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %7 = call i32 @XFS_DFORK_Q(%struct.xfs_dinode* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32* null, i32** %3, align 8
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %38 [
    i32 130, label %14
    i32 128, label %24
    i32 129, label %24
    i32 131, label %24
  ]

14:                                               ; preds = %10
  %15 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @roundup(i32 4, i32 8)
  %19 = ashr i32 %18, 3
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32*, i32** @__this_address, align 8
  store i32* %22, i32** %3, align 8
  br label %41

23:                                               ; preds = %14
  br label %40

24:                                               ; preds = %10, %10, %10
  %25 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %29 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %30 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @XFS_LITINO(%struct.xfs_mount* %28, i32 %31)
  %33 = ashr i32 %32, 3
  %34 = icmp sge i32 %27, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32*, i32** @__this_address, align 8
  store i32* %36, i32** %3, align 8
  br label %41

37:                                               ; preds = %24
  br label %40

38:                                               ; preds = %10
  %39 = load i32*, i32** @__this_address, align 8
  store i32* %39, i32** %3, align 8
  br label %41

40:                                               ; preds = %37, %23
  store i32* null, i32** %3, align 8
  br label %41

41:                                               ; preds = %40, %38, %35, %21, %9
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i32 @XFS_DFORK_Q(%struct.xfs_dinode*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @XFS_LITINO(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

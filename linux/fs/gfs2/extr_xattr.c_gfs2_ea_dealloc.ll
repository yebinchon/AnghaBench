; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_ea_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_ea_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }

@NO_UID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@NO_GID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@ea_dealloc_unstuffed = common dso_local global i32 0, align 4
@GFS2_DIF_EA_INDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_ea_dealloc(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %5 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %6 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %5, i32 0, i32 1
  %7 = call i32 @GFS2_SB(i32* %6)
  %8 = call i32 @gfs2_rindex_update(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %15 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  %16 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  %17 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %13
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %24 = load i32, i32* @ea_dealloc_unstuffed, align 4
  %25 = call i32 @ea_foreach(%struct.gfs2_inode* %23, i32 %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %46

29:                                               ; preds = %22
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFS2_DIF_EA_INDIRECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %38 = call i32 @ea_dealloc_indirect(%struct.gfs2_inode* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %45 = call i32 @ea_dealloc_block(%struct.gfs2_inode* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %41, %28
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %48 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %20, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @gfs2_rindex_update(i32) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @ea_foreach(%struct.gfs2_inode*, i32, i32*) #1

declare dso_local i32 @ea_dealloc_indirect(%struct.gfs2_inode*) #1

declare dso_local i32 @ea_dealloc_block(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

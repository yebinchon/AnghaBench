; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_alloc_skeleton.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_alloc_skeleton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_ea_request = type { i32 }
%struct.gfs2_alloc_parms = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i32, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)*, i8*)* @ea_alloc_skeleton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_alloc_skeleton(%struct.gfs2_inode* %0, %struct.gfs2_ea_request* %1, i32 %2, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_ea_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gfs2_alloc_parms, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.gfs2_ea_request* %1, %struct.gfs2_ea_request** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)* %3, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = call i32 @GFS2_SB(%struct.TYPE_4__* %17)
  %19 = call i32 @gfs2_rindex_update(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %89

24:                                               ; preds = %5
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %26 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %25, %struct.gfs2_alloc_parms* %12)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %89

31:                                               ; preds = %24
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %33 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %32, %struct.gfs2_alloc_parms* %12)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %85

37:                                               ; preds = %31
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = call i32 @GFS2_SB(%struct.TYPE_4__* %39)
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %43, i32 %44)
  %46 = add nsw i64 %42, %45
  %47 = load i64, i64* @RES_DINODE, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @RES_STATFS, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* @RES_QUOTA, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @gfs2_trans_begin(i32 %40, i64 %52, i32 0)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %82

57:                                               ; preds = %37
  %58 = load i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)*, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)** %10, align 8
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %60 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 %58(%struct.gfs2_inode* %59, %struct.gfs2_ea_request* %60, i8* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %77

66:                                               ; preds = %57
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 0
  %69 = call i32 @current_time(%struct.TYPE_4__* %68)
  %70 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %71 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %76 = call i32 @__mark_inode_dirty(%struct.TYPE_4__* %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %65
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %79 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %78, i32 0, i32 0
  %80 = call i32 @GFS2_SB(%struct.TYPE_4__* %79)
  %81 = call i32 @gfs2_trans_end(i32 %80)
  br label %82

82:                                               ; preds = %77, %56
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %84 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %83)
  br label %85

85:                                               ; preds = %82, %36
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %87 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %29, %22
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @gfs2_rindex_update(i32) #1

declare dso_local i32 @GFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(i32, i64, i32) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @current_time(%struct.TYPE_4__*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @gfs2_trans_end(i32) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

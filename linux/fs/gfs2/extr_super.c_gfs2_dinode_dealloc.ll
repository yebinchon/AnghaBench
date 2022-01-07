; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_dinode_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_dinode_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_holder = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NO_UID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@NO_GID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_RG_BIT = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @gfs2_dinode_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dinode_dealloc(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca %struct.gfs2_holder, align 4
  %7 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 1
  %10 = call %struct.gfs2_sbd* @GFS2_SB(i32* %9)
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %4, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 1
  %13 = call i32 @gfs2_get_inode_blocks(i32* %12)
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %17 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %16)
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %22 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %88

27:                                               ; preds = %20
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %29 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  %30 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  %31 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %88

36:                                               ; preds = %27
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %37, i32 %40, i32 1)
  store %struct.gfs2_rgrpd* %41, %struct.gfs2_rgrpd** %5, align 8
  %42 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %43 = icmp ne %struct.gfs2_rgrpd* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %46 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %84

49:                                               ; preds = %36
  %50 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %54 = call i32 @gfs2_glock_nq_init(i32 %52, i32 %53, i32 0, %struct.gfs2_holder* %6)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %84

58:                                               ; preds = %49
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %60 = load i64, i64* @RES_RG_BIT, align 8
  %61 = load i64, i64* @RES_STATFS, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @RES_QUOTA, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %59, i64 %64, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  br label %82

74:                                               ; preds = %58
  %75 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %77 = call i32 @gfs2_free_di(%struct.gfs2_rgrpd* %75, %struct.gfs2_inode* %76)
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %79 = call i32 @gfs2_final_release_pages(%struct.gfs2_inode* %78)
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %81 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %80)
  br label %82

82:                                               ; preds = %74, %73
  %83 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  br label %84

84:                                               ; preds = %82, %57, %44
  %85 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %86 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %34, %25, %15
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_get_inode_blocks(i32*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_free_di(%struct.gfs2_rgrpd*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_final_release_pages(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

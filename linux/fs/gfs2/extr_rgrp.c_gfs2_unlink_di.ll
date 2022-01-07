; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_unlink_di.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_unlink_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_unlink_di(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %7)
  store %struct.gfs2_inode* %8, %struct.gfs2_inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %9)
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %4, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %14, i32 %15, i32 1)
  store %struct.gfs2_rgrpd* %16, %struct.gfs2_rgrpd** %5, align 8
  %17 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %18 = icmp ne %struct.gfs2_rgrpd* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %22 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %25 = call i32 @rgblk_free(%struct.gfs2_sbd* %21, %struct.gfs2_rgrpd* %22, i32 %23, i32 1, i32 %24)
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %30 = call i32 @trace_gfs2_block_alloc(%struct.gfs2_inode* %26, %struct.gfs2_rgrpd* %27, i32 %28, i32 1, i32 %29)
  %31 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %32 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @gfs2_trans_add_meta(i32 %33, %struct.TYPE_6__* %39)
  %41 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %42 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd* %41, i32 %49)
  %51 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %52 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @be32_add_cpu(i32* %54, i32 1)
  br label %56

56:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @rgblk_free(%struct.gfs2_sbd*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @trace_gfs2_block_alloc(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

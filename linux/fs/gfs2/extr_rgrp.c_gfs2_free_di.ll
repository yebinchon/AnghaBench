; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_free_di.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_free_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32, %struct.gfs2_sbd* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@GFS2_BLKST_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_free_di(%struct.gfs2_rgrpd* %0, %struct.gfs2_inode* %1) #0 {
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  store %struct.gfs2_inode* %1, %struct.gfs2_inode** %4, align 8
  %6 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %7 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %6, i32 0, i32 5
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %5, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %10 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %15 = call i32 @rgblk_free(%struct.gfs2_sbd* %9, %struct.gfs2_rgrpd* %10, i32 %13, i32 1, i32 %14)
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %22 = call i32 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %25 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @gfs2_trans_add_meta(i32 %34, %struct.TYPE_8__* %40)
  %42 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %43 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd* %42, i32 %50)
  %52 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @be32_add_cpu(i32* %55, i32 -1)
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %58 = call i32 @gfs2_statfs_change(%struct.gfs2_sbd* %57, i32 0, i32 1, i32 -1)
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %60 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %65 = call i32 @trace_gfs2_block_alloc(%struct.gfs2_inode* %59, %struct.gfs2_rgrpd* %60, i32 %63, i32 1, i32 %64)
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gfs2_quota_change(%struct.gfs2_inode* %66, i32 -1, i32 %70, i32 %74)
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %78 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gfs2_meta_wipe(%struct.gfs2_inode* %76, i32 %79, i32 1)
  ret void
}

declare dso_local i32 @rgblk_free(%struct.gfs2_sbd*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @gfs2_statfs_change(%struct.gfs2_sbd*, i32, i32, i32) #1

declare dso_local i32 @trace_gfs2_block_alloc(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_quota_change(%struct.gfs2_inode*, i32, i32, i32) #1

declare dso_local i32 @gfs2_meta_wipe(%struct.gfs2_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

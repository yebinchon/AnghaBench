; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c___gfs2_free_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c___gfs2_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i64, i32 }
%struct.gfs2_rgrpd = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_sbd = type { i32 }

@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@GFS2_RGF_TRIMMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__gfs2_free_blocks(%struct.gfs2_inode* %0, %struct.gfs2_rgrpd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_rgrpd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.gfs2_rgrpd* %1, %struct.gfs2_rgrpd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32* %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %11, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %20 = call i32 @rgblk_free(%struct.gfs2_sbd* %15, %struct.gfs2_rgrpd* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %22 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %26 = call i32 @trace_gfs2_block_alloc(%struct.gfs2_inode* %21, %struct.gfs2_rgrpd* %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %29 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @GFS2_RGF_TRIMMED, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %35 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %39 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %42 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @gfs2_trans_add_meta(i32 %40, %struct.TYPE_4__* %46)
  %48 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %49 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %50 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd* %48, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %5
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60, %5
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @gfs2_meta_wipe(%struct.gfs2_inode* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @rgblk_free(%struct.gfs2_sbd*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @trace_gfs2_block_alloc(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @gfs2_meta_wipe(%struct.gfs2_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

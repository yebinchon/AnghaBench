; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32*, %struct.TYPE_2__*, %struct.jffs2_sb_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.super_block*, %struct.TYPE_2__* }
%struct.fs_context = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"jffs2_get_sb_mtd(): New superblock for device %d (\22%s\22)\0A\00", align 1
@jffs2_super_operations = common dso_local global i32 0, align 4
@jffs2_export_ops = common dso_local global i32 0, align 4
@SB_NOATIME = common dso_local global i32 0, align 4
@jffs2_xattr_handlers = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @jffs2_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.fs_context* %1, %struct.fs_context** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 5
  %8 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  store %struct.jffs2_sb_info* %8, %struct.jffs2_sb_info** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18)
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %23, i32 0, i32 7
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %27 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %26, i32 0, i32 6
  store %struct.super_block* %25, %struct.super_block** %27, align 8
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 5
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %32 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %31, i32 0, i32 4
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %35 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %34, i32 0, i32 3
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %38 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %37, i32 0, i32 2
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %40, i32 0, i32 1
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 3
  store i32* @jffs2_super_operations, i32** %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 2
  store i32* @jffs2_export_ops, i32** %49, align 8
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SB_NOATIME, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.super_block*, %struct.super_block** %3, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @jffs2_xattr_handlers, align 4
  %58 = load %struct.super_block*, %struct.super_block** %3, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.super_block*, %struct.super_block** %3, align 8
  %61 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %62 = call i32 @jffs2_do_fill_super(%struct.super_block* %60, %struct.fs_context* %61)
  ret i32 %62
}

declare dso_local i32 @jffs2_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @jffs2_do_fill_super(%struct.super_block*, %struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

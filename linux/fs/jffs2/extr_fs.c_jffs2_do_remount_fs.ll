; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_fs.c_jffs2_do_remount_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_fs.c_jffs2_do_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_context = type { i32 }
%struct.jffs2_sb_info = type { i32, i32 }

@JFFS2_SB_FLAG_RO = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@SB_NOATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_do_remount_fs(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.jffs2_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(%struct.super_block* %7)
  store %struct.jffs2_sb_info* %8, %struct.jffs2_sb_info** %6, align 8
  %9 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %10 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @JFFS2_SB_FLAG_RO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call i32 @sb_rdonly(%struct.super_block* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EROFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %15, %2
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = call i32 @sb_rdonly(%struct.super_block* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %28 = call i32 @jffs2_stop_garbage_collect_thread(%struct.jffs2_sb_info* %27)
  %29 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %30 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %33 = call i32 @jffs2_flush_wbuf_pad(%struct.jffs2_sb_info* %32)
  %34 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %26, %22
  %38 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %39 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SB_RDONLY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %46 = call i32 @jffs2_start_garbage_collect_thread(%struct.jffs2_sb_info* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* @SB_NOATIME, align 4
  %49 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %50 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @jffs2_stop_garbage_collect_thread(%struct.jffs2_sb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jffs2_flush_wbuf_pad(%struct.jffs2_sb_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jffs2_start_garbage_collect_thread(%struct.jffs2_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

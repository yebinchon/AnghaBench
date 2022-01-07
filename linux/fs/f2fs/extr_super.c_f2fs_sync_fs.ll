; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.cp_control = type { i32 }

@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@SBI_POR_DOING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cp_control, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %12 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %18 = load i32, i32* @SBI_CP_DISABLED, align 4
  %19 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %17, i32 %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %53

23:                                               ; preds = %16
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @trace_f2fs_sync_fs(%struct.super_block* %24, i32 %25)
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = load i32, i32* @SBI_POR_DOING, align 4
  %29 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %27, i32 %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %40 = call i32 @__get_cp_reason(%struct.f2fs_sb_info* %39)
  %41 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %46 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %45, %struct.cp_control* %8)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %38, %35
  %51 = call i32 @f2fs_trace_ios(i32* null, i32 1)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %32, %22, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_sync_fs(%struct.super_block*, i32) #1

declare dso_local i32 @__get_cp_reason(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @f2fs_trace_ios(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

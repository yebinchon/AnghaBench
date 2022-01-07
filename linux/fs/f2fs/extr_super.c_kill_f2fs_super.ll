; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_kill_f2fs_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_kill_f2fs_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i64 }
%struct.f2fs_sb_info = type { i32 }
%struct.cp_control = type { i32 }

@SBI_IS_CLOSE = common dso_local global i32 0, align 4
@SBI_IS_DIRTY = common dso_local global i32 0, align 4
@CP_UMOUNT_FLAG = common dso_local global i32 0, align 4
@CP_UMOUNT = common dso_local global i32 0, align 4
@SBI_IS_RECOVERED = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @kill_f2fs_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_f2fs_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.cp_control, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %3, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %13 = load i32, i32* @SBI_IS_CLOSE, align 4
  %14 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %12, i32 %13)
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = call i32 @f2fs_stop_gc_thread(%struct.f2fs_sb_info* %15)
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = call i32 @f2fs_stop_discard_thread(%struct.f2fs_sb_info* %17)
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = load i32, i32* @SBI_IS_DIRTY, align 4
  %21 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %25 = load i32, i32* @CP_UMOUNT_FLAG, align 4
  %26 = call i32 @is_set_ckpt_flags(%struct.f2fs_sb_info* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %9
  %29 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %4, i32 0, i32 0
  %30 = load i32, i32* @CP_UMOUNT, align 4
  store i32 %30, i32* %29, align 4
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %32 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %31, %struct.cp_control* %4)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = load i32, i32* @SBI_IS_RECOVERED, align 4
  %36 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.super_block*, %struct.super_block** %2, align 8
  %40 = call i64 @f2fs_readonly(%struct.super_block* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @SB_RDONLY, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.super_block*, %struct.super_block** %2, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %38, %33
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.super_block*, %struct.super_block** %2, align 8
  %52 = call i32 @kill_block_super(%struct.super_block* %51)
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block*) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_stop_gc_thread(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_stop_discard_thread(%struct.f2fs_sb_info*) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @is_set_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i64 @f2fs_readonly(%struct.super_block*) #1

declare dso_local i32 @kill_block_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

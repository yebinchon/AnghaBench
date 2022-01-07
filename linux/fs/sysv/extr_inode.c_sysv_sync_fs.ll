; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_inode.c_sysv_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_inode.c_sysv_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i64*, i32, i32, i64* }

@FSTYPE_SYSV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @sysv_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysv_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %8)
  store %struct.sysv_sb_info* %9, %struct.sysv_sb_info** %5, align 8
  %10 = call i32 (...) @ktime_get_real_seconds()
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %16 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %16, i32 0, i32 4
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @fs32_to_cpu(%struct.sysv_sb_info* %15, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %22 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FSTYPE_SYSV4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %2
  %27 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 2082905400, %32
  %34 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %31, i64 %33)
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 2082905400, %38
  %40 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %37, i64 %39)
  %41 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %42 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %26
  %45 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %45, i64 %46)
  %48 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  store i64 %47, i64* %50, align 8
  %51 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mark_buffer_dirty(i32 %53)
  br label %55

55:                                               ; preds = %44, %2
  %56 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %57 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  ret i32 0
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @fs32_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i64 @cpu_to_fs32(%struct.sysv_sb_info*, i64) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

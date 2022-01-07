; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_inode.c_sysv_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_inode.c_sysv_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @sysv_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysv_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.sysv_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %4)
  store %struct.sysv_sb_info* %5, %struct.sysv_sb_info** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call i32 @sb_rdonly(%struct.super_block* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @mark_buffer_dirty(i64 %12)
  %14 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mark_buffer_dirty(i64 %24)
  br label %26

26:                                               ; preds = %21, %9
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @brelse(i64 %30)
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %36 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %41 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @brelse(i64 %42)
  br label %44

44:                                               ; preds = %39, %27
  %45 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %46 = call i32 @kfree(%struct.sysv_sb_info* %45)
  ret void
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(i64) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @kfree(%struct.sysv_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

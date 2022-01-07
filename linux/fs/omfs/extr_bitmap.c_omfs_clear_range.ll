; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_omfs_clear_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_omfs_clear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.omfs_sb_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omfs_clear_range(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omfs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.omfs_sb_info* @OMFS_SB(%struct.super_block* %14)
  store %struct.omfs_sb_info* %15, %struct.omfs_sb_info** %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 8, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @do_div(i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %8, align 8
  %27 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

31:                                               ; preds = %3
  %32 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @set_run(%struct.super_block* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %8, align 8
  %42 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %31, %30
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(%struct.super_block*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_run(%struct.super_block*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

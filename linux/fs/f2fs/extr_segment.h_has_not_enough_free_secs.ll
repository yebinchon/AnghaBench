; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_has_not_enough_free_secs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_has_not_enough_free_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4
@F2FS_DIRTY_DENTS = common dso_local global i32 0, align 4
@F2FS_DIRTY_IMETA = common dso_local global i32 0, align 4
@SBI_POR_DOING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, i32)* @has_not_enough_free_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_not_enough_free_secs(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %12 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %13 = call i32 @get_blocktype_secs(%struct.f2fs_sb_info* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %15 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  %16 = call i32 @get_blocktype_secs(%struct.f2fs_sb_info* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %18 = load i32, i32* @F2FS_DIRTY_IMETA, align 4
  %19 = call i32 @get_blocktype_secs(%struct.f2fs_sb_info* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %21 = load i32, i32* @SBI_POR_DOING, align 4
  %22 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %20, i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %28 = call i64 @free_sections(%struct.f2fs_sb_info* %27)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %33 = call i64 @reserved_sections(%struct.f2fs_sb_info* %32)
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %40 = call i64 @has_curseg_enough_space(%struct.f2fs_sb_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %64

43:                                               ; preds = %38, %26
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %45 = call i64 @free_sections(%struct.f2fs_sb_info* %44)
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 2, %50
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %57 = call i64 @reserved_sections(%struct.f2fs_sb_info* %56)
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = icmp sle i64 %48, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %43, %42, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @get_blocktype_secs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @free_sections(%struct.f2fs_sb_info*) #1

declare dso_local i64 @reserved_sections(%struct.f2fs_sb_info*) #1

declare dso_local i64 @has_curseg_enough_space(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

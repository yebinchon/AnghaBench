; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_search_hotfix_map_for_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_search_hotfix_map_for_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_search_hotfix_map_for_range(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %9)
  store %struct.hpfs_sb_info* %10, %struct.hpfs_sb_info** %8, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %14 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %11
  %21 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %22 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %20
  %31 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %32 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %30
  %44 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %45 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub nsw i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %43, %30, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

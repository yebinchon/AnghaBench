; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_fragment.c_squashfs_frag_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_fragment.c_squashfs_frag_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32, i32* }
%struct.squashfs_fragment_entry = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @squashfs_frag_lookup(%struct.super_block* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.squashfs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.squashfs_fragment_entry, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %15, align 8
  store %struct.squashfs_sb_info* %16, %struct.squashfs_sb_info** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %19 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SQUASHFS_FRAGMENT_INDEX(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @SQUASHFS_FRAGMENT_INDEX_OFFSET(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %31 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le64_to_cpu(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = call i32 @squashfs_read_metadata(%struct.super_block* %38, %struct.squashfs_fragment_entry* %12, i32* %13, i32* %10, i32 8)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.squashfs_fragment_entry, %struct.squashfs_fragment_entry* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le64_to_cpu(i32 %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.squashfs_fragment_entry, %struct.squashfs_fragment_entry* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @squashfs_block_size(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %42, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @SQUASHFS_FRAGMENT_INDEX(i32) #1

declare dso_local i32 @SQUASHFS_FRAGMENT_INDEX_OFFSET(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @squashfs_read_metadata(%struct.super_block*, %struct.squashfs_fragment_entry*, i32*, i32*, i32) #1

declare dso_local i32 @squashfs_block_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

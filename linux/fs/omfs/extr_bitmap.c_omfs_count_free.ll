; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_omfs_count_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_omfs_count_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.omfs_sb_info = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omfs_count_free(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.omfs_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.omfs_sb_info* @OMFS_SB(%struct.super_block* %7)
  store %struct.omfs_sb_info* %8, %struct.omfs_sb_info** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 8
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %16 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %22 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @bitmap_weight(i32 %27, i32 %28)
  %30 = sub nsw i32 %20, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(%struct.super_block*) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

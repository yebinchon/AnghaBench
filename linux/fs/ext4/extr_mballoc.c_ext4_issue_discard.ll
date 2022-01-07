; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_issue_discard.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_issue_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.bio = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i32, %struct.bio**)* @ext4_issue_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_issue_discard(%struct.super_block* %0, i32 %1, i32 %2, i32 %3, %struct.bio** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio**, align 8
  %12 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bio** %4, %struct.bio*** %11, align 8
  %13 = load %struct.super_block*, %struct.super_block** %7, align 8
  %14 = call i32 @EXT4_SB(%struct.super_block* %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @EXT4_C2B(i32 %14, i32 %15)
  %17 = sext i32 %16 to i64
  %18 = load %struct.super_block*, %struct.super_block** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @ext4_group_first_block_no(%struct.super_block* %18, i32 %19)
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %12, align 8
  %22 = load %struct.super_block*, %struct.super_block** %7, align 8
  %23 = call i32 @EXT4_SB(%struct.super_block* %22)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @EXT4_C2B(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.super_block*, %struct.super_block** %7, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @trace_ext4_discard_blocks(%struct.super_block* %26, i64 %27, i32 %28)
  %30 = load %struct.bio**, %struct.bio*** %11, align 8
  %31 = icmp ne %struct.bio** %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %5
  %33 = load %struct.super_block*, %struct.super_block** %7, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.super_block*, %struct.super_block** %7, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 9
  %42 = shl i32 %37, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.super_block*, %struct.super_block** %7, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 9
  %48 = shl i32 %43, %47
  %49 = load i32, i32* @GFP_NOFS, align 4
  %50 = load %struct.bio**, %struct.bio*** %11, align 8
  %51 = call i32 @__blkdev_issue_discard(i32 %35, i32 %42, i32 %48, i32 %49, i32 0, %struct.bio** %50)
  store i32 %51, i32* %6, align 4
  br label %58

52:                                               ; preds = %5
  %53 = load %struct.super_block*, %struct.super_block** %7, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GFP_NOFS, align 4
  %57 = call i32 @sb_issue_discard(%struct.super_block* %53, i64 %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %32
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @EXT4_C2B(i32, i32) #1

declare dso_local i32 @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @trace_ext4_discard_blocks(%struct.super_block*, i64, i32) #1

declare dso_local i32 @__blkdev_issue_discard(i32, i32, i32, i32, i32, %struct.bio**) #1

declare dso_local i32 @sb_issue_discard(%struct.super_block*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_next_leaf_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_next_leaf_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_ext_path*)* @ext4_ext_next_leaf_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_next_leaf_block(%struct.ext4_ext_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_ext_path*, align 8
  %4 = alloca i32, align 4
  store %struct.ext4_ext_path* %0, %struct.ext4_ext_path** %3, align 8
  %5 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %6 = icmp eq %struct.ext4_ext_path* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %10 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %48, %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i64 %25
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %29, i64 %31
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_2__* @EXT_LAST_INDEX(i32 %34)
  %36 = icmp ne %struct.TYPE_2__* %28, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %22
  %38 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %38, i64 %40
  %42 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %53

48:                                               ; preds = %22
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %37, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @EXT_LAST_INDEX(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_find_goal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_find_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.TYPE_2__*, %struct.ext4_extent* }
%struct.TYPE_2__ = type { i64 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.ext4_ext_path*, i64)* @ext4_ext_find_goal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_ext_find_goal(%struct.inode* %0, %struct.ext4_ext_path* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_ext_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_extent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %13 = icmp ne %struct.ext4_ext_path* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %3
  %15 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %18, i64 %20
  %22 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %21, i32 0, i32 2
  %23 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  store %struct.ext4_extent* %23, %struct.ext4_extent** %9, align 8
  %24 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %25 = icmp ne %struct.ext4_extent* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %14
  %27 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %28 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %30 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = sub nsw i64 %38, %39
  %41 = add nsw i64 %37, %40
  store i64 %41, i64* %4, align 8
  br label %69

42:                                               ; preds = %26
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub nsw i64 %44, %45
  %47 = sub nsw i64 %43, %46
  store i64 %47, i64* %4, align 8
  br label %69

48:                                               ; preds = %14
  %49 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %49, i64 %51
  %53 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i64 %59
  %61 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %4, align 8
  br label %69

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %3
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call i64 @ext4_inode_to_goal_block(%struct.inode* %67)
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %66, %56, %42, %36
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_inode_to_goal_block(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

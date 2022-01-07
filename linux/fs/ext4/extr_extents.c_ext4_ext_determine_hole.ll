; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_determine_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_determine_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.ext4_ext_path*, i64*)* @ext4_ext_determine_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_ext_determine_hole(%struct.inode* %0, %struct.ext4_ext_path* %1, i64* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_extent*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @ext_depth(%struct.inode* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %13, i64 %15
  %17 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %16, i32 0, i32 0
  %18 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  store %struct.ext4_extent* %18, %struct.ext4_extent** %8, align 8
  %19 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %20 = icmp eq %struct.ext4_extent* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64*, i64** %6, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  store i64 %23, i64* %9, align 8
  br label %76

24:                                               ; preds = %3
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %28 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %34 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %36, %38
  store i64 %39, i64* %9, align 8
  br label %75

40:                                               ; preds = %24
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %44 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %48 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %47)
  %49 = add nsw i64 %46, %48
  %50 = icmp sge i64 %42, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %40
  %52 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %53 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le32_to_cpu(i32 %54)
  %56 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %57 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %56)
  %58 = add nsw i64 %55, %57
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  %60 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %61 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i64, i64* %10, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %68, %70
  store i64 %71, i64* %9, align 8
  br label %74

72:                                               ; preds = %40
  %73 = call i32 (...) @BUG()
  br label %74

74:                                               ; preds = %72, %51
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %21
  %77 = load i64, i64* %9, align 8
  ret i64 %77
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

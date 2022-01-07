; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_valid_extent_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_valid_extent_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i64 }
%struct.ext4_extent = type { i32 }
%struct.ext4_super_block = type { i32 }
%struct.ext4_extent_idx = type { i32 }
%struct.TYPE_2__ = type { %struct.ext4_super_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_header*, i32)* @ext4_valid_extent_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_valid_extent_entries(%struct.inode* %0, %struct.ext4_extent_header* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_extent_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.ext4_extent*, align 8
  %10 = alloca %struct.ext4_super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_extent_idx*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_extent_header* %1, %struct.ext4_extent_header** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %17 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %96

21:                                               ; preds = %3
  %22 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %23 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call zeroext i16 @le16_to_cpu(i64 %24)
  store i16 %25, i16* %8, align 2
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %21
  %29 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %30 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %29)
  store %struct.ext4_extent* %30, %struct.ext4_extent** %9, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_2__* @EXT4_SB(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.ext4_super_block*, %struct.ext4_super_block** %35, align 8
  store %struct.ext4_super_block* %36, %struct.ext4_super_block** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %66, %28
  %38 = load i16, i16* %8, align 2
  %39 = icmp ne i16 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %43 = call i32 @ext4_valid_extent(%struct.inode* %41, %struct.ext4_extent* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %96

46:                                               ; preds = %40
  %47 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %48 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le32_to_cpu(i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %52 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %61 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @cpu_to_le64(i32 %62)
  %64 = load %struct.ext4_super_block*, %struct.ext4_super_block** %10, align 8
  %65 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %96

66:                                               ; preds = %56, %46
  %67 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %68 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %67, i32 1
  store %struct.ext4_extent* %68, %struct.ext4_extent** %9, align 8
  %69 = load i16, i16* %8, align 2
  %70 = add i16 %69, -1
  store i16 %70, i16* %8, align 2
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = sub nsw i64 %74, 1
  store i64 %75, i64* %13, align 8
  br label %37

76:                                               ; preds = %37
  br label %95

77:                                               ; preds = %21
  %78 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %79 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %78)
  store %struct.ext4_extent_idx* %79, %struct.ext4_extent_idx** %15, align 8
  br label %80

80:                                               ; preds = %89, %77
  %81 = load i16, i16* %8, align 2
  %82 = icmp ne i16 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %15, align 8
  %86 = call i32 @ext4_valid_extent_idx(%struct.inode* %84, %struct.ext4_extent_idx* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %96

89:                                               ; preds = %83
  %90 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %15, align 8
  %91 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %90, i32 1
  store %struct.ext4_extent_idx* %91, %struct.ext4_extent_idx** %15, align 8
  %92 = load i16, i16* %8, align 2
  %93 = add i16 %92, -1
  store i16 %93, i16* %8, align 2
  br label %80

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %76
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %88, %59, %45, %20
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local zeroext i16 @le16_to_cpu(i64) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(i32) #1

declare dso_local i32 @ext4_valid_extent(%struct.inode*, %struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_valid_extent_idx(%struct.inode*, %struct.ext4_extent_idx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

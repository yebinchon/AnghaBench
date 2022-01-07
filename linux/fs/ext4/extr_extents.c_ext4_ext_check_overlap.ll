; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_check_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_check_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_extent = type { i8*, i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_sb_info*, %struct.inode*, %struct.ext4_extent*, %struct.ext4_ext_path*)* @ext4_ext_check_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_check_overlap(%struct.ext4_sb_info* %0, %struct.inode* %1, %struct.ext4_extent* %2, %struct.ext4_ext_path* %3) #0 {
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca %struct.ext4_ext_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %7, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %8, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %15 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @le32_to_cpu(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %19 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i32 @ext_depth(%struct.inode* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %22, i64 %24
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %88

30:                                               ; preds = %4
  %31 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i64 %34
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  %41 = call i64 @EXT4_LBLK_CMASK(%struct.ext4_sb_info* %31, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %30
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %47 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %88

52:                                               ; preds = %45
  %53 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @EXT4_LBLK_CMASK(%struct.ext4_sb_info* %53, i64 %54)
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %52, %30
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i64, i64* %9, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub nsw i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @cpu_to_le16(i64 %69)
  %71 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %72 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  store i32 1, i32* %13, align 4
  br label %73

73:                                               ; preds = %63, %56
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i64, i64* %10, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call i8* @cpu_to_le16(i64 %83)
  %85 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %86 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %80, %73
  br label %88

88:                                               ; preds = %87, %51, %29
  %89 = load i32, i32* %13, align 4
  ret i32 %89
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @EXT4_LBLK_CMASK(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

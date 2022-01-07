; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_check_eofblocks_fl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_check_eofblocks_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i64, %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i32 }

@EXT4_INODE_EOFBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64, %struct.ext4_ext_path*, i32)* @check_eofblocks_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_eofblocks_fl(i32* %0, %struct.inode* %1, i64 %2, %struct.ext4_ext_path* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent_header*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %18 = call i32 @ext4_test_inode_flag(%struct.inode* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %89

21:                                               ; preds = %5
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call i32 @ext_depth(%struct.inode* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %24, i64 %26
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i32 0, i32 1
  %29 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %28, align 8
  store %struct.ext4_extent_header* %29, %struct.ext4_extent_header** %14, align 8
  %30 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %14, align 8
  %31 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %82

39:                                               ; preds = %21
  %40 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %14, align 8
  %41 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %40)
  store %struct.ext4_extent* %41, %struct.ext4_extent** %15, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %47 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le32_to_cpu(i32 %48)
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %51 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %50)
  %52 = add nsw i64 %49, %51
  %53 = icmp slt i64 %45, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %89

55:                                               ; preds = %39
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %78, %55
  %59 = load i32, i32* %12, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %62, i64 %64
  %66 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %68, i64 %70
  %72 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %71, i32 0, i32 1
  %73 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %72, align 8
  %74 = call i64 @EXT_LAST_INDEX(%struct.ext4_extent_header* %73)
  %75 = icmp ne i64 %67, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %89

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  br label %58

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81, %38
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %85 = call i32 @ext4_clear_inode_flag(%struct.inode* %83, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @ext4_mark_inode_dirty(i32* %86, %struct.inode* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %82, %76, %54, %20
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

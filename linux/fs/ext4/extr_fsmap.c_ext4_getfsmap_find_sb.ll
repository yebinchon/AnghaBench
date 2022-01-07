; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_find_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_find_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.list_head = type { i32 }
%struct.ext4_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EXT4_FMR_OWN_FS = common dso_local global i32 0, align 4
@EXT4_FMR_OWN_GDT = common dso_local global i32 0, align 4
@EXT4_FMR_OWN_RESV_GDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, %struct.list_head*)* @ext4_getfsmap_find_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_getfsmap_find_sb(%struct.super_block* %0, i64 %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %14)
  store %struct.ext4_sb_info* %15, %struct.ext4_sb_info** %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ext4_group_first_block_no(%struct.super_block* %16, i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %20 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %26)
  %28 = udiv i64 %25, %27
  store i64 %28, i64* %12, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @ext4_bg_has_super(%struct.super_block* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load %struct.list_head*, %struct.list_head** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EXT4_FMR_OWN_FS, align 4
  %37 = call i32 @ext4_getfsmap_fill(%struct.list_head* %34, i32 %35, i32 1, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %4, align 4
  br label %91

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %3
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @ext4_bg_num_gdb(%struct.super_block* %46, i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %91

52:                                               ; preds = %45
  %53 = load %struct.list_head*, %struct.list_head** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @EXT4_FMR_OWN_GDT, align 4
  %57 = call i32 @ext4_getfsmap_fill(%struct.list_head* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %91

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = call i32 @ext4_has_feature_meta_bg(%struct.super_block* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69, %62
  %74 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %75 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.list_head*, %struct.list_head** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @EXT4_FMR_OWN_RESV_GDT, align 4
  %84 = call i32 @ext4_getfsmap_fill(%struct.list_head* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %69
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %87, %60, %51, %40
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_group_first_block_no(%struct.super_block*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i64 @ext4_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_getfsmap_fill(%struct.list_head*, i32, i32, i32) #1

declare dso_local i32 @ext4_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_has_feature_meta_bg(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

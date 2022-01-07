; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_num_overhead_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_num_overhead_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.ext4_group_desc*)* @ext4_num_overhead_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_num_overhead_clusters(%struct.super_block* %0, i32 %1, %struct.ext4_group_desc* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_group_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @ext4_group_first_block_no(%struct.super_block* %16, i32 %17)
  store i64 %18, i64* %13, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %15, align 8
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ext4_num_base_meta_clusters(%struct.super_block* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %27 = call i64 @ext4_block_bitmap(%struct.super_block* %25, %struct.ext4_group_desc* %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @ext4_block_in_group(%struct.super_block* %24, i64 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %3
  %32 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %35 = call i64 @ext4_block_bitmap(%struct.super_block* %33, %struct.ext4_group_desc* %34)
  %36 = load i64, i64* %13, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %32, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 -1, i32* %8, align 4
  br label %51

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.super_block*, %struct.super_block** %4, align 8
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %56 = call i64 @ext4_inode_bitmap(%struct.super_block* %54, %struct.ext4_group_desc* %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @ext4_block_in_group(%struct.super_block* %53, i64 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %52
  %61 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %62 = load %struct.super_block*, %struct.super_block** %4, align 8
  %63 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %64 = call i64 @ext4_inode_bitmap(%struct.super_block* %62, %struct.ext4_group_desc* %63)
  %65 = load i64, i64* %13, align 8
  %66 = sub nsw i64 %64, %65
  %67 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %61, i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 -1, i32* %9, align 4
  br label %80

72:                                               ; preds = %60
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %84 = call i64 @ext4_inode_table(%struct.super_block* %82, %struct.ext4_group_desc* %83)
  store i64 %84, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %137, %81
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %88 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %85
  %92 = load %struct.super_block*, %struct.super_block** %4, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @ext4_block_in_group(%struct.super_block* %92, i64 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %91
  %101 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i64, i64* %13, align 8
  %107 = sub nsw i64 %105, %106
  %108 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %101, i64 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116, %112, %100
  br label %137

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* %7, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %137

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %132, %91
  br label %137

137:                                              ; preds = %136, %129, %124
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %85

140:                                              ; preds = %85
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_num_base_meta_clusters(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_block_in_group(%struct.super_block*, i64, i32) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

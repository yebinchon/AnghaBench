; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_search_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_search_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, i32, %struct.ext4_extent_idx*, %struct.ext4_extent* }
%struct.ext4_extent_idx = type { i32 }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"path == NULL *logical %d!\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"EXT_FIRST_EXTENT != ex *logical %d ee_block %d!\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ix (%d) != EXT_FIRST_INDEX (%d) (depth %d)!\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"logical %d < ee_block %d + ee_len %d!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_ext_path*, i32*, i64*)* @ext4_ext_search_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_search_left(%struct.inode* %0, %struct.ext4_ext_path* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ext4_extent_idx*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %15 = icmp eq %struct.ext4_ext_path* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EFSCORRUPTED, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %184

26:                                               ; preds = %4
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i64*, i64** %9, align 8
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %34, i32 0, i32 3
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %35, align 8
  %37 = icmp eq %struct.ext4_extent* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %184

39:                                               ; preds = %33, %26
  %40 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %40, i64 %42
  %44 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i32 0, i32 3
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %44, align 8
  store %struct.ext4_extent* %45, %struct.ext4_extent** %11, align 8
  %46 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %47 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %51 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %143

55:                                               ; preds = %39
  %56 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %56, i64 %58
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(i32 %61)
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %64 = icmp ne %struct.ext4_extent* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %55
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %73 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load i32, i32* @EFSCORRUPTED, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %184

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %141, %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %12, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %142

84:                                               ; preds = %80
  %85 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i64 %87
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i32 0, i32 2
  %90 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %89, align 8
  store %struct.ext4_extent_idx* %90, %struct.ext4_extent_idx** %10, align 8
  %91 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %92 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %92, i64 %94
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32 %97)
  %99 = icmp ne %struct.ext4_extent_idx* %91, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %84
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %106 = icmp ne %struct.ext4_extent_idx* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %109 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32_to_cpu(i32 %110)
  br label %113

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %107
  %114 = phi i32 [ %111, %107 ], [ 0, %112 ]
  %115 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %115, i64 %117
  %119 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32 %120)
  %122 = icmp ne %struct.ext4_extent_idx* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %113
  %124 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %124, i64 %126
  %128 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32 %129)
  %131 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le32_to_cpu(i32 %132)
  br label %135

134:                                              ; preds = %113
  br label %135

135:                                              ; preds = %134, %123
  %136 = phi i32 [ %133, %123 ], [ 0, %134 ]
  %137 = load i32, i32* %12, align 4
  %138 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %136, i32 %137)
  %139 = load i32, i32* @EFSCORRUPTED, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %184

141:                                              ; preds = %84
  br label %80

142:                                              ; preds = %80
  store i32 0, i32* %5, align 4
  br label %184

143:                                              ; preds = %39
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %147 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le32_to_cpu(i32 %148)
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %149, %150
  %152 = icmp slt i32 %145, %151
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %143
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %161 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le32_to_cpu(i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %157, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %163, i32 %164)
  %166 = load i32, i32* @EFSCORRUPTED, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %184

168:                                              ; preds = %143
  %169 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %170 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le32_to_cpu(i32 %171)
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %172, %173
  %175 = sub nsw i32 %174, 1
  %176 = load i32*, i32** %8, align 8
  store i32 %175, i32* %176, align 4
  %177 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %178 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %177)
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = sub nsw i64 %181, 1
  %183 = load i64*, i64** %9, align 8
  store i64 %182, i64* %183, align 8
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %168, %156, %142, %135, %68, %38, %19
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i32, ...) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(i32) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

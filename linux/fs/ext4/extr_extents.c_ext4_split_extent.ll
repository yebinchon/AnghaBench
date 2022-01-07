; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_split_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_split_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }
%struct.ext4_map_blocks = type { i32, i64 }

@EXT4_EXT_MAY_ZEROOUT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT1 = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT2 = common dso_local global i32 0, align 4
@EXT4_EXT_DATA_VALID2 = common dso_local global i32 0, align 4
@EXT4_EXT_DATA_VALID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected hole at %lu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path**, %struct.ext4_map_blocks*, i32, i32)* @ext4_split_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_split_extent(i32* %0, %struct.inode* %1, %struct.ext4_ext_path** %2, %struct.ext4_map_blocks* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_ext_path**, align 8
  %11 = alloca %struct.ext4_map_blocks*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_ext_path*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ext4_extent*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_ext_path** %2, %struct.ext4_ext_path*** %10, align 8
  store %struct.ext4_map_blocks* %3, %struct.ext4_map_blocks** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %10, align 8
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %24, align 8
  store %struct.ext4_ext_path* %25, %struct.ext4_ext_path** %14, align 8
  store i32 0, i32* %19, align 4
  %26 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %27 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %23, align 4
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call i32 @ext_depth(%struct.inode* %29)
  store i32 %30, i32* %18, align 4
  %31 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %32 = load i32, i32* %18, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %31, i64 %33
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %34, i32 0, i32 0
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %35, align 8
  store %struct.ext4_extent* %36, %struct.ext4_extent** %16, align 8
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %38 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  store i64 %40, i64* %15, align 8
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %42 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %41)
  store i32 %42, i32* %17, align 4
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %44 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %43)
  store i32 %44, i32* %20, align 4
  %45 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %46 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %49 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = load i64, i64* %15, align 8
  %54 = load i32, i32* %17, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %6
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %69 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %21, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %21, align 4
  br label %73

73:                                               ; preds = %67, %58
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @EXT4_EXT_DATA_VALID2, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @EXT4_EXT_DATA_VALID1, align 4
  %80 = load i32, i32* %21, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %21, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %10, align 8
  %86 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %87 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %90 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %88, %92
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = call i32 @ext4_split_extent_at(i32* %83, %struct.inode* %84, %struct.ext4_ext_path** %85, i64 %93, i32 %94, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %82
  br label %186

100:                                              ; preds = %82
  br label %111

101:                                              ; preds = %6
  %102 = load i32, i32* %17, align 4
  %103 = zext i32 %102 to i64
  %104 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %105 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = sub nsw i64 %106, %107
  %109 = sub nsw i64 %103, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %23, align 4
  br label %111

111:                                              ; preds = %101, %100
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %114 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %10, align 8
  %117 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %112, i64 %115, %struct.ext4_ext_path** %116, i32 0)
  store %struct.ext4_ext_path* %117, %struct.ext4_ext_path** %14, align 8
  %118 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %119 = call i64 @IS_ERR(%struct.ext4_ext_path* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %123 = call i32 @PTR_ERR(%struct.ext4_ext_path* %122)
  store i32 %123, i32* %7, align 4
  br label %195

124:                                              ; preds = %111
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = call i32 @ext_depth(%struct.inode* %125)
  store i32 %126, i32* %18, align 4
  %127 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %128 = load i32, i32* %18, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %127, i64 %129
  %131 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %130, i32 0, i32 0
  %132 = load %struct.ext4_extent*, %struct.ext4_extent** %131, align 8
  store %struct.ext4_extent* %132, %struct.ext4_extent** %16, align 8
  %133 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %134 = icmp ne %struct.ext4_extent* %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %124
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %138 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @EXT4_ERROR_INODE(%struct.inode* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* @EFSCORRUPTED, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %195

143:                                              ; preds = %124
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %145 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %144)
  store i32 %145, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %146 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %147 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %15, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %143
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @EXT4_EXT_DATA_VALID2, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %21, align 4
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %151
  %158 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %159 = load i32, i32* %21, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  %163 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = load i32, i32* %21, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %157, %151
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %10, align 8
  %172 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %11, align 8
  %173 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @ext4_split_extent_at(i32* %169, %struct.inode* %170, %struct.ext4_ext_path** %171, i64 %174, i32 %175, i32 %176)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %186

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %143
  %183 = load %struct.inode*, %struct.inode** %9, align 8
  %184 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %185 = call i32 @ext4_ext_show_leaf(%struct.inode* %183, %struct.ext4_ext_path* %184)
  br label %186

186:                                              ; preds = %182, %180, %99
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* %19, align 4
  br label %193

191:                                              ; preds = %186
  %192 = load i32, i32* %23, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %193, %135, %121
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_split_extent_at(i32*, %struct.inode*, %struct.ext4_ext_path**, i64, i32, i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, %struct.ext4_ext_path**, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_insert_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_insert_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_3__*, %struct.ext4_extent_idx* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ext4_extent_idx = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"logical %d == ei_block %d!\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"eh_entries %d >= eh_max %d!\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"insert new index %d after: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"insert new index %d before: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"insert new index %d: move %d indices from 0x%p to 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ix > EXT_MAX_INDEX!\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ix > EXT_LAST_INDEX!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, i32, i32)* @ext4_ext_insert_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_insert_index(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_extent_idx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %18 = call i32 @ext4_ext_get_access(i32* %15, %struct.inode* %16, %struct.ext4_ext_path* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %191

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i32 0, i32 1
  %27 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %26, align 8
  %28 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = icmp eq i32 %24, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %23
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %39 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %38, i32 0, i32 1
  %40 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %39, align 8
  %41 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %43)
  %45 = load i32, i32* @EFSCORRUPTED, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %191

47:                                               ; preds = %23
  %48 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %49 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %55 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = icmp sge i32 %53, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %47
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %67 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %73 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %77)
  %79 = load i32, i32* @EFSCORRUPTED, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %191

81:                                               ; preds = %47
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %84 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %83, i32 0, i32 1
  %85 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %84, align 8
  %86 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = icmp sgt i32 %82, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (i8*, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %95 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %94, i32 0, i32 1
  %96 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %95, align 8
  %97 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %96, i64 1
  store %struct.ext4_extent_idx* %97, %struct.ext4_extent_idx** %12, align 8
  br label %105

98:                                               ; preds = %81
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 (i8*, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %103 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %102, i32 0, i32 1
  %104 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %103, align 8
  store %struct.ext4_extent_idx* %104, %struct.ext4_extent_idx** %12, align 8
  br label %105

105:                                              ; preds = %98, %90
  %106 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %107 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = call %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.TYPE_3__* %108)
  %110 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %111 = ptrtoint %struct.ext4_extent_idx* %109 to i64
  %112 = ptrtoint %struct.ext4_extent_idx* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = add nsw i64 %114, 1
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUG_ON(i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %105
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %127 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %128 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %127, i64 1
  %129 = call i32 (i8*, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125, %struct.ext4_extent_idx* %126, %struct.ext4_extent_idx* %128)
  %130 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %131 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %130, i64 1
  %132 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memmove(%struct.ext4_extent_idx* %131, %struct.ext4_extent_idx* %132, i32 %136)
  br label %138

138:                                              ; preds = %123, %105
  %139 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %140 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %141 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = call %struct.ext4_extent_idx* @EXT_MAX_INDEX(%struct.TYPE_3__* %142)
  %144 = icmp ugt %struct.ext4_extent_idx* %139, %143
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.inode*, %struct.inode** %8, align 8
  %150 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* @EFSCORRUPTED, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %191

153:                                              ; preds = %138
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @cpu_to_le32(i32 %154)
  %156 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %157 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @ext4_idx_store_pblock(%struct.ext4_extent_idx* %158, i32 %159)
  %161 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %162 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %161, i32 0, i32 0
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = call i32 @le16_add_cpu(i32* %164, i32 1)
  %166 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %167 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %168 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %167, i32 0, i32 0
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = call %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.TYPE_3__* %169)
  %171 = icmp ugt %struct.ext4_extent_idx* %166, %170
  %172 = zext i1 %171 to i32
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %153
  %176 = load %struct.inode*, %struct.inode** %8, align 8
  %177 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %178 = load i32, i32* @EFSCORRUPTED, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %6, align 4
  br label %191

180:                                              ; preds = %153
  %181 = load i32*, i32** %7, align 8
  %182 = load %struct.inode*, %struct.inode** %8, align 8
  %183 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %184 = call i32 @ext4_ext_dirty(i32* %181, %struct.inode* %182, %struct.ext4_ext_path* %183)
  store i32 %184, i32* %14, align 4
  %185 = load %struct.inode*, %struct.inode** %8, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @ext4_std_error(i32 %187, i32 %188)
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %180, %175, %148, %64, %35, %21
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext_debug(i8*, i32, i32, ...) #1

declare dso_local %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove(%struct.ext4_extent_idx*, %struct.ext4_extent_idx*, i32) #1

declare dso_local %struct.ext4_extent_idx* @EXT_MAX_INDEX(%struct.TYPE_3__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_idx_store_pblock(%struct.ext4_extent_idx*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

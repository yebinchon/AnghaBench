; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_shift_path_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_shift_path_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i32, i32, %struct.TYPE_2__*, %struct.ext4_extent* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_extent = type { i32 }
%struct.inode = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@SHIFT_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_ext_path*, i32, %struct.inode*, i32*, i32)* @ext4_ext_shift_path_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_shift_path_extents(%struct.ext4_ext_path* %0, i32 %1, %struct.inode* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca i32, align 4
  store %struct.ext4_ext_path* %0, %struct.ext4_ext_path** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %18 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %203, %5
  %21 = load i32, i32* %12, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %206

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %140

29:                                               ; preds = %23
  %30 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %30, i64 %32
  %34 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %33, i32 0, i32 3
  %35 = load %struct.ext4_extent*, %struct.ext4_extent** %34, align 8
  store %struct.ext4_extent* %35, %struct.ext4_extent** %14, align 8
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %37 = icmp ne %struct.ext4_extent* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EFSCORRUPTED, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %209

41:                                               ; preds = %29
  %42 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i64 %44
  %46 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ext4_extent* @EXT_LAST_EXTENT(i32 %47)
  store %struct.ext4_extent* %48, %struct.ext4_extent** %15, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i64 %53
  %55 = call i32 @ext4_access_path(i32* %49, %struct.inode* %50, %struct.ext4_ext_path* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %207

59:                                               ; preds = %41
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %61 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %61, i64 %63
  %65 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(i32 %66)
  %68 = icmp eq %struct.ext4_extent* %60, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 1, i32* %16, align 4
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %119, %70
  %72 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %73 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %74 = icmp ule %struct.ext4_extent* %72, %73
  br i1 %74, label %75, label %120

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @SHIFT_LEFT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %81 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @le32_add_cpu(i32* %81, i32 %83)
  %85 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %86 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %86, i64 %88
  %90 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(i32 %91)
  %93 = icmp ugt %struct.ext4_extent* %85, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %79
  %95 = load %struct.inode*, %struct.inode** %9, align 8
  %96 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %97 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %98 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %97, i64 -1
  %99 = call i64 @ext4_ext_try_to_merge_right(%struct.inode* %95, %struct.ext4_ext_path* %96, %struct.ext4_extent* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %103 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %102, i32 -1
  store %struct.ext4_extent* %103, %struct.ext4_extent** %15, align 8
  br label %107

104:                                              ; preds = %94, %79
  %105 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %106 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %105, i32 1
  store %struct.ext4_extent* %106, %struct.ext4_extent** %14, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %119

108:                                              ; preds = %75
  %109 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %110 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %109, i32 0, i32 0
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @le32_add_cpu(i32* %110, i32 %111)
  %113 = load %struct.inode*, %struct.inode** %9, align 8
  %114 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %115 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %116 = call i64 @ext4_ext_try_to_merge_right(%struct.inode* %113, %struct.ext4_ext_path* %114, %struct.ext4_extent* %115)
  %117 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %118 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %117, i32 -1
  store %struct.ext4_extent* %118, %struct.ext4_extent** %15, align 8
  br label %119

119:                                              ; preds = %108, %107
  br label %71

120:                                              ; preds = %71
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %123, i64 %125
  %127 = call i32 @ext4_ext_dirty(i32* %121, %struct.inode* %122, %struct.ext4_ext_path* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %207

131:                                              ; preds = %120
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %12, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135, %131
  br label %206

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %23
  %141 = load i32*, i32** %10, align 8
  %142 = load %struct.inode*, %struct.inode** %9, align 8
  %143 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %143, i64 %145
  %147 = call i32 @ext4_access_path(i32* %141, %struct.inode* %142, %struct.ext4_ext_path* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %207

151:                                              ; preds = %140
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @SHIFT_LEFT, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %156, i64 %158
  %160 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 0, %163
  %165 = call i32 @le32_add_cpu(i32* %162, i32 %164)
  br label %176

166:                                              ; preds = %151
  %167 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %167, i64 %169
  %171 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %170, i32 0, i32 2
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @le32_add_cpu(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %166, %155
  %177 = load i32*, i32** %10, align 8
  %178 = load %struct.inode*, %struct.inode** %9, align 8
  %179 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %179, i64 %181
  %183 = call i32 @ext4_ext_dirty(i32* %177, %struct.inode* %178, %struct.ext4_ext_path* %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %207

187:                                              ; preds = %176
  %188 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %188, i64 %190
  %192 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %191, i32 0, i32 2
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %194, i64 %196
  %198 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call %struct.TYPE_2__* @EXT_FIRST_INDEX(i32 %199)
  %201 = icmp ne %struct.TYPE_2__* %193, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %187
  br label %206

203:                                              ; preds = %187
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %12, align 4
  br label %20

206:                                              ; preds = %202, %138, %20
  br label %207

207:                                              ; preds = %206, %186, %150, %130, %58
  %208 = load i32, i32* %13, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %207, %38
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(i32) #1

declare dso_local i32 @ext4_access_path(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i64 @ext4_ext_try_to_merge_right(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local %struct.TYPE_2__* @EXT_FIRST_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

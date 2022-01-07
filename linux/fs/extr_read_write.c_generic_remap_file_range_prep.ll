; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_generic_remap_file_range_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_generic_remap_file_range_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_remap_file_range_prep(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = call %struct.inode* @file_inode(%struct.file* %20)
  store %struct.inode* %21, %struct.inode** %14, align 8
  %22 = load %struct.file*, %struct.file** %10, align 8
  %23 = call %struct.inode* @file_inode(%struct.file* %22)
  store %struct.inode* %23, %struct.inode** %15, align 8
  %24 = load %struct.inode*, %struct.inode** %14, align 8
  %25 = load %struct.inode*, %struct.inode** %15, align 8
  %26 = icmp eq %struct.inode* %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %16, align 4
  %28 = load %struct.inode*, %struct.inode** %15, align 8
  %29 = call i64 @IS_IMMUTABLE(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %203

34:                                               ; preds = %6
  %35 = load %struct.inode*, %struct.inode** %14, align 8
  %36 = call i64 @IS_SWAPFILE(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.inode*, %struct.inode** %15, align 8
  %40 = call i64 @IS_SWAPFILE(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @ETXTBSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %203

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %14, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %15, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45
  %58 = load i32, i32* @EISDIR, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %203

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %14, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @S_ISREG(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %15, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @S_ISREG(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %203

75:                                               ; preds = %66
  %76 = load i64*, i64** %12, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load %struct.inode*, %struct.inode** %14, align 8
  %81 = call i64 @i_size_read(%struct.inode* %80)
  store i64 %81, i64* %18, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %18, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %79
  store i32 0, i32* %7, align 4
  br label %203

91:                                               ; preds = %86
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %18, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %203

98:                                               ; preds = %91
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load i64*, i64** %12, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i64*, i64** %12, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %203

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %75
  %109 = load %struct.file*, %struct.file** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.file*, %struct.file** %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @generic_remap_checks(%struct.file* %109, i64 %110, %struct.file* %111, i64 %112, i64* %113, i32 %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %17, align 4
  store i32 %119, i32* %7, align 4
  br label %203

120:                                              ; preds = %108
  %121 = load %struct.inode*, %struct.inode** %14, align 8
  %122 = call i32 @inode_dio_wait(%struct.inode* %121)
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load %struct.inode*, %struct.inode** %15, align 8
  %127 = call i32 @inode_dio_wait(%struct.inode* %126)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load %struct.inode*, %struct.inode** %14, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64*, i64** %12, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %133, %135
  %137 = sub nsw i64 %136, 1
  %138 = call i32 @filemap_write_and_wait_range(i32 %131, i64 %132, i64 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i32, i32* %17, align 4
  store i32 %142, i32* %7, align 4
  br label %203

143:                                              ; preds = %128
  %144 = load %struct.inode*, %struct.inode** %15, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load i64*, i64** %12, align 8
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %148, %150
  %152 = sub nsw i64 %151, 1
  %153 = call i32 @filemap_write_and_wait_range(i32 %146, i64 %147, i64 %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %143
  %157 = load i32, i32* %17, align 4
  store i32 %157, i32* %7, align 4
  br label %203

158:                                              ; preds = %143
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %158
  store i32 0, i32* %19, align 4
  %164 = load %struct.inode*, %struct.inode** %14, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load %struct.inode*, %struct.inode** %15, align 8
  %167 = load i64, i64* %11, align 8
  %168 = load i64*, i64** %12, align 8
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @vfs_dedupe_file_range_compare(%struct.inode* %164, i64 %165, %struct.inode* %166, i64 %167, i64 %169, i32* %19)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* %17, align 4
  store i32 %174, i32* %7, align 4
  br label %203

175:                                              ; preds = %163
  %176 = load i32, i32* %19, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* @EBADE, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %7, align 4
  br label %203

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %158
  %183 = load %struct.inode*, %struct.inode** %14, align 8
  %184 = load %struct.inode*, %struct.inode** %15, align 8
  %185 = load i64, i64* %11, align 8
  %186 = load i64*, i64** %12, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @generic_remap_check_len(%struct.inode* %183, %struct.inode* %184, i64 %185, i64* %186, i32 %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %182
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %7, align 4
  br label %203

193:                                              ; preds = %182
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = load %struct.file*, %struct.file** %10, align 8
  %200 = call i32 @file_modified(%struct.file* %199)
  store i32 %200, i32* %17, align 4
  br label %201

201:                                              ; preds = %198, %193
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %201, %191, %178, %173, %156, %141, %118, %106, %95, %90, %72, %57, %42, %31
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @generic_remap_checks(%struct.file*, i64, %struct.file*, i64, i64*, i32) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i64, i64) #1

declare dso_local i32 @vfs_dedupe_file_range_compare(%struct.inode*, i64, %struct.inode*, i64, i64, i32*) #1

declare dso_local i32 @generic_remap_check_len(%struct.inode*, %struct.inode*, i64, i64*, i32) #1

declare dso_local i32 @file_modified(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

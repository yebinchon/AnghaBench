; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_sf.c_xfs_dir2_block_sfsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_sf.c_xfs_dir2_block_sfsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_18__*, i64)* }
%struct.TYPE_16__ = type { i32, %struct.xfs_da_geometry* }
%struct.xfs_da_geometry = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i8*, i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8
@XFS_INO64_SIZE = common dso_local global i32 0, align 4
@XFS_INO32_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_sfsize(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.xfs_da_geometry*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %17, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %27, align 8
  store %struct.xfs_da_geometry* %28, %struct.xfs_da_geometry** %22, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = call i64 @xfs_sb_version_hasftype(i32* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %21, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  %35 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %22, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call %struct.TYPE_21__* @xfs_dir2_block_tail_p(%struct.xfs_da_geometry* %35, i32* %36)
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %10, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %39 = call %struct.TYPE_19__* @xfs_dir2_block_leaf_p(%struct.TYPE_21__* %38)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %9, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %176, %3
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %179

47:                                               ; preds = %40
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be32_to_cpu(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %176

58:                                               ; preds = %47
  %59 = load i32*, i32** %6, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %22, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @xfs_dir2_dataptr_to_off(%struct.xfs_da_geometry* %61, i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = bitcast i8* %65 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %66, %struct.TYPE_20__** %12, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %79

71:                                               ; preds = %58
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 46
  br label %79

79:                                               ; preds = %71, %58
  %80 = phi i1 [ false, %58 ], [ %78, %71 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 46
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 46
  br label %102

102:                                              ; preds = %94, %86, %79
  %103 = phi i1 [ false, %86 ], [ false, %79 ], [ %101, %94 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @be64_to_cpu(i32 %110)
  %112 = load i64, i64* @XFS_DIR2_MAX_SHORT_INUM, align 8
  %113 = icmp sgt i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %107, %102
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %21, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %18, align 4
  br label %142

133:                                              ; preds = %120, %117
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @be64_to_cpu(i32 %139)
  store i64 %140, i64* %19, align 8
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %123
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @xfs_dir2_sf_hdr_size(i32 %143)
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* %11, align 4
  %147 = mul nsw i32 %146, 3
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = add i64 %145, %149
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %150, %152
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %142
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @XFS_INO64_SIZE, align 4
  %159 = mul nsw i32 %157, %158
  br label %164

160:                                              ; preds = %142
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @XFS_INO32_SIZE, align 4
  %163 = mul nsw i32 %161, %162
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %159, %156 ], [ %163, %160 ]
  %166 = sext i32 %165 to i64
  %167 = add i64 %153, %166
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = call i32 @XFS_IFORK_DSIZE(%struct.TYPE_17__* %170)
  %172 = icmp sgt i32 %169, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* %20, align 4
  store i32 %174, i32* %4, align 4
  br label %195

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %57
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %40

179:                                              ; preds = %40
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_18__*, i64)*, i32 (%struct.TYPE_18__*, i64)** %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %192 = load i64, i64* %19, align 8
  %193 = call i32 %190(%struct.TYPE_18__* %191, i64 %192)
  %194 = load i32, i32* %20, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %179, %173
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i64 @xfs_sb_version_hasftype(i32*) #1

declare dso_local %struct.TYPE_21__* @xfs_dir2_block_tail_p(%struct.xfs_da_geometry*, i32*) #1

declare dso_local %struct.TYPE_19__* @xfs_dir2_block_leaf_p(%struct.TYPE_21__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.xfs_da_geometry*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_sf_hdr_size(i32) #1

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

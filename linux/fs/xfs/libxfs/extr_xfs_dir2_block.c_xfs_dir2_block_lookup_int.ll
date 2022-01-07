; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_21__*, i32, i32)* }
%struct.xfs_buf = type { i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@XFS_CMP_DIFFERENT = common dso_local global i32 0, align 4
@XFS_CMP_EXACT = common dso_local global i32 0, align 4
@XFS_CMP_CASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.xfs_buf**, i32*)* @xfs_dir2_block_lookup_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_block_lookup_int(%struct.TYPE_21__* %0, %struct.xfs_buf** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.xfs_buf**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.xfs_buf*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.xfs_buf** %1, %struct.xfs_buf*** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %14, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %21, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %20, align 8
  %32 = load i32*, i32** %21, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %34 = call i32 @xfs_dir3_block_read(i32* %32, %struct.TYPE_17__* %33, %struct.xfs_buf** %11)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %4, align 4
  br label %230

39:                                               ; preds = %3
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %41 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %9, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %45 = call i32 @xfs_dir3_data_check(%struct.TYPE_17__* %43, %struct.xfs_buf* %44)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call %struct.TYPE_20__* @xfs_dir2_block_tail_p(i32 %48, i32* %49)
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %12, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %52 = call %struct.TYPE_18__* @xfs_dir2_block_leaf_p(%struct.TYPE_20__* %51)
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %18, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %108, %39
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp sle i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %64, %65
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %19, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be32_to_cpu(i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %109

80:                                               ; preds = %58
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %19, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load i32*, i32** %21, align 8
  %104 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %105 = call i32 @xfs_trans_brelse(i32* %103, %struct.xfs_buf* %104)
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %230

108:                                              ; preds = %92
  br label %58

109:                                              ; preds = %79
  br label %110

110:                                              ; preds = %128, %109
  %111 = load i32, i32* %19, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @be32_to_cpu(i32 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br label %126

126:                                              ; preds = %113, %110
  %127 = phi i1 [ false, %110 ], [ %125, %113 ]
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %19, align 4
  br label %110

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %208, %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @be32_to_cpu(i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %190

143:                                              ; preds = %132
  %144 = load i32*, i32** %9, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @xfs_dir2_dataptr_to_off(i32 %148, i32 %149)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %145, i64 %151
  %153 = bitcast i8* %152 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %13, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %157, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 %158(%struct.TYPE_21__* %159, i32 %162, i32 %165)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* @XFS_CMP_DIFFERENT, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %143
  %171 = load i32, i32* %22, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %171, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %170
  %177 = load i32, i32* %22, align 4
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %181 = load %struct.xfs_buf**, %struct.xfs_buf*** %6, align 8
  store %struct.xfs_buf* %180, %struct.xfs_buf** %181, align 8
  %182 = load i32, i32* %19, align 4
  %183 = load i32*, i32** %7, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* @XFS_CMP_EXACT, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %230

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188, %170, %143
  br label %190

190:                                              ; preds = %189, %142
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %19, align 4
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @be32_to_cpu(i32 %195)
  %197 = icmp slt i32 %192, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %190
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %200 = load i32, i32* %19, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @be32_to_cpu(i32 %204)
  %206 = load i32, i32* %16, align 4
  %207 = icmp eq i32 %205, %206
  br label %208

208:                                              ; preds = %198, %190
  %209 = phi i1 [ false, %190 ], [ %207, %198 ]
  br i1 %209, label %132, label %210

210:                                              ; preds = %208
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %215 = and i32 %213, %214
  %216 = call i32 @ASSERT(i32 %215)
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* @XFS_CMP_CASE, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %210
  store i32 0, i32* %4, align 4
  br label %230

224:                                              ; preds = %210
  %225 = load i32*, i32** %21, align 8
  %226 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %227 = call i32 @xfs_trans_brelse(i32* %225, %struct.xfs_buf* %226)
  %228 = load i32, i32* @ENOENT, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %224, %223, %187, %96, %37
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @xfs_dir3_block_read(i32*, %struct.TYPE_17__*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_17__*, %struct.xfs_buf*) #1

declare dso_local %struct.TYPE_20__* @xfs_dir2_block_tail_p(i32, i32*) #1

declare dso_local %struct.TYPE_18__* @xfs_dir2_block_leaf_p(%struct.TYPE_20__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

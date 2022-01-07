; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_replace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_29__*, i32)*, %struct.xfs_dir2_leaf_entry* (%struct.TYPE_28__*)* }
%struct.TYPE_29__ = type { i32 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_31__ = type { i64, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_27__, %struct.TYPE_26__, i32, %struct.TYPE_22__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }

@EEXIST = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_replace(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %16 = call i32 @trace_xfs_dir2_node_replace(%struct.TYPE_22__* %15)
  %17 = call %struct.TYPE_30__* (...) @xfs_da_state_alloc()
  store %struct.TYPE_30__* %17, %struct.TYPE_30__** %13, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 4
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %20, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %35 = call i32 @xfs_da3_node_lookup_int(%struct.TYPE_30__* %34, i32* %12)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %38, %1
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @EEXIST, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %152

45:                                               ; preds = %40
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %48, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i64 %55
  store %struct.TYPE_31__* %56, %struct.TYPE_31__** %3, align 8
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %67, align 8
  store %struct.TYPE_28__* %68, %struct.TYPE_28__** %10, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load %struct.xfs_dir2_leaf_entry* (%struct.TYPE_28__*)*, %struct.xfs_dir2_leaf_entry* (%struct.TYPE_28__*)** %74, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %77 = call %struct.xfs_dir2_leaf_entry* %75(%struct.TYPE_28__* %76)
  store %struct.xfs_dir2_leaf_entry* %77, %struct.xfs_dir2_leaf_entry** %14, align 8
  %78 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %78, i64 %81
  store %struct.xfs_dir2_leaf_entry* %82, %struct.xfs_dir2_leaf_entry** %11, align 8
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  store %struct.TYPE_28__* %92, %struct.TYPE_28__** %4, align 8
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %97 = call i64 @cpu_to_be32(i32 %96)
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %45
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %104 = call i64 @cpu_to_be32(i32 %103)
  %105 = icmp eq i64 %102, %104
  br label %106

106:                                              ; preds = %99, %45
  %107 = phi i1 [ true, %45 ], [ %105, %99 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @ASSERT(i32 %108)
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %111 = bitcast %struct.TYPE_28__* %110 to i8*
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %116 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @be32_to_cpu(i32 %117)
  %119 = call i32 @xfs_dir2_dataptr_to_off(i32 %114, i32 %118)
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %111, i64 %120
  %122 = bitcast i8* %121 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %122, %struct.TYPE_29__** %5, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @be64_to_cpu(i32 %126)
  %128 = icmp ne i64 %123, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @ASSERT(i32 %129)
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @cpu_to_be64(i64 %131)
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_29__*, i32)*, i32 (%struct.TYPE_29__*, i32)** %140, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 %141(%struct.TYPE_29__* %142, i32 %143)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %151 = call i32 @xfs_dir2_data_log_entry(%struct.TYPE_22__* %145, %struct.TYPE_23__* %149, %struct.TYPE_29__* %150)
  store i32 0, i32* %12, align 4
  br label %170

152:                                              ; preds = %40
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %163, align 8
  %165 = call i32 @xfs_trans_brelse(i32 %160, %struct.TYPE_23__* %164)
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %168, align 8
  br label %169

169:                                              ; preds = %157, %152
  br label %170

170:                                              ; preds = %169, %106
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %200, %170
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %172, %176
  br i1 %177, label %178, label %203

178:                                              ; preds = %171
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %189, align 8
  %191 = call i32 @xfs_trans_brelse(i32 %181, %struct.TYPE_23__* %190)
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 2
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %199, align 8
  br label %200

200:                                              ; preds = %178
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %171

203:                                              ; preds = %171
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %205 = call i32 @xfs_da_state_free(%struct.TYPE_30__* %204)
  %206 = load i32, i32* %12, align 4
  ret i32 %206
}

declare dso_local i32 @trace_xfs_dir2_node_replace(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_30__* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da3_node_lookup_int(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dir2_data_log_entry(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_29__*) #1

declare dso_local i32 @xfs_trans_brelse(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

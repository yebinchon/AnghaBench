; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_split.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_state = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.xfs_da_state_blk, i32, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.xfs_da_state_blk* }
%struct.xfs_da_state_blk = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.xfs_da_intnode* }
%struct.xfs_da_intnode = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.xfs_da_state_blk* }

@XFS_DA_NODE_MAXDEPTH = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da3_split(%struct.xfs_da_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_state*, align 8
  %4 = alloca %struct.xfs_da_state_blk*, align 8
  %5 = alloca %struct.xfs_da_state_blk*, align 8
  %6 = alloca %struct.xfs_da_state_blk*, align 8
  %7 = alloca %struct.xfs_da_intnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xfs_da_state* %0, %struct.xfs_da_state** %3, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = call i32 @trace_xfs_da_split(%struct.TYPE_13__* %14)
  %16 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @XFS_DA_NODE_MAXDEPTH, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i1 [ false, %1 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %34, i64 %36
  %38 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 130
  br i1 %40, label %52, label %41

41:                                               ; preds = %27
  %42 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %45, i64 %47
  %49 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 128
  br label %52

52:                                               ; preds = %41, %27
  %53 = phi i1 [ true, %27 ], [ %51, %41 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %57 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %59, i64 %61
  store %struct.xfs_da_state_blk* %62, %struct.xfs_da_state_blk** %6, align 8
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %185, %52
  %65 = load i32, i32* %11, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %69 = icmp ne %struct.xfs_da_state_blk* %68, null
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  br i1 %71, label %72, label %193

72:                                               ; preds = %70
  %73 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %74 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %76, i64 %78
  store %struct.xfs_da_state_blk* %79, %struct.xfs_da_state_blk** %4, align 8
  %80 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %81 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %83, i64 %85
  store %struct.xfs_da_state_blk* %86, %struct.xfs_da_state_blk** %5, align 8
  %87 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %88 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  switch i64 %89, label %180 [
    i64 130, label %90
    i64 128, label %147
    i64 129, label %158
  ]

90:                                               ; preds = %72
  %91 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %92 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %93 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %94 = call i32 @xfs_attr3_leaf_split(%struct.xfs_da_state* %91, %struct.xfs_da_state_blk* %92, %struct.xfs_da_state_blk* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %2, align 4
  br label %349

104:                                              ; preds = %97, %90
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  store %struct.xfs_da_state_blk* %108, %struct.xfs_da_state_blk** %6, align 8
  br label %180

109:                                              ; preds = %104
  %110 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %111 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %113 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %118 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %120 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %119, i32 0, i32 2
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = call i32 @trace_xfs_attr_leaf_split_before(%struct.TYPE_13__* %121)
  %123 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %124 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %125 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %126 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %125, i32 0, i32 4
  %127 = call i32 @xfs_attr3_leaf_split(%struct.xfs_da_state* %123, %struct.xfs_da_state_blk* %124, %struct.xfs_da_state_blk* %126)
  store i32 %127, i32* %10, align 4
  br label %140

128:                                              ; preds = %109
  %129 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %130 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %132 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %131, i32 0, i32 2
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = call i32 @trace_xfs_attr_leaf_split_after(%struct.TYPE_13__* %133)
  %135 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %136 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %137 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %138 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %137, i32 0, i32 4
  %139 = call i32 @xfs_attr3_leaf_split(%struct.xfs_da_state* %135, %struct.xfs_da_state_blk* %136, %struct.xfs_da_state_blk* %138)
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %128, %116
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %2, align 4
  br label %349

145:                                              ; preds = %140
  %146 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  store %struct.xfs_da_state_blk* %146, %struct.xfs_da_state_blk** %6, align 8
  br label %180

147:                                              ; preds = %72
  %148 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %149 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %150 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %151 = call i32 @xfs_dir2_leafn_split(%struct.xfs_da_state* %148, %struct.xfs_da_state_blk* %149, %struct.xfs_da_state_blk* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %2, align 4
  br label %349

156:                                              ; preds = %147
  %157 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  store %struct.xfs_da_state_blk* %157, %struct.xfs_da_state_blk** %6, align 8
  br label %180

158:                                              ; preds = %72
  %159 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %160 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %161 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %162 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %11, align 4
  %165 = sub nsw i32 %163, %164
  %166 = call i32 @xfs_da3_node_split(%struct.xfs_da_state* %159, %struct.xfs_da_state_blk* %160, %struct.xfs_da_state_blk* %161, %struct.xfs_da_state_blk* %162, i32 %165, i32* %9)
  store i32 %166, i32* %10, align 4
  %167 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %168 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %167, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %168, align 8
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %158
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %2, align 4
  br label %349

173:                                              ; preds = %158
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  store %struct.xfs_da_state_blk* %177, %struct.xfs_da_state_blk** %6, align 8
  br label %179

178:                                              ; preds = %173
  store %struct.xfs_da_state_blk* null, %struct.xfs_da_state_blk** %6, align 8
  br label %179

179:                                              ; preds = %178, %176
  br label %180

180:                                              ; preds = %72, %179, %156, %145, %107
  %181 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %182 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %183 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %182, i32 0, i32 3
  %184 = call i32 @xfs_da3_fixhashpath(%struct.xfs_da_state* %181, %struct.TYPE_12__* %183)
  br label %185

185:                                              ; preds = %180
  %186 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %187 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %11, align 4
  br label %64

193:                                              ; preds = %70
  %194 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %195 = icmp ne %struct.xfs_da_state_blk* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %349

197:                                              ; preds = %193
  %198 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %199 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %197
  %203 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %204 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %206, i64 %208
  %210 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 128
  br label %213

213:                                              ; preds = %202, %197
  %214 = phi i1 [ true, %197 ], [ %212, %202 ]
  %215 = zext i1 %214 to i32
  %216 = call i32 @ASSERT(i32 %215)
  %217 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %218 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 0
  %222 = zext i1 %221 to i32
  %223 = call i32 @ASSERT(i32 %222)
  %224 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %225 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %226, align 8
  %228 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %227, i64 0
  store %struct.xfs_da_state_blk* %228, %struct.xfs_da_state_blk** %4, align 8
  %229 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %230 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %231 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %232 = call i32 @xfs_da3_root_split(%struct.xfs_da_state* %229, %struct.xfs_da_state_blk* %230, %struct.xfs_da_state_blk* %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %213
  br label %345

236:                                              ; preds = %213
  %237 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %238 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %237, i32 0, i32 2
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %240, align 8
  store %struct.xfs_da_intnode* %241, %struct.xfs_da_intnode** %7, align 8
  %242 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %243 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %290

248:                                              ; preds = %236
  %249 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %250 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @be32_to_cpu(i8* %253)
  %255 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %256 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %254, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %248
  %260 = load i32, i32* @EFSCORRUPTED, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %10, align 4
  br label %345

262:                                              ; preds = %248
  %263 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %264 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %263, i32 0, i32 2
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %266, align 8
  store %struct.xfs_da_intnode* %267, %struct.xfs_da_intnode** %7, align 8
  %268 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %269 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i8* @cpu_to_be32(i64 %270)
  %272 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %273 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 1
  store i8* %271, i8** %275, align 8
  %276 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %277 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %276, i32 0, i32 2
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %282 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %281, i32 0, i32 2
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %285 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %286 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_da_intnode* %284, %struct.TYPE_14__* %287, i32 16)
  %289 = call i32 @xfs_trans_log_buf(i32 %280, %struct.TYPE_11__* %283, i32 %288)
  br label %290

290:                                              ; preds = %262, %236
  %291 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %292 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %291, i32 0, i32 2
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %294, align 8
  store %struct.xfs_da_intnode* %295, %struct.xfs_da_intnode** %7, align 8
  %296 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %297 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %344

302:                                              ; preds = %290
  %303 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %304 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = call i64 @be32_to_cpu(i8* %307)
  %309 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %310 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %308, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %302
  %314 = load i32, i32* @EFSCORRUPTED, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %10, align 4
  br label %345

316:                                              ; preds = %302
  %317 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %318 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %317, i32 0, i32 2
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %320, align 8
  store %struct.xfs_da_intnode* %321, %struct.xfs_da_intnode** %7, align 8
  %322 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %4, align 8
  %323 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = call i8* @cpu_to_be32(i64 %324)
  %326 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %327 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 0
  store i8* %325, i8** %329, align 8
  %330 = load %struct.xfs_da_state*, %struct.xfs_da_state** %3, align 8
  %331 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %330, i32 0, i32 2
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %336 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %335, i32 0, i32 2
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  %338 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %339 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %7, align 8
  %340 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_da_intnode* %338, %struct.TYPE_14__* %341, i32 16)
  %343 = call i32 @xfs_trans_log_buf(i32 %334, %struct.TYPE_11__* %337, i32 %342)
  br label %344

344:                                              ; preds = %316, %290
  br label %345

345:                                              ; preds = %344, %313, %259, %235
  %346 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %347 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %346, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %347, align 8
  %348 = load i32, i32* %10, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %345, %196, %171, %154, %143, %102
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local i32 @trace_xfs_da_split(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_attr3_leaf_split(%struct.xfs_da_state*, %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk*) #1

declare dso_local i32 @trace_xfs_attr_leaf_split_before(%struct.TYPE_13__*) #1

declare dso_local i32 @trace_xfs_attr_leaf_split_after(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_dir2_leafn_split(%struct.xfs_da_state*, %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk*) #1

declare dso_local i32 @xfs_da3_node_split(%struct.xfs_da_state*, %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk*, i32, i32*) #1

declare dso_local i32 @xfs_da3_fixhashpath(%struct.xfs_da_state*, %struct.TYPE_12__*) #1

declare dso_local i32 @xfs_da3_root_split(%struct.xfs_da_state*, %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk*) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.xfs_da_intnode*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_list.c_xfs_attr_shortform_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_list.c_xfs_attr_shortform_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i64, i32 (%struct.TYPE_29__*, i32, i32, i32, i32)*, %struct.TYPE_25__*, %struct.TYPE_30__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_30__ = type { i32, i64, i32, i64 }
%struct.TYPE_27__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__, %struct.TYPE_28__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }

@KM_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"xfs_attr_shortform_list\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@xfs_attr_shortform_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*)* @xfs_attr_shortform_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_attr_shortform_list(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %15 = icmp ne %struct.TYPE_29__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %9, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %22 = icmp ne %struct.TYPE_25__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %28 = icmp ne %struct.TYPE_24__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %7, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = icmp ne %struct.TYPE_26__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %345

48:                                               ; preds = %1
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %50, align 8
  store %struct.TYPE_30__* %51, %struct.TYPE_30__** %4, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %53 = icmp ne %struct.TYPE_30__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %57 = call i32 @trace_xfs_attr_list_sf(%struct.TYPE_29__* %56)
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %48
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %64 = call i64 @XFS_ISRESET_CURSOR(%struct.TYPE_30__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %127

66:                                               ; preds = %62
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 16
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %71, %77
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %127

83:                                               ; preds = %66, %48
  store i32 0, i32* %13, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i64 0
  store %struct.TYPE_28__* %87, %struct.TYPE_28__** %8, align 8
  br label %88

88:                                               ; preds = %121, %83
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %88
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 2
  %98 = load i32 (%struct.TYPE_29__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_29__*, i32, i32, i32, i32)** %97, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 %98(%struct.TYPE_29__* %99, i32 %102, i32 %105, i32 %108, i32 %111)
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %95
  br label %124

118:                                              ; preds = %95
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %120 = call %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__* %119)
  store %struct.TYPE_28__* %120, %struct.TYPE_28__** %8, align 8
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %88

124:                                              ; preds = %117, %88
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %126 = call i32 @trace_xfs_attr_list_sf_all(%struct.TYPE_29__* %125)
  store i32 0, i32* %2, align 4
  br label %345

127:                                              ; preds = %66, %62
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %345

133:                                              ; preds = %127
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 32
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @KM_NOFS, align 4
  %143 = call %struct.TYPE_27__* @kmem_alloc(i32 %141, i32 %142)
  store %struct.TYPE_27__* %143, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %143, %struct.TYPE_27__** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i64 0
  store %struct.TYPE_28__* %147, %struct.TYPE_28__** %8, align 8
  br label %148

148:                                              ; preds = %230, %133
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %233

155:                                              ; preds = %148
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %157 = bitcast %struct.TYPE_28__* %156 to i8*
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %159 = bitcast %struct.TYPE_26__* %158 to i8*
  %160 = icmp ult i8* %157, %159
  br i1 %160, label %173, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %163 = bitcast %struct.TYPE_28__* %162 to i8*
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %165 = bitcast %struct.TYPE_26__* %164 to i8*
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i8, i8* %165, i64 %170
  %172 = icmp uge i8* %163, %171
  br label %173

173:                                              ; preds = %161, %155
  %174 = phi i1 [ true, %155 ], [ %172, %161 ]
  %175 = zext i1 %174 to i32
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %173
  %179 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %186 = call i32 @XFS_CORRUPTION_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %184, %struct.TYPE_28__* %185, i32 16)
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = call i32 @kmem_free(%struct.TYPE_27__* %187)
  %189 = load i32, i32* @EFSCORRUPTED, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %345

191:                                              ; preds = %173
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @xfs_da_hashname(i32 %197, i32 %200)
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %225 = call %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__* %224)
  store %struct.TYPE_28__* %225, %struct.TYPE_28__** %8, align 8
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 1
  store %struct.TYPE_27__* %227, %struct.TYPE_27__** %6, align 8
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %230

230:                                              ; preds = %191
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %148

233:                                              ; preds = %148
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @xfs_attr_shortform_compare, align 4
  %237 = call i32 @xfs_sort(%struct.TYPE_27__* %234, i32 %235, i32 32, i32 %236)
  store i32 0, i32* %12, align 4
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 3
  store i64 0, i64* %241, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %242, %struct.TYPE_27__** %6, align 8
  store i32 0, i32* %13, align 4
  br label %243

243:                                              ; preds = %276, %233
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %11, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %281

247:                                              ; preds = %243
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %250, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %247
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %12, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %281

262:                                              ; preds = %255
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %275

265:                                              ; preds = %247
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp sgt i64 %268, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %265
  br label %281

274:                                              ; preds = %265
  br label %275

275:                                              ; preds = %274, %262
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %13, align 4
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 1
  store %struct.TYPE_27__* %280, %struct.TYPE_27__** %6, align 8
  br label %243

281:                                              ; preds = %273, %261, %243
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %287 = call i32 @kmem_free(%struct.TYPE_27__* %286)
  store i32 0, i32* %2, align 4
  br label %345

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %337, %288
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* %11, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %342

293:                                              ; preds = %289
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %296, %299
  br i1 %300, label %301, label %309

301:                                              ; preds = %293
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 1
  store i64 %304, i64* %306, align 8
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 2
  store i32 0, i32* %308, align 8
  br label %309

309:                                              ; preds = %301, %293
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 2
  %312 = load i32 (%struct.TYPE_29__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_29__*, i32, i32, i32, i32)** %311, align 8
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i32 %312(%struct.TYPE_29__* %313, i32 %316, i32 %319, i32 %322, i32 %325)
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %309
  br label %342

332:                                              ; preds = %309
  %333 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %13, align 4
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 1
  store %struct.TYPE_27__* %341, %struct.TYPE_27__** %6, align 8
  br label %289

342:                                              ; preds = %331, %289
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %344 = call i32 @kmem_free(%struct.TYPE_27__* %343)
  store i32 0, i32* %2, align 4
  br label %345

345:                                              ; preds = %342, %285, %178, %132, %124, %47
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_attr_list_sf(%struct.TYPE_29__*) #1

declare dso_local i64 @XFS_ISRESET_CURSOR(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__*) #1

declare dso_local i32 @trace_xfs_attr_list_sf_all(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_27__* @kmem_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @XFS_CORRUPTION_ERROR(i8*, i32, i32, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_27__*) #1

declare dso_local i64 @xfs_da_hashname(i32, i32) #1

declare dso_local i32 @xfs_sort(%struct.TYPE_27__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

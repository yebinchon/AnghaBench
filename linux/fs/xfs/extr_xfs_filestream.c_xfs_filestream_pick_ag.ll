; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_filestream.c_xfs_filestream_pick_ag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_filestream.c_xfs_filestream_pick_ag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.xfs_fstrm_item = type { i32, i64 }
%struct.xfs_perag = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@XFS_ALLOC_FLAG_TRYLOCK = common dso_local global i32 0, align 4
@XFS_AG_RESV_NONE = common dso_local global i32 0, align 4
@XFS_PICK_USERDATA = common dso_local global i32 0, align 4
@XFS_PICK_LOWSPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, i64, i64*, i32, i64)* @xfs_filestream_pick_ag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_filestream_pick_ag(%struct.xfs_inode* %0, i64 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.xfs_mount*, align 8
  %13 = alloca %struct.xfs_fstrm_item*, align 8
  %14 = alloca %struct.xfs_perag*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 1
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %25, align 8
  store %struct.xfs_mount* %26, %struct.xfs_mount** %12, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  %27 = load i64, i64* @NULLAGNUMBER, align 8
  store i64 %27, i64* %20, align 8
  %28 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %29 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @S_ISDIR(i32 %31)
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %35 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 50
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %19, align 8
  %41 = load i64, i64* @NULLAGNUMBER, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @XFS_ALLOC_FLAG_TRYLOCK, align 4
  store i32 %43, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %44

44:                                               ; preds = %199, %5
  br i1 true, label %45, label %202

45:                                               ; preds = %44
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %47 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %48 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %19, align 8
  %51 = call i32 @trace_xfs_filestream_scan(%struct.xfs_mount* %46, i32 %49, i64 %50)
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %53 = load i64, i64* %19, align 8
  %54 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %52, i64 %53)
  store %struct.xfs_perag* %54, %struct.xfs_perag** %14, align 8
  %55 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %56 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %45
  %60 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load i32, i32* %22, align 4
  %63 = call i32 @xfs_alloc_pagf_init(%struct.xfs_mount* %60, i32* null, i64 %61, i32 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %71 = call i32 @xfs_perag_put(%struct.xfs_perag* %70)
  %72 = load i32, i32* %21, align 4
  store i32 %72, i32* %6, align 4
  br label %255

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73, %45
  %75 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %76 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %151

80:                                               ; preds = %74
  %81 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %82 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %18, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %88 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %19, align 8
  store i64 %90, i64* %20, align 8
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %93 = load i64, i64* %19, align 8
  %94 = call i32 @xfs_filestream_get_ag(%struct.xfs_mount* %92, i64 %93)
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %98 = load i64, i64* %19, align 8
  %99 = call i32 @xfs_filestream_put_ag(%struct.xfs_mount* %97, i64 %98)
  br label %151

100:                                              ; preds = %91
  %101 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %102 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %103 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %104 = call i32 @xfs_alloc_min_freelist(%struct.xfs_mount* %102, %struct.xfs_perag* %103)
  %105 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %106 = load i32, i32* @XFS_AG_RESV_NONE, align 4
  %107 = call i32 @xfs_ag_resv_needed(%struct.xfs_perag* %105, i32 %106)
  %108 = call i64 @xfs_alloc_longest_free_extent(%struct.xfs_perag* %101, i32 %104, i32 %107)
  store i64 %108, i64* %15, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %111, %100
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %147, label %118

118:                                              ; preds = %115
  %119 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %120 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %17, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %118, %111
  %125 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %126 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @XFS_PICK_USERDATA, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @XFS_PICK_LOWSPACE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134, %129, %124
  %140 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %141 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %16, align 8
  %143 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %144 = call i32 @xfs_perag_put(%struct.xfs_perag* %143)
  %145 = load i64, i64* %19, align 8
  %146 = load i64*, i64** %9, align 8
  store i64 %145, i64* %146, align 8
  br label %202

147:                                              ; preds = %134, %118, %115
  %148 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %149 = load i64, i64* %19, align 8
  %150 = call i32 @xfs_filestream_put_ag(%struct.xfs_mount* %148, i64 %149)
  br label %151

151:                                              ; preds = %147, %96, %79
  %152 = load %struct.xfs_perag*, %struct.xfs_perag** %14, align 8
  %153 = call i32 @xfs_perag_put(%struct.xfs_perag* %152)
  %154 = load i64, i64* %19, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %19, align 8
  %156 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %157 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sge i64 %155, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  store i64 0, i64* %19, align 8
  br label %162

162:                                              ; preds = %161, %151
  %163 = load i64, i64* %19, align 8
  %164 = load i64, i64* %8, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %199

167:                                              ; preds = %162
  %168 = load i32, i32* %22, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 0, i32* %22, align 4
  br label %199

171:                                              ; preds = %167
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @XFS_PICK_LOWSPACE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @XFS_PICK_LOWSPACE, align 4
  %178 = load i32, i32* %10, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %10, align 4
  br label %199

180:                                              ; preds = %171
  %181 = load i64, i64* %20, align 8
  %182 = load i64, i64* @NULLAGNUMBER, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %186 = load i64, i64* %20, align 8
  %187 = call i32 @xfs_filestream_get_ag(%struct.xfs_mount* %185, i64 %186)
  %188 = load i64, i64* %18, align 8
  store i64 %188, i64* %16, align 8
  %189 = load i64, i64* %20, align 8
  %190 = load i64*, i64** %9, align 8
  store i64 %189, i64* %190, align 8
  br label %202

191:                                              ; preds = %180
  %192 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %193 = load i64*, i64** %9, align 8
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %16, align 8
  %196 = load i32, i32* %23, align 4
  %197 = call i32 @trace_xfs_filestream_pick(%struct.xfs_inode* %192, i64 %194, i64 %195, i32 %196)
  %198 = load i64*, i64** %9, align 8
  store i64 0, i64* %198, align 8
  store i32 0, i32* %6, align 4
  br label %255

199:                                              ; preds = %176, %170, %166
  %200 = load i32, i32* %23, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %23, align 4
  br label %44

202:                                              ; preds = %184, %139, %44
  %203 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %204 = load i64*, i64** %9, align 8
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %16, align 8
  %207 = load i32, i32* %23, align 4
  %208 = call i32 @trace_xfs_filestream_pick(%struct.xfs_inode* %203, i64 %205, i64 %206, i32 %207)
  %209 = load i64*, i64** %9, align 8
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @NULLAGNUMBER, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  store i32 0, i32* %6, align 4
  br label %255

214:                                              ; preds = %202
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %21, align 4
  %217 = load i32, i32* @KM_MAYFAIL, align 4
  %218 = call %struct.xfs_fstrm_item* @kmem_alloc(i32 16, i32 %217)
  store %struct.xfs_fstrm_item* %218, %struct.xfs_fstrm_item** %13, align 8
  %219 = load %struct.xfs_fstrm_item*, %struct.xfs_fstrm_item** %13, align 8
  %220 = icmp ne %struct.xfs_fstrm_item* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %214
  br label %249

222:                                              ; preds = %214
  %223 = load i64*, i64** %9, align 8
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.xfs_fstrm_item*, %struct.xfs_fstrm_item** %13, align 8
  %226 = getelementptr inbounds %struct.xfs_fstrm_item, %struct.xfs_fstrm_item* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %228 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %231 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.xfs_fstrm_item*, %struct.xfs_fstrm_item** %13, align 8
  %234 = getelementptr inbounds %struct.xfs_fstrm_item, %struct.xfs_fstrm_item* %233, i32 0, i32 0
  %235 = call i32 @xfs_mru_cache_insert(i32 %229, i32 %232, i32* %234)
  store i32 %235, i32* %21, align 4
  %236 = load i32, i32* %21, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %222
  %239 = load i32, i32* %21, align 4
  %240 = load i32, i32* @EEXIST, align 4
  %241 = sub nsw i32 0, %240
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i32 0, i32* %21, align 4
  br label %244

244:                                              ; preds = %243, %238
  br label %246

245:                                              ; preds = %222
  store i32 0, i32* %6, align 4
  br label %255

246:                                              ; preds = %244
  %247 = load %struct.xfs_fstrm_item*, %struct.xfs_fstrm_item** %13, align 8
  %248 = call i32 @kmem_free(%struct.xfs_fstrm_item* %247)
  br label %249

249:                                              ; preds = %246, %221
  %250 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %251 = load i64*, i64** %9, align 8
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @xfs_filestream_put_ag(%struct.xfs_mount* %250, i64 %252)
  %254 = load i32, i32* %21, align 4
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %249, %245, %213, %191, %69
  %256 = load i32, i32* %6, align 4
  ret i32 %256
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_4__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @trace_xfs_filestream_scan(%struct.xfs_mount*, i32, i64) #1

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_alloc_pagf_init(%struct.xfs_mount*, i32*, i64, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_filestream_get_ag(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_filestream_put_ag(%struct.xfs_mount*, i64) #1

declare dso_local i64 @xfs_alloc_longest_free_extent(%struct.xfs_perag*, i32, i32) #1

declare dso_local i32 @xfs_alloc_min_freelist(%struct.xfs_mount*, %struct.xfs_perag*) #1

declare dso_local i32 @xfs_ag_resv_needed(%struct.xfs_perag*, i32) #1

declare dso_local i32 @trace_xfs_filestream_pick(%struct.xfs_inode*, i64, i64, i32) #1

declare dso_local %struct.xfs_fstrm_item* @kmem_alloc(i32, i32) #1

declare dso_local i32 @xfs_mru_cache_insert(i32, i32, i32*) #1

declare dso_local i32 @kmem_free(%struct.xfs_fstrm_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

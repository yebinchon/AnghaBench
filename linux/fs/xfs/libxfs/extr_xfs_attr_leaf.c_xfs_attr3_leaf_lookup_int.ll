; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_lookup_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_lookup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_da_args = type { i64, i32, i32, i64, i64, %struct.TYPE_3__*, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32, i32 }
%struct.xfs_attr_leaf_name_local = type { i64, i32 }
%struct.xfs_attr_leaf_name_remote = type { i64, i32, i32, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_lookup_int(%struct.xfs_buf* %0, %struct.xfs_da_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %8 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %9 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %10 = alloca %struct.xfs_attr_leaf_name_local*, align 8
  %11 = alloca %struct.xfs_attr_leaf_name_remote*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.xfs_da_args* %1, %struct.xfs_da_args** %5, align 8
  %15 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %16 = call i32 @trace_xfs_attr_leaf_lookup(%struct.xfs_da_args* %15)
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 0
  %19 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %18, align 8
  store %struct.xfs_attr_leafblock* %19, %struct.xfs_attr_leafblock** %6, align 8
  %20 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %20, i32 0, i32 9
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %24 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__* %22, %struct.xfs_attr3_icleaf_hdr* %7, %struct.xfs_attr_leafblock* %23)
  %25 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %26 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %25)
  store %struct.xfs_attr_leaf_entry* %26, %struct.xfs_attr_leaf_entry** %9, align 8
  %27 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %29, i32 0, i32 9
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 8
  %35 = icmp sge i32 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EFSCORRUPTED, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %320

39:                                               ; preds = %2
  %40 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %14, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %46, i64 %48
  store %struct.xfs_attr_leaf_entry* %49, %struct.xfs_attr_leaf_entry** %8, align 8
  br label %50

50:                                               ; preds = %80, %39
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 4
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %14, align 4
  %56 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %57 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @be32_to_cpu(i32 %58)
  %60 = load i64, i64* %12, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %79

66:                                               ; preds = %53
  %67 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %68 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @be32_to_cpu(i32 %69)
  %71 = load i64, i64* %12, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %78

77:                                               ; preds = %66
  br label %85

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %81, i64 %83
  store %struct.xfs_attr_leaf_entry* %84, %struct.xfs_attr_leaf_entry** %8, align 8
  br label %50

85:                                               ; preds = %77, %50
  %86 = load i32, i32* %13, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* %13, align 4
  %94 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %92, %85
  %98 = load i32, i32* @EFSCORRUPTED, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %320

100:                                              ; preds = %92, %88
  %101 = load i32, i32* %14, align 4
  %102 = icmp sle i32 %101, 4
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %105 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @be32_to_cpu(i32 %106)
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @EFSCORRUPTED, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %320

113:                                              ; preds = %103, %100
  br label %114

114:                                              ; preds = %126, %113
  %115 = load i32, i32* %13, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %119 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @be32_to_cpu(i32 %120)
  %122 = load i64, i64* %12, align 8
  %123 = icmp sge i64 %121, %122
  br label %124

124:                                              ; preds = %117, %114
  %125 = phi i1 [ false, %114 ], [ %123, %117 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %128 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %127, i32 -1
  store %struct.xfs_attr_leaf_entry* %128, %struct.xfs_attr_leaf_entry** %8, align 8
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %13, align 4
  br label %114

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %146, %131
  %133 = load i32, i32* %13, align 4
  %134 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %139 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @be32_to_cpu(i32 %140)
  %142 = load i64, i64* %12, align 8
  %143 = icmp slt i64 %141, %142
  br label %144

144:                                              ; preds = %137, %132
  %145 = phi i1 [ false, %132 ], [ %143, %137 ]
  br i1 %145, label %146, label %151

146:                                              ; preds = %144
  %147 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %148 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %147, i32 1
  store %struct.xfs_attr_leaf_entry* %148, %struct.xfs_attr_leaf_entry** %8, align 8
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %132

151:                                              ; preds = %144
  %152 = load i32, i32* %13, align 4
  %153 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %151
  %157 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %158 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @be32_to_cpu(i32 %159)
  %161 = load i64, i64* %12, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %156, %151
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %166 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @ENOATTR, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %320

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %309, %169
  %171 = load i32, i32* %13, align 4
  %172 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %177 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @be32_to_cpu(i32 %178)
  %180 = load i64, i64* %12, align 8
  %181 = icmp eq i64 %179, %180
  br label %182

182:                                              ; preds = %175, %170
  %183 = phi i1 [ false, %170 ], [ %181, %175 ]
  br i1 %183, label %184, label %314

184:                                              ; preds = %182
  %185 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %186 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %189 = and i32 %187, %188
  %190 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %191 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %189, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  br label %309

197:                                              ; preds = %184
  %198 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %199 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %245

204:                                              ; preds = %197
  %205 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %206 = load i32, i32* %13, align 4
  %207 = call %struct.xfs_attr_leaf_name_local* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock* %205, i32 %206)
  store %struct.xfs_attr_leaf_name_local* %207, %struct.xfs_attr_leaf_name_local** %10, align 8
  %208 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %10, align 8
  %209 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %212 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %309

216:                                              ; preds = %204
  %217 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %218 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %10, align 8
  %221 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %224 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @memcmp(i32 %219, i32 %222, i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  br label %309

229:                                              ; preds = %216
  %230 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %231 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %234 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @xfs_attr_namesp_match(i32 %232, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %229
  br label %309

239:                                              ; preds = %229
  %240 = load i32, i32* %13, align 4
  %241 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %242 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* @EEXIST, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %320

245:                                              ; preds = %197
  %246 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %247 = load i32, i32* %13, align 4
  %248 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock* %246, i32 %247)
  store %struct.xfs_attr_leaf_name_remote* %248, %struct.xfs_attr_leaf_name_remote** %11, align 8
  %249 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %11, align 8
  %250 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %253 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %251, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %245
  br label %309

257:                                              ; preds = %245
  %258 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %259 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %11, align 8
  %262 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %265 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @memcmp(i32 %260, i32 %263, i64 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %257
  br label %309

270:                                              ; preds = %257
  %271 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %272 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %275 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @xfs_attr_namesp_match(i32 %273, i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %270
  br label %309

280:                                              ; preds = %270
  %281 = load i32, i32* %13, align 4
  %282 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %283 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 8
  %284 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %11, align 8
  %285 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i64 @be32_to_cpu(i32 %286)
  %288 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %289 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %288, i32 0, i32 4
  store i64 %287, i64* %289, align 8
  %290 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %11, align 8
  %291 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i64 @be32_to_cpu(i32 %292)
  %294 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %295 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %294, i32 0, i32 7
  store i64 %293, i64* %295, align 8
  %296 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %297 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %296, i32 0, i32 5
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %302 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @xfs_attr3_rmt_blocks(i32 %300, i64 %303)
  %305 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %306 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %305, i32 0, i32 6
  store i32 %304, i32* %306, align 8
  %307 = load i32, i32* @EEXIST, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %3, align 4
  br label %320

309:                                              ; preds = %279, %269, %256, %238, %228, %215, %196
  %310 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %311 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %310, i32 1
  store %struct.xfs_attr_leaf_entry* %311, %struct.xfs_attr_leaf_entry** %8, align 8
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %13, align 4
  br label %170

314:                                              ; preds = %182
  %315 = load i32, i32* %13, align 4
  %316 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %317 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 8
  %318 = load i32, i32* @ENOATTR, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %314, %280, %239, %163, %110, %97, %36
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i32 @trace_xfs_attr_leaf_lookup(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.xfs_attr_leaf_name_local* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @xfs_attr_namesp_match(i32, i32) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock*, i32) #1

declare dso_local i32 @xfs_attr3_rmt_blocks(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

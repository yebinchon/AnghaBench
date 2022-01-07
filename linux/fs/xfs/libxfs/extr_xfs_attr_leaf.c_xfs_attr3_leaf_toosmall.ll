; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_toosmall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_toosmall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_state = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, %struct.xfs_da_state_blk* }
%struct.xfs_da_state_blk = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.xfs_attr_leafblock* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32, i32, i64, i64 }
%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_toosmall(%struct.xfs_da_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_da_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca %struct.xfs_da_state_blk*, align 8
  %8 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  store %struct.xfs_da_state* %0, %struct.xfs_da_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = call i32 @trace_xfs_attr_leaf_toosmall(%struct.TYPE_10__* %19)
  %21 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %23, align 8
  %25 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %24, i64 %30
  store %struct.xfs_da_state_blk* %31, %struct.xfs_da_state_blk** %7, align 8
  %32 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %33 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %35, align 8
  store %struct.xfs_attr_leafblock* %36, %struct.xfs_attr_leafblock** %6, align 8
  %37 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %43 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_9__* %41, %struct.xfs_attr3_icleaf_hdr* %8, %struct.xfs_attr_leafblock* %42)
  %44 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %45 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = add i64 %46, %50
  %52 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %51, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 1
  %66 = icmp sgt i32 %57, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %2
  %68 = load i32*, i32** %5, align 8
  store i32 0, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %245

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %12, align 4
  %78 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %79 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %78, i32 0, i32 1
  %80 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %81 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %80, i32 0, i32 0
  %82 = call i32 @memcpy(%struct.TYPE_8__* %79, %struct.TYPE_8__* %81, i32 16)
  %83 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %84 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %85 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %84, i32 0, i32 1
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @xfs_da3_path_shift(%struct.xfs_da_state* %83, %struct.TYPE_8__* %85, i32 %86, i32 0, i32* %14)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %3, align 4
  br label %245

92:                                               ; preds = %73
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32*, i32** %5, align 8
  store i32 0, i32* %96, align 4
  br label %99

97:                                               ; preds = %92
  %98 = load i32*, i32** %5, align 8
  store i32 2, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %95
  store i32 0, i32* %3, align 4
  br label %245

100:                                              ; preds = %69
  %101 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %102, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %197, %100
  %108 = load i32, i32* %15, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %204

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %10, align 8
  br label %119

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64, i64* %10, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %197

123:                                              ; preds = %119
  %124 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %125 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %124, i32 0, i32 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %130 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %129, i32 0, i32 2
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @xfs_attr3_leaf_read(i32 %128, i32 %133, i64 %134, i32 -1, %struct.xfs_buf** %9)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %123
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %3, align 4
  br label %245

140:                                              ; preds = %123
  %141 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %142 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %141, i32 0, i32 2
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %147 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %146, i32 0, i32 0
  %148 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %147, align 8
  %149 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_9__* %145, %struct.xfs_attr3_icleaf_hdr* %16, %struct.xfs_attr_leafblock* %148)
  %150 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %151 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %150, i32 0, i32 2
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %158 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %157, i32 0, i32 2
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = ashr i32 %163, 2
  %165 = sub nsw i32 %156, %164
  %166 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %165, %167
  %169 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %16, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %168, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %8, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %16, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %174, %176
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 4
  %180 = sub i64 %172, %179
  %181 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %182 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %181)
  %183 = sext i32 %182 to i64
  %184 = sub i64 %180, %183
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %11, align 4
  %186 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %187 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %186, i32 0, i32 2
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %192 = call i32 @xfs_trans_brelse(i32 %190, %struct.xfs_buf* %191)
  %193 = load i32, i32* %11, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %140
  br label %204

196:                                              ; preds = %140
  br label %197

197:                                              ; preds = %196, %122
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %107

204:                                              ; preds = %195, %107
  %205 = load i32, i32* %15, align 4
  %206 = icmp sge i32 %205, 2
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32*, i32** %5, align 8
  store i32 0, i32* %208, align 4
  store i32 0, i32* %3, align 4
  br label %245

209:                                              ; preds = %204
  %210 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %211 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %210, i32 0, i32 1
  %212 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %213 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %212, i32 0, i32 0
  %214 = call i32 @memcpy(%struct.TYPE_8__* %211, %struct.TYPE_8__* %213, i32 16)
  %215 = load i64, i64* %10, align 8
  %216 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %217 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %209
  %221 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %222 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %223 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %222, i32 0, i32 1
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @xfs_da3_path_shift(%struct.xfs_da_state* %221, %struct.TYPE_8__* %223, i32 %224, i32 0, i32* %14)
  store i32 %225, i32* %13, align 4
  br label %232

226:                                              ; preds = %209
  %227 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %228 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %229 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %228, i32 0, i32 0
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @xfs_da3_path_shift(%struct.xfs_da_state* %227, %struct.TYPE_8__* %229, i32 %230, i32 0, i32* %14)
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %226, %220
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  store i32 %236, i32* %3, align 4
  br label %245

237:                                              ; preds = %232
  %238 = load i32, i32* %14, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32*, i32** %5, align 8
  store i32 0, i32* %241, align 4
  br label %244

242:                                              ; preds = %237
  %243 = load i32*, i32** %5, align 8
  store i32 1, i32* %243, align 4
  br label %244

244:                                              ; preds = %242, %240
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %235, %207, %138, %99, %90, %67
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @trace_xfs_attr_leaf_toosmall(%struct.TYPE_10__*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_9__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @xfs_da3_path_shift(%struct.xfs_da_state*, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @xfs_attr3_leaf_read(i32, i32, i64, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_trans_brelse(i32, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfind_back.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfind_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@XFS_NBWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtfind_back(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @XFS_BITTOBLOCK(i32* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @xfs_rtbuf_get(i32* %28, i32* %29, i32 %30, i32 0, %struct.TYPE_4__** %15)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %6, align 4
  br label %261

36:                                               ; preds = %5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %16, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @XFS_BITTOWORD(i32* %40, i32 %41)
  store i32 %42, i32* %24, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %24, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @XFS_NBWORD, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %20, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 -1, i32 0
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @XFS_NBWORD, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %140

67:                                               ; preds = %36
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %20, align 4
  %70 = sub nsw i32 %68, %69
  %71 = add nsw i32 %70, 1
  %72 = call i32 @XFS_RTMAX(i32 %71, i32 0)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sub nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %18, align 4
  %80 = shl i32 %78, %79
  store i32 %80, i32* %21, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %22, align 4
  %84 = xor i32 %82, %83
  %85 = load i32, i32* %21, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %67
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %91 = call i32 @xfs_trans_brelse(i32* %89, %struct.TYPE_4__* %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %23, align 4
  %94 = call i32 @XFS_RTHIBIT(i32 %93)
  %95 = sub nsw i32 %92, %94
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %19, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %6, align 4
  br label %261

101:                                              ; preds = %67
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %18, align 4
  %104 = sub nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %24, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %24, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %136

109:                                              ; preds = %101
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %20, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %109
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %116 = call i32 @xfs_trans_brelse(i32* %114, %struct.TYPE_4__* %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %14, align 4
  %121 = call i32 @xfs_rtbuf_get(i32* %117, i32* %118, i32 %120, i32 0, %struct.TYPE_4__** %15)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %6, align 4
  br label %261

126:                                              ; preds = %113
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %16, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @XFS_BLOCKWMASK(i32* %130)
  store i32 %131, i32* %24, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = load i32, i32* %24, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32* %135, i32** %12, align 8
  br label %139

136:                                              ; preds = %109, %101
  %137 = load i32*, i32** %12, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 -1
  store i32* %138, i32** %12, align 8
  br label %139

139:                                              ; preds = %136, %126
  br label %141

140:                                              ; preds = %36
  store i32 0, i32* %19, align 4
  br label %141

141:                                              ; preds = %140, %139
  br label %142

142:                                              ; preds = %207, %141
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %19, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* @XFS_NBWORD, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %208

148:                                              ; preds = %142
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %22, align 4
  %152 = xor i32 %150, %151
  store i32 %152, i32* %23, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load i32*, i32** %8, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %157 = call i32 @xfs_trans_brelse(i32* %155, %struct.TYPE_4__* %156)
  %158 = load i32, i32* @XFS_NBWORD, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load i32, i32* %23, align 4
  %161 = call i32 @XFS_RTHIBIT(i32 %160)
  %162 = sub nsw i32 %159, %161
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %19, align 4
  %167 = sub nsw i32 %165, %166
  %168 = add nsw i32 %167, 1
  %169 = load i32*, i32** %11, align 8
  store i32 %168, i32* %169, align 4
  store i32 0, i32* %6, align 4
  br label %261

170:                                              ; preds = %148
  %171 = load i32, i32* @XFS_NBWORD, align 4
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %24, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %24, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %204

177:                                              ; preds = %170
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %20, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %184 = call i32 @xfs_trans_brelse(i32* %182, %struct.TYPE_4__* %183)
  %185 = load i32*, i32** %7, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %14, align 4
  %189 = call i32 @xfs_rtbuf_get(i32* %185, i32* %186, i32 %188, i32 0, %struct.TYPE_4__** %15)
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %181
  %193 = load i32, i32* %17, align 4
  store i32 %193, i32* %6, align 4
  br label %261

194:                                              ; preds = %181
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %16, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @XFS_BLOCKWMASK(i32* %198)
  store i32 %199, i32* %24, align 4
  %200 = load i32*, i32** %16, align 8
  %201 = load i32, i32* %24, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32* %203, i32** %12, align 8
  br label %207

204:                                              ; preds = %177, %170
  %205 = load i32*, i32** %12, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 -1
  store i32* %206, i32** %12, align 8
  br label %207

207:                                              ; preds = %204, %194
  br label %142

208:                                              ; preds = %142
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %19, align 4
  %211 = sub nsw i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %252

213:                                              ; preds = %208
  %214 = load i32, i32* @XFS_NBWORD, align 4
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* %19, align 4
  %217 = sub nsw i32 %215, %216
  %218 = sub nsw i32 %214, %217
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %19, align 4
  %221 = sub nsw i32 %219, %220
  %222 = shl i32 1, %221
  %223 = sub nsw i32 %222, 1
  %224 = load i32, i32* %18, align 4
  %225 = shl i32 %223, %224
  store i32 %225, i32* %21, align 4
  %226 = load i32*, i32** %12, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %22, align 4
  %229 = xor i32 %227, %228
  %230 = load i32, i32* %21, align 4
  %231 = and i32 %229, %230
  store i32 %231, i32* %23, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %249

233:                                              ; preds = %213
  %234 = load i32*, i32** %8, align 8
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %236 = call i32 @xfs_trans_brelse(i32* %234, %struct.TYPE_4__* %235)
  %237 = load i32, i32* @XFS_NBWORD, align 4
  %238 = sub nsw i32 %237, 1
  %239 = load i32, i32* %23, align 4
  %240 = call i32 @XFS_RTHIBIT(i32 %239)
  %241 = sub nsw i32 %238, %240
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %19, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %19, align 4
  %246 = sub nsw i32 %244, %245
  %247 = add nsw i32 %246, 1
  %248 = load i32*, i32** %11, align 8
  store i32 %247, i32* %248, align 4
  store i32 0, i32* %6, align 4
  br label %261

249:                                              ; preds = %213
  %250 = load i32, i32* %20, align 4
  store i32 %250, i32* %19, align 4
  br label %251

251:                                              ; preds = %249
  br label %252

252:                                              ; preds = %251, %208
  %253 = load i32*, i32** %8, align 8
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %255 = call i32 @xfs_trans_brelse(i32* %253, %struct.TYPE_4__* %254)
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %19, align 4
  %258 = sub nsw i32 %256, %257
  %259 = add nsw i32 %258, 1
  %260 = load i32*, i32** %11, align 8
  store i32 %259, i32* %260, align 4
  store i32 0, i32* %6, align 4
  br label %261

261:                                              ; preds = %252, %233, %192, %154, %124, %88, %34
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local i32 @XFS_BITTOBLOCK(i32*, i32) #1

declare dso_local i32 @xfs_rtbuf_get(i32*, i32*, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @XFS_BITTOWORD(i32*, i32) #1

declare dso_local i32 @XFS_RTMAX(i32, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @XFS_RTHIBIT(i32) #1

declare dso_local i32 @XFS_BLOCKWMASK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

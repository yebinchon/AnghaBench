; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfind_forw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfind_forw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@XFS_NBWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtfind_forw(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
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
  br label %234

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
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
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
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %132

65:                                               ; preds = %36
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @XFS_NBWORD, align 4
  %70 = call i32 @XFS_RTMIN(i32 %68, i32 %69)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  %74 = shl i32 1, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %75, %76
  store i32 %77, i32* %21, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %22, align 4
  %81 = xor i32 %79, %80
  %82 = load i32, i32* %21, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %23, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %65
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %88 = call i32 @xfs_trans_brelse(i32* %86, %struct.TYPE_4__* %87)
  %89 = load i32, i32* %23, align 4
  %90 = call i32 @XFS_RTLOBIT(i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  store i32 0, i32* %6, align 4
  br label %234

98:                                               ; preds = %65
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %24, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %24, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @XFS_BLOCKWSIZE(i32* %104)
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %98
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %114 = call i32 @xfs_trans_brelse(i32* %112, %struct.TYPE_4__* %113)
  %115 = load i32*, i32** %7, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = call i32 @xfs_rtbuf_get(i32* %115, i32* %116, i32 %118, i32 0, %struct.TYPE_4__** %15)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %6, align 4
  br label %234

124:                                              ; preds = %111
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %16, align 8
  store i32* %127, i32** %12, align 8
  store i32 0, i32* %24, align 4
  br label %131

128:                                              ; preds = %107, %98
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %12, align 8
  br label %131

131:                                              ; preds = %128, %124
  br label %133

132:                                              ; preds = %36
  store i32 0, i32* %18, align 4
  br label %133

133:                                              ; preds = %132, %131
  br label %134

134:                                              ; preds = %192, %133
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %18, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* @XFS_NBWORD, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %193

140:                                              ; preds = %134
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %22, align 4
  %144 = xor i32 %142, %143
  store i32 %144, i32* %23, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load i32*, i32** %8, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %149 = call i32 @xfs_trans_brelse(i32* %147, %struct.TYPE_4__* %148)
  %150 = load i32, i32* %23, align 4
  %151 = call i32 @XFS_RTLOBIT(i32 %150)
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  %158 = load i32*, i32** %11, align 8
  store i32 %157, i32* %158, align 4
  store i32 0, i32* %6, align 4
  br label %234

159:                                              ; preds = %140
  %160 = load i32, i32* @XFS_NBWORD, align 4
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %24, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %24, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @XFS_BLOCKWSIZE(i32* %165)
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %159
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load i32*, i32** %8, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %175 = call i32 @xfs_trans_brelse(i32* %173, %struct.TYPE_4__* %174)
  %176 = load i32*, i32** %7, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = call i32 @xfs_rtbuf_get(i32* %176, i32* %177, i32 %179, i32 0, %struct.TYPE_4__** %15)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %6, align 4
  br label %234

185:                                              ; preds = %172
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %16, align 8
  store i32* %188, i32** %12, align 8
  store i32 0, i32* %24, align 4
  br label %192

189:                                              ; preds = %168, %159
  %190 = load i32*, i32** %12, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %12, align 8
  br label %192

192:                                              ; preds = %189, %185
  br label %134

193:                                              ; preds = %134
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %18, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %19, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %225

198:                                              ; preds = %193
  %199 = load i32, i32* %19, align 4
  %200 = shl i32 1, %199
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %21, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %22, align 4
  %205 = xor i32 %203, %204
  %206 = load i32, i32* %21, align 4
  %207 = and i32 %205, %206
  store i32 %207, i32* %23, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %198
  %210 = load i32*, i32** %8, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %212 = call i32 @xfs_trans_brelse(i32* %210, %struct.TYPE_4__* %211)
  %213 = load i32, i32* %23, align 4
  %214 = call i32 @XFS_RTLOBIT(i32 %213)
  %215 = load i32, i32* %18, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %18, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %217, %218
  %220 = sub nsw i32 %219, 1
  %221 = load i32*, i32** %11, align 8
  store i32 %220, i32* %221, align 4
  store i32 0, i32* %6, align 4
  br label %234

222:                                              ; preds = %198
  %223 = load i32, i32* %20, align 4
  store i32 %223, i32* %18, align 4
  br label %224

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %224, %193
  %226 = load i32*, i32** %8, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %228 = call i32 @xfs_trans_brelse(i32* %226, %struct.TYPE_4__* %227)
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 %229, %230
  %232 = sub nsw i32 %231, 1
  %233 = load i32*, i32** %11, align 8
  store i32 %232, i32* %233, align 4
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %225, %209, %183, %146, %122, %85, %34
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local i32 @XFS_BITTOBLOCK(i32*, i32) #1

declare dso_local i32 @xfs_rtbuf_get(i32*, i32*, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @XFS_BITTOWORD(i32*, i32) #1

declare dso_local i32 @XFS_RTMIN(i32, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @XFS_RTLOBIT(i32) #1

declare dso_local i32 @XFS_BLOCKWSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

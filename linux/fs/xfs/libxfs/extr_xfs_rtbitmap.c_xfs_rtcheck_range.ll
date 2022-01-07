; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtcheck_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtcheck_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@XFS_NBWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtcheck_range(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @XFS_BITTOBLOCK(i32* %27, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @xfs_rtbuf_get(i32* %30, i32* %31, i32 %32, i32 0, %struct.TYPE_4__** %19)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* %21, align 4
  store i32 %37, i32* %8, align 4
  br label %226

38:                                               ; preds = %7
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %20, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @XFS_BITTOWORD(i32* %42, i32 %43)
  store i32 %44, i32* %26, align 4
  %45 = load i32*, i32** %20, align 8
  %46 = load i32, i32* %26, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %16, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @XFS_NBWORD, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %124

57:                                               ; preds = %38
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @XFS_NBWORD, align 4
  %62 = call i32 @XFS_RTMIN(i32 %60, i32 %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %63, %64
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %17, align 4
  %69 = shl i32 %67, %68
  store i32 %69, i32* %24, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = xor i32 %71, %72
  %74 = load i32, i32* %24, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %25, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %57
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %80 = call i32 @xfs_trans_brelse(i32* %78, %struct.TYPE_4__* %79)
  %81 = load i32, i32* %25, align 4
  %82 = call i32 @XFS_RTLOBIT(i32 %81)
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %22, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32*, i32** %14, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %15, align 8
  store i32 0, i32* %89, align 4
  store i32 0, i32* %8, align 4
  br label %226

90:                                               ; preds = %57
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %26, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %26, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @XFS_BLOCKWSIZE(i32* %96)
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %90
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %106 = call i32 @xfs_trans_brelse(i32* %104, %struct.TYPE_4__* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  %111 = call i32 @xfs_rtbuf_get(i32* %107, i32* %108, i32 %110, i32 0, %struct.TYPE_4__** %19)
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %21, align 4
  store i32 %115, i32* %8, align 4
  br label %226

116:                                              ; preds = %103
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %20, align 8
  store i32* %119, i32** %16, align 8
  store i32 0, i32* %26, align 4
  br label %123

120:                                              ; preds = %99, %90
  %121 = load i32*, i32** %16, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %16, align 8
  br label %123

123:                                              ; preds = %120, %116
  br label %125

124:                                              ; preds = %38
  store i32 0, i32* %22, align 4
  br label %125

125:                                              ; preds = %124, %123
  br label %126

126:                                              ; preds = %184, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %22, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load i32, i32* @XFS_NBWORD, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %185

132:                                              ; preds = %126
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = xor i32 %134, %135
  store i32 %136, i32* %25, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load i32*, i32** %10, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %141 = call i32 @xfs_trans_brelse(i32* %139, %struct.TYPE_4__* %140)
  %142 = load i32, i32* %25, align 4
  %143 = call i32 @XFS_RTLOBIT(i32 %142)
  %144 = load i32, i32* %22, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %22, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32*, i32** %14, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %15, align 8
  store i32 0, i32* %150, align 4
  store i32 0, i32* %8, align 4
  br label %226

151:                                              ; preds = %132
  %152 = load i32, i32* @XFS_NBWORD, align 4
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %22, align 4
  %155 = load i32, i32* %26, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %26, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 @XFS_BLOCKWSIZE(i32* %157)
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %151
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %160
  %165 = load i32*, i32** %10, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %167 = call i32 @xfs_trans_brelse(i32* %165, %struct.TYPE_4__* %166)
  %168 = load i32*, i32** %9, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  %172 = call i32 @xfs_rtbuf_get(i32* %168, i32* %169, i32 %171, i32 0, %struct.TYPE_4__** %19)
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %21, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* %21, align 4
  store i32 %176, i32* %8, align 4
  br label %226

177:                                              ; preds = %164
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  store i32* %180, i32** %20, align 8
  store i32* %180, i32** %16, align 8
  store i32 0, i32* %26, align 4
  br label %184

181:                                              ; preds = %160, %151
  %182 = load i32*, i32** %16, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %16, align 8
  br label %184

184:                                              ; preds = %181, %177
  br label %126

185:                                              ; preds = %126
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %22, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %23, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %217

190:                                              ; preds = %185
  %191 = load i32, i32* %23, align 4
  %192 = shl i32 1, %191
  %193 = sub nsw i32 %192, 1
  store i32 %193, i32* %24, align 4
  %194 = load i32*, i32** %16, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %13, align 4
  %197 = xor i32 %195, %196
  %198 = load i32, i32* %24, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %25, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %190
  %202 = load i32*, i32** %10, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %204 = call i32 @xfs_trans_brelse(i32* %202, %struct.TYPE_4__* %203)
  %205 = load i32, i32* %25, align 4
  %206 = call i32 @XFS_RTLOBIT(i32 %205)
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %22, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32*, i32** %14, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32*, i32** %15, align 8
  store i32 0, i32* %213, align 4
  store i32 0, i32* %8, align 4
  br label %226

214:                                              ; preds = %190
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %22, align 4
  br label %216

216:                                              ; preds = %214
  br label %217

217:                                              ; preds = %216, %185
  %218 = load i32*, i32** %10, align 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %220 = call i32 @xfs_trans_brelse(i32* %218, %struct.TYPE_4__* %219)
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %22, align 4
  %223 = add nsw i32 %221, %222
  %224 = load i32*, i32** %14, align 8
  store i32 %223, i32* %224, align 4
  %225 = load i32*, i32** %15, align 8
  store i32 1, i32* %225, align 4
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %217, %201, %175, %138, %114, %77, %36
  %227 = load i32, i32* %8, align 4
  ret i32 %227
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

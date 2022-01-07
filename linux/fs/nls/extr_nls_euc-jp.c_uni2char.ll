; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_euc-jp.c_uni2char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_euc-jp.c_uni2char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@p_nls = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@SS2 = common dso_local global i8 0, align 1
@SS3 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @uni2char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni2char(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %249

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %21(i32 %22, i8* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %249

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @IS_SJIS_JISX0201KANA(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ENAMETOOLONG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %249

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %47, i8* %49, align 1
  %50 = load i8, i8* @SS2, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  store i32 2, i32* %4, align 4
  br label %249

53:                                               ; preds = %32
  br label %247

54:                                               ; preds = %29
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %243

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @sjisnec2sjisibm(i8* %58, i8 zeroext %61, i8 zeroext %64)
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @IS_SJIS_UDC_LOW(i8 zeroext %68, i8 zeroext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %57
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @MAP_SJIS2EUC(i8 zeroext %77, i8 zeroext %80, i32 240, i8 zeroext %83, i8 zeroext %86, i32 245)
  br label %242

88:                                               ; preds = %57
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @IS_SJIS_UDC_HI(i8 zeroext %91, i8 zeroext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @ENAMETOOLONG, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %249

103:                                              ; preds = %97
  store i32 3, i32* %8, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %9, align 1
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  store i8 %109, i8* %10, align 1
  %110 = load i8, i8* @SS3, align 1
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %110, i8* %112, align 1
  %113 = load i8, i8* %9, align 1
  %114 = load i8, i8* %10, align 1
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @MAP_SJIS2EUC(i8 zeroext %113, i8 zeroext %114, i32 245, i8 zeroext %117, i8 zeroext %120, i32 245)
  br label %241

122:                                              ; preds = %88
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = call i64 @IS_SJIS_IBM(i8 zeroext %125, i8 zeroext %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %165

131:                                              ; preds = %122
  %132 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @sjisibm2euc(i8* %132, i8 zeroext %135, i8 zeroext %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load i32, i32* @ENAMETOOLONG, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %249

146:                                              ; preds = %131
  store i8 0, i8* %12, align 1
  br label %147

147:                                              ; preds = %161, %146
  %148 = load i8, i8* %12, align 1
  %149 = zext i8 %148 to i32
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load i8, i8* %12, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %12, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  store i8 %156, i8* %160, align 1
  br label %161

161:                                              ; preds = %152
  %162 = load i8, i8* %12, align 1
  %163 = add i8 %162, 1
  store i8 %163, i8* %12, align 1
  br label %147

164:                                              ; preds = %147
  br label %240

165:                                              ; preds = %122
  %166 = load i8*, i8** %6, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = call i64 @IS_SJIS_JISX0208(i8 zeroext %168, i8 zeroext %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %236

174:                                              ; preds = %165
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = xor i32 %178, 160
  %180 = mul nsw i32 %179, 2
  %181 = add nsw i32 %180, 95
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %6, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  store i8 %182, i8* %184, align 1
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp sgt i32 %188, 158
  br i1 %189, label %190, label %195

190:                                              ; preds = %174
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = add i8 %193, 1
  store i8 %194, i8* %192, align 1
  br label %195

195:                                              ; preds = %190, %174
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp slt i32 %199, 127
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = add nsw i32 %205, 97
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  store i8 %207, i8* %209, align 1
  br label %235

210:                                              ; preds = %195
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp slt i32 %214, 159
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %220, 96
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  store i8 %222, i8* %224, align 1
  br label %234

225:                                              ; preds = %210
  %226 = load i8*, i8** %6, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = add nsw i32 %229, 2
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %6, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  store i8 %231, i8* %233, align 1
  br label %234

234:                                              ; preds = %225, %216
  br label %235

235:                                              ; preds = %234, %201
  br label %239

236:                                              ; preds = %165
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %249

239:                                              ; preds = %235
  br label %240

240:                                              ; preds = %239, %164
  br label %241

241:                                              ; preds = %240, %103
  br label %242

242:                                              ; preds = %241, %74
  br label %246

243:                                              ; preds = %54
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %4, align 4
  br label %249

246:                                              ; preds = %242
  br label %247

247:                                              ; preds = %246, %53
  %248 = load i32, i32* %8, align 4
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %247, %243, %236, %143, %100, %44, %41, %27, %15
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i64 @IS_SJIS_JISX0201KANA(i8 zeroext) #1

declare dso_local i32 @sjisnec2sjisibm(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @IS_SJIS_UDC_LOW(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @MAP_SJIS2EUC(i8 zeroext, i8 zeroext, i32, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i64 @IS_SJIS_UDC_HI(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @IS_SJIS_IBM(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @sjisibm2euc(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @IS_SJIS_JISX0208(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_idr.c_ida_alloc_range.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_idr.c_ida_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ida = type { i32 }
%struct.ida_bitmap = type { i64* }

@xas = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@IDA_BITMAP_BITS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@XA_FREE_MARK = common dso_local global i32 0, align 4
@BITS_PER_XA_VALUE = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ida_alloc_range(%struct.ida* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ida*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ida_bitmap*, align 8
  %13 = alloca %struct.ida_bitmap*, align 8
  %14 = alloca i64, align 8
  store %struct.ida* %0, %struct.ida** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ida*, %struct.ida** %6, align 8
  %16 = getelementptr inbounds %struct.ida, %struct.ida* %15, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %19 = udiv i32 %17, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 4
  %21 = call i32 @XA_STATE(i32 %20, i32* %16, i32 %19)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %24 = urem i32 %22, %23
  store i32 %24, i32* %10, align 4
  store %struct.ida_bitmap* null, %struct.ida_bitmap** %13, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %246

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @INT_MAX, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %30
  br label %36

36:                                               ; preds = %233, %198, %35
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @xas_lock_irqsave(%struct.TYPE_11__* @xas, i64 %37)
  br label %39

39:                                               ; preds = %145, %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %42 = udiv i32 %40, %41
  %43 = load i32, i32* @XA_FREE_MARK, align 4
  %44 = call %struct.ida_bitmap* @xas_find_marked(%struct.TYPE_11__* @xas, i32 %42, i32 %43)
  store %struct.ida_bitmap* %44, %struct.ida_bitmap** %12, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %48 = udiv i32 %46, %47
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 4
  %53 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %241

60:                                               ; preds = %51
  %61 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %62 = call i64 @xa_is_value(%struct.ida_bitmap* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %123

64:                                               ; preds = %60
  %65 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %66 = call i64 @xa_to_value(%struct.ida_bitmap* %65)
  store i64 %66, i64* %14, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @BITS_PER_XA_VALUE, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %64
  %71 = load i32, i32* @BITS_PER_XA_VALUE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @find_next_zero_bit(i64* %14, i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 4
  %75 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %76 = mul i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %241

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @BITS_PER_XA_VALUE, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 1, %88
  %90 = load i64, i64* %14, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call %struct.ida_bitmap* @xa_mk_value(i64 %92)
  %94 = call i32 @xas_store(%struct.TYPE_11__* @xas, %struct.ida_bitmap* %93)
  br label %192

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.ida_bitmap*, %struct.ida_bitmap** %13, align 8
  store %struct.ida_bitmap* %97, %struct.ida_bitmap** %12, align 8
  %98 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %99 = icmp ne %struct.ida_bitmap* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @GFP_NOWAIT, align 4
  %102 = call %struct.ida_bitmap* @kzalloc(i32 8, i32 %101)
  store %struct.ida_bitmap* %102, %struct.ida_bitmap** %12, align 8
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %105 = icmp ne %struct.ida_bitmap* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  br label %223

107:                                              ; preds = %103
  %108 = load i64, i64* %14, align 8
  %109 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %110 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  store i64 %108, i64* %112, align 8
  %113 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %114 = call i32 @xas_store(%struct.TYPE_11__* @xas, %struct.ida_bitmap* %113)
  %115 = call i32 @xas_error(%struct.TYPE_11__* @xas)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %119 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64 0, i64* %121, align 8
  br label %192

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %60
  %124 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %125 = icmp ne %struct.ida_bitmap* %124, null
  br i1 %125, label %126, label %162

126:                                              ; preds = %123
  %127 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %128 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @find_next_zero_bit(i64* %129, i32 %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 4
  %134 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %135 = mul i32 %133, %134
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  br label %241

141:                                              ; preds = %126
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %39

146:                                              ; preds = %141
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %149 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = call i32 @__set_bit(i32 %147, i64* %150)
  %152 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %153 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %156 = call i64 @bitmap_full(i64* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load i32, i32* @XA_FREE_MARK, align 4
  %160 = call i32 @xas_clear_mark(%struct.TYPE_11__* @xas, i32 %159)
  br label %161

161:                                              ; preds = %158, %146
  br label %191

162:                                              ; preds = %123
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @BITS_PER_XA_VALUE, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = shl i64 1, %168
  %170 = call %struct.ida_bitmap* @xa_mk_value(i64 %169)
  store %struct.ida_bitmap* %170, %struct.ida_bitmap** %12, align 8
  br label %188

171:                                              ; preds = %162
  %172 = load %struct.ida_bitmap*, %struct.ida_bitmap** %13, align 8
  store %struct.ida_bitmap* %172, %struct.ida_bitmap** %12, align 8
  %173 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %174 = icmp ne %struct.ida_bitmap* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @GFP_NOWAIT, align 4
  %177 = call %struct.ida_bitmap* @kzalloc(i32 8, i32 %176)
  store %struct.ida_bitmap* %177, %struct.ida_bitmap** %12, align 8
  br label %178

178:                                              ; preds = %175, %171
  %179 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %180 = icmp ne %struct.ida_bitmap* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  br label %223

182:                                              ; preds = %178
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %185 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = call i32 @__set_bit(i32 %183, i64* %186)
  br label %188

188:                                              ; preds = %182, %166
  %189 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %190 = call i32 @xas_store(%struct.TYPE_11__* @xas, %struct.ida_bitmap* %189)
  br label %191

191:                                              ; preds = %188, %161
  br label %192

192:                                              ; preds = %191, %117, %86
  %193 = load i64, i64* %11, align 8
  %194 = call i32 @xas_unlock_irqrestore(%struct.TYPE_11__* @xas, i64 %193)
  %195 = load i32, i32* %9, align 4
  %196 = call i64 @xas_nomem(%struct.TYPE_11__* @xas, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %192
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %201 = udiv i32 %199, %200
  store i32 %201, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %204 = urem i32 %202, %203
  store i32 %204, i32* %10, align 4
  br label %36

205:                                              ; preds = %192
  %206 = load %struct.ida_bitmap*, %struct.ida_bitmap** %12, align 8
  %207 = load %struct.ida_bitmap*, %struct.ida_bitmap** %13, align 8
  %208 = icmp ne %struct.ida_bitmap* %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load %struct.ida_bitmap*, %struct.ida_bitmap** %13, align 8
  %211 = call i32 @kfree(%struct.ida_bitmap* %210)
  br label %212

212:                                              ; preds = %209, %205
  %213 = call i32 @xas_error(%struct.TYPE_11__* @xas)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = call i32 @xas_error(%struct.TYPE_11__* @xas)
  store i32 %216, i32* %5, align 4
  br label %246

217:                                              ; preds = %212
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 4
  %219 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %220 = mul i32 %218, %219
  %221 = load i32, i32* %10, align 4
  %222 = add i32 %220, %221
  store i32 %222, i32* %5, align 4
  br label %246

223:                                              ; preds = %181, %106
  %224 = load i64, i64* %11, align 8
  %225 = call i32 @xas_unlock_irqrestore(%struct.TYPE_11__* @xas, i64 %224)
  %226 = load i32, i32* %9, align 4
  %227 = call %struct.ida_bitmap* @kzalloc(i32 8, i32 %226)
  store %struct.ida_bitmap* %227, %struct.ida_bitmap** %13, align 8
  %228 = load %struct.ida_bitmap*, %struct.ida_bitmap** %13, align 8
  %229 = icmp ne %struct.ida_bitmap* %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %5, align 4
  br label %246

233:                                              ; preds = %223
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %236 = udiv i32 %234, %235
  %237 = call i32 @xas_set(%struct.TYPE_11__* @xas, i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %240 = urem i32 %238, %239
  store i32 %240, i32* %10, align 4
  br label %36

241:                                              ; preds = %140, %81, %59
  %242 = load i64, i64* %11, align 8
  %243 = call i32 @xas_unlock_irqrestore(%struct.TYPE_11__* @xas, i64 %242)
  %244 = load i32, i32* @ENOSPC, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %241, %230, %217, %215, %27
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @xas_lock_irqsave(%struct.TYPE_11__*, i64) #1

declare dso_local %struct.ida_bitmap* @xas_find_marked(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @xa_is_value(%struct.ida_bitmap*) #1

declare dso_local i64 @xa_to_value(%struct.ida_bitmap*) #1

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #1

declare dso_local i32 @xas_store(%struct.TYPE_11__*, %struct.ida_bitmap*) #1

declare dso_local %struct.ida_bitmap* @xa_mk_value(i64) #1

declare dso_local %struct.ida_bitmap* @kzalloc(i32, i32) #1

declare dso_local i32 @xas_error(%struct.TYPE_11__*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i64 @bitmap_full(i64*, i32) #1

declare dso_local i32 @xas_clear_mark(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @xas_unlock_irqrestore(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @xas_nomem(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @kfree(%struct.ida_bitmap*) #1

declare dso_local i32 @xas_set(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

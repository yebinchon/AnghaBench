; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_sw842_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_sw842_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32, i32, i32*, i32*, i64, i32* }

@OP_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"template is %lx\0A\00", align 1
@REPEAT_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@sw842_template_counts = common dso_local global i32 0, align 4
@template_repeat_count = common dso_local global i32 0, align 4
@template_zeros_count = common dso_local global i32 0, align 4
@SHORT_DATA_BITS = common dso_local global i32 0, align 4
@SHORT_DATA_BITS_MAX = common dso_local global i32 0, align 4
@template_short_data_count = common dso_local global i32 0, align 4
@template_end_count = common dso_local global i32 0, align 4
@CRC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CRC mismatch for decompression\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sw842_decompress(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sw842_param, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 5
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  store i32* %23, i32** %24, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 3
  store i32* %25, i32** %26, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %176, %4
  %34 = load i32, i32* @OP_BITS, align 4
  %35 = call i32 @next_bits(%struct.sw842_param* %10, i32* %12, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %219

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %167 [
    i32 130, label %45
    i32 128, label %95
    i32 129, label %117
    i32 131, label %161
  ]

45:                                               ; preds = %40
  %46 = load i32, i32* @REPEAT_BITS, align 4
  %47 = call i32 @next_bits(%struct.sw842_param* %10, i32* %13, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %219

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp eq i32* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %219

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %63, 8
  %65 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @ENOSPC, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %219

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %13, align 4
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 -8
  %82 = call i32 @memcpy(i32* %78, i32* %81, i32 8)
  %83 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  store i32* %85, i32** %83, align 8
  %86 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub i32 %87, 8
  store i32 %88, i32* %86, align 4
  br label %72

89:                                               ; preds = %72
  %90 = load i32, i32* @sw842_template_counts, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @atomic_inc(i32* @template_repeat_count)
  br label %94

94:                                               ; preds = %92, %89
  br label %175

95:                                               ; preds = %40
  %96 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ugt i32 8, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOSPC, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %219

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @memset(i32* %104, i32 0, i32 8)
  %106 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  store i32* %108, i32** %106, align 8
  %109 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub i32 %110, 8
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @sw842_template_counts, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = call i32 @atomic_inc(i32* @template_zeros_count)
  br label %116

116:                                              ; preds = %114, %102
  br label %175

117:                                              ; preds = %40
  %118 = load i32, i32* @SHORT_DATA_BITS, align 4
  %119 = call i32 @next_bits(%struct.sw842_param* %10, i32* %15, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %5, align 4
  br label %219

124:                                              ; preds = %117
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @SHORT_DATA_BITS_MAX, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %124
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %219

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %145, %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %15, align 4
  %138 = icmp sgt i32 %136, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = call i32 @next_bits(%struct.sw842_param* %10, i32* %14, i32 8)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %219

145:                                              ; preds = %139
  %146 = load i32, i32* %14, align 4
  %147 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %149, align 8
  %152 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add i32 %153, -1
  store i32 %154, i32* %152, align 4
  br label %135

155:                                              ; preds = %135
  %156 = load i32, i32* @sw842_template_counts, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = call i32 @atomic_inc(i32* @template_short_data_count)
  br label %160

160:                                              ; preds = %158, %155
  br label %175

161:                                              ; preds = %40
  %162 = load i32, i32* @sw842_template_counts, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @atomic_inc(i32* @template_end_count)
  br label %166

166:                                              ; preds = %164, %161
  br label %175

167:                                              ; preds = %40
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @do_op(%struct.sw842_param* %10, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %5, align 4
  br label %219

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %166, %160, %116, %94
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 131
  br i1 %178, label %33, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @CRC_BITS, align 4
  %181 = call i32 @next_bits(%struct.sw842_param* %10, i32* %17, i32 %180)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %5, align 4
  br label %219

186:                                              ; preds = %179
  %187 = load i32, i32* %17, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %16, align 4
  %190 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub i32 %189, %191
  %193 = call i64 @crc32_be(i32 0, i32* %188, i32 %192)
  %194 = trunc i64 %193 to i32
  %195 = icmp ne i32 %187, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %186
  %197 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %219

200:                                              ; preds = %186
  %201 = load i32, i32* %16, align 4
  %202 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = sub i32 %201, %203
  %205 = load i32, i32* @UINT_MAX, align 4
  %206 = icmp ugt i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i64 @unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  %211 = load i32, i32* @ENOSPC, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %5, align 4
  br label %219

213:                                              ; preds = %200
  %214 = load i32, i32* %16, align 4
  %215 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 %214, %216
  %218 = load i32*, i32** %9, align 8
  store i32 %217, i32* %218, align 4
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %213, %210, %196, %184, %172, %143, %131, %122, %99, %68, %57, %50, %38
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @next_bits(%struct.sw842_param*, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @do_op(%struct.sw842_param*, i32) #1

declare dso_local i64 @crc32_be(i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

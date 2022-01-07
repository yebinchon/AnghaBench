; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_decode_bch.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_decode_bch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32, i32, i32*, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_bch(%struct.bch_control* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bch_control*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %23 = call i32 @BCH_ECC_WORDS(%struct.bch_control* %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %11, align 4
  %25 = mul i32 8, %24
  %26 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %27 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %30 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %28, %31
  %33 = icmp ugt i32 %25, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %209

37:                                               ; preds = %7
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %123, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %209

52:                                               ; preds = %46
  %53 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @encode_bch(%struct.bch_control* %53, i32* %54, i32 %55, i32* null)
  br label %64

57:                                               ; preds = %40
  %58 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %59 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %60 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @load_ecc8(%struct.bch_control* %58, i32* %61, i32* %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %111

67:                                               ; preds = %64
  %68 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %69 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %70 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @load_ecc8(%struct.bch_control* %68, i32* %71, i32* %72)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %103, %67
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %80 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %87 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, %85
  store i32 %93, i32* %91, align 4
  %94 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %95 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %21, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %21, align 4
  br label %103

103:                                              ; preds = %78
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %18, align 4
  br label %74

106:                                              ; preds = %74
  %107 = load i32, i32* %21, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %209

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %64
  %112 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %113 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %114 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %117 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @compute_syndromes(%struct.bch_control* %112, i32* %115, i32* %118)
  %120 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %121 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %14, align 8
  br label %123

123:                                              ; preds = %111, %37
  %124 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @compute_error_locator_polynomial(%struct.bch_control* %124, i32* %125)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %131 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %132 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @find_poly_roots(%struct.bch_control* %130, i32 1, i32 %133, i32* %134)
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  store i32 -1, i32* %19, align 4
  br label %140

140:                                              ; preds = %139, %129
  br label %141

141:                                              ; preds = %140, %123
  %142 = load i32, i32* %19, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %199

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = mul i32 %145, 8
  %147 = load %struct.bch_control*, %struct.bch_control** %9, align 8
  %148 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %146, %149
  store i32 %150, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %195, %144
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %198

155:                                              ; preds = %151
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp uge i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  store i32 -1, i32* %19, align 4
  br label %198

164:                                              ; preds = %155
  %165 = load i32, i32* %17, align 4
  %166 = sub i32 %165, 1
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = sub i32 %166, %171
  %173 = load i32*, i32** %15, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  %177 = load i32*, i32** %15, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, -8
  %183 = load i32*, i32** %15, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 7
  %189 = sub i32 7, %188
  %190 = or i32 %182, %189
  %191 = load i32*, i32** %15, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %164
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %18, align 4
  br label %151

198:                                              ; preds = %163, %151
  br label %199

199:                                              ; preds = %198, %141
  %200 = load i32, i32* %19, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i32, i32* %19, align 4
  br label %207

204:                                              ; preds = %199
  %205 = load i32, i32* @EBADMSG, align 4
  %206 = sub nsw i32 0, %205
  br label %207

207:                                              ; preds = %204, %202
  %208 = phi i32 [ %203, %202 ], [ %206, %204 ]
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %207, %109, %49, %34
  %210 = load i32, i32* %8, align 4
  ret i32 %210
}

declare dso_local i32 @BCH_ECC_WORDS(%struct.bch_control*) #1

declare dso_local i32 @encode_bch(%struct.bch_control*, i32*, i32, i32*) #1

declare dso_local i32 @load_ecc8(%struct.bch_control*, i32*, i32*) #1

declare dso_local i32 @compute_syndromes(%struct.bch_control*, i32*, i32*) #1

declare dso_local i32 @compute_error_locator_polynomial(%struct.bch_control*, i32*) #1

declare dso_local i32 @find_poly_roots(%struct.bch_control*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

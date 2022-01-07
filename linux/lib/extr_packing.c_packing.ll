; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_packing.c_packing.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_packing.c_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@PACK = common dso_local global i32 0, align 4
@UNPACK = common dso_local global i32 0, align 4
@QUIRK_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@QUIRK_LSW32_IS_FIRST = common dso_local global i32 0, align 4
@QUIRK_MSB_ON_THE_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packing(i8* %0, i32* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %211

35:                                               ; preds = %7
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 %40, 64
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %211

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @PACK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %50, 64
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %16, align 4
  %57 = zext i32 %56 to i64
  %58 = shl i64 1, %57
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ERANGE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %211

63:                                               ; preds = %52, %49, %45
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @UNPACK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 8
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sdiv i32 %72, 8
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %207, %69
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %210

79:                                               ; preds = %75
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = srem i32 %84, 8
  store i32 %85, i32* %20, align 4
  br label %87

86:                                               ; preds = %79
  store i32 7, i32* %20, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = srem i32 %92, 8
  store i32 %93, i32* %21, align 4
  br label %95

94:                                               ; preds = %87
  store i32 0, i32* %21, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %19, align 4
  %97 = mul nsw i32 %96, 8
  %98 = load i32, i32* %20, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %19, align 4
  %103 = mul nsw i32 %102, 8
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %25, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %25, align 4
  %110 = call i32 @GENMASK_ULL(i32 %108, i32 %109)
  store i32 %110, i32* %26, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = call i32 @GENMASK_ULL(i32 %111, i32 %112)
  store i32 %113, i32* %23, align 4
  %114 = load i64, i64* %13, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 %114, %116
  %118 = sub i64 %117, 1
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %22, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @QUIRK_LITTLE_ENDIAN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %95
  %125 = load i32, i32* %22, align 4
  %126 = call i32 @get_le_offset(i32 %125)
  store i32 %126, i32* %22, align 4
  br label %127

127:                                              ; preds = %124, %95
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @QUIRK_LSW32_IS_FIRST, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* %22, align 4
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @get_reverse_lsw32_offset(i32 %133, i64 %134)
  store i32 %135, i32* %22, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @UNPACK, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %171

140:                                              ; preds = %136
  %141 = load i8*, i8** %9, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %23, align 4
  %148 = and i32 %146, %147
  store i32 %148, i32* %27, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @QUIRK_MSB_ON_THE_RIGHT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %140
  %154 = call i32 @adjust_for_msb_right_quirk(i32* %27, i32* %20, i32* %21, i32* %23)
  br label %155

155:                                              ; preds = %153, %140
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %27, align 4
  %158 = ashr i32 %157, %156
  store i32 %158, i32* %27, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %27, align 4
  %161 = shl i32 %160, %159
  store i32 %161, i32* %27, align 4
  %162 = load i32, i32* %26, align 4
  %163 = xor i32 %162, -1
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %163
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* %27, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 4
  br label %206

171:                                              ; preds = %136
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %26, align 4
  %175 = and i32 %173, %174
  store i32 %175, i32* %28, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %28, align 4
  %178 = ashr i32 %177, %176
  store i32 %178, i32* %28, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @QUIRK_MSB_ON_THE_RIGHT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = call i32 @adjust_for_msb_right_quirk(i32* %28, i32* %20, i32* %21, i32* %23)
  br label %185

185:                                              ; preds = %183, %171
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %28, align 4
  %188 = shl i32 %187, %186
  store i32 %188, i32* %28, align 4
  %189 = load i32, i32* %23, align 4
  %190 = xor i32 %189, -1
  %191 = load i8*, i8** %9, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %190
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %28, align 4
  %199 = load i8*, i8** %9, align 8
  %200 = bitcast i8* %199 to i32*
  %201 = load i32, i32* %22, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %198
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %185, %155
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %19, align 4
  br label %75

210:                                              ; preds = %75
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %210, %60, %42, %32
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @get_le_offset(i32) #1

declare dso_local i32 @get_reverse_lsw32_offset(i32, i64) #1

declare dso_local i32 @adjust_for_msb_right_quirk(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

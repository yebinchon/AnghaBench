; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_print_binary.c_binary__fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_print_binary.c_binary__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINARY_PRINT_DATA_BEGIN = common dso_local global i32 0, align 4
@BINARY_PRINT_LINE_BEGIN = common dso_local global i32 0, align 4
@BINARY_PRINT_ADDR = common dso_local global i32 0, align 4
@BINARY_PRINT_NUM_DATA = common dso_local global i32 0, align 4
@BINARY_PRINT_NUM_PAD = common dso_local global i32 0, align 4
@BINARY_PRINT_SEP = common dso_local global i32 0, align 4
@BINARY_PRINT_CHAR_DATA = common dso_local global i32 0, align 4
@BINARY_PRINT_CHAR_PAD = common dso_local global i32 0, align 4
@BINARY_PRINT_LINE_END = common dso_local global i32 0, align 4
@BINARY_PRINT_DATA_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binary__fprintf(i8* %0, i64 %1, i64 %2, i64 (i32, i32, i8*, i32*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64 (i32, i32, i8*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 (i32, i32, i8*, i32*)* %3, i64 (i32, i32, i8*, i32*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %19 = icmp ne i64 (i32, i32, i8*, i32*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %195

21:                                               ; preds = %6
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @roundup_pow_of_two(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = sub i64 %24, 1
  store i64 %25, i64* %16, align 8
  %26 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %27 = load i32, i32* @BINARY_PRINT_DATA_BEGIN, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i64 %26(i32 %27, i32 0, i8* %28, i32* %29)
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %17, align 4
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %181, %21
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %184

39:                                               ; preds = %35
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %16, align 8
  %42 = and i64 %40, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %46 = load i32, i32* @BINARY_PRINT_LINE_BEGIN, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i64 %45(i32 %46, i32 -1, i8* %47, i32* %48)
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %17, align 4
  %54 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %55 = load i32, i32* @BINARY_PRINT_ADDR, align 4
  %56 = load i64, i64* %14, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 %54(i32 %55, i32 %57, i8* %58, i32* %59)
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %44, %39
  %66 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %67 = load i32, i32* @BINARY_PRINT_NUM_DATA, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8*, i8** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i64 %66(i32 %67, i32 %72, i8* %73, i32* %74)
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %17, align 4
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %16, align 8
  %82 = and i64 %80, %81
  %83 = load i64, i64* %16, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %65
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %87, 1
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %180

90:                                               ; preds = %85, %65
  store i64 0, i64* %15, align 8
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %16, align 8
  %96 = and i64 %94, %95
  %97 = sub i64 %93, %96
  %98 = icmp ult i64 %92, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %91
  %100 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %101 = load i32, i32* @BINARY_PRINT_NUM_PAD, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i64 %100(i32 %101, i32 -1, i8* %102, i32* %103)
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i64, i64* %15, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %15, align 8
  br label %91

112:                                              ; preds = %91
  %113 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %114 = load i32, i32* @BINARY_PRINT_SEP, align 4
  %115 = load i64, i64* %14, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i8*, i8** %12, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i64 %113(i32 %114, i32 %116, i8* %117, i32* %118)
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %16, align 8
  %122 = xor i64 %121, -1
  %123 = and i64 %120, %122
  store i64 %123, i64* %15, align 8
  br label %124

124:                                              ; preds = %143, %112
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %14, align 8
  %127 = icmp ule i64 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %130 = load i32, i32* @BINARY_PRINT_CHAR_DATA, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8*, i8** %12, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i64 %129(i32 %130, i32 %135, i8* %136, i32* %137)
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %17, align 4
  br label %143

143:                                              ; preds = %128
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %15, align 8
  br label %124

146:                                              ; preds = %124
  store i64 0, i64* %15, align 8
  br label %147

147:                                              ; preds = %167, %146
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* %16, align 8
  %152 = and i64 %150, %151
  %153 = sub i64 %149, %152
  %154 = icmp ult i64 %148, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %147
  %156 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %157 = load i32, i32* @BINARY_PRINT_CHAR_PAD, align 4
  %158 = load i64, i64* %14, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i8*, i8** %12, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = call i64 %156(i32 %157, i32 %159, i8* %160, i32* %161)
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %155
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %15, align 8
  br label %147

170:                                              ; preds = %147
  %171 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %172 = load i32, i32* @BINARY_PRINT_LINE_END, align 4
  %173 = load i8*, i8** %12, align 8
  %174 = load i32*, i32** %13, align 8
  %175 = call i64 %171(i32 %172, i32 -1, i8* %173, i32* %174)
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %17, align 4
  br label %180

180:                                              ; preds = %170, %85
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %14, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %14, align 8
  br label %35

184:                                              ; preds = %35
  %185 = load i64 (i32, i32, i8*, i32*)*, i64 (i32, i32, i8*, i32*)** %11, align 8
  %186 = load i32, i32* @BINARY_PRINT_DATA_END, align 4
  %187 = load i8*, i8** %12, align 8
  %188 = load i32*, i32** %13, align 8
  %189 = call i64 %185(i32 %186, i32 -1, i8* %187, i32* %188)
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %184, %20
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i64 @roundup_pow_of_two(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

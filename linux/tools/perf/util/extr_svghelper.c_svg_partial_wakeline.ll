; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_partial_wakeline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_partial_wakeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"<title>%s wakes up %s</title>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"<desc>%s</desc>\0A\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"<line x1=\22%.8f\22 y1=\22%.2f\22 x2=\22%.8f\22 y2=\22%.2f\22 style=\22stroke:rgb(32,255,32);stroke-width:0.009\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [104 x i8] c"<g transform=\22translate(%.8f,%.8f)\22><text transform=\22rotate(90)\22 font-size=\220.02pt\22>%s &gt;</text></g>\0A\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"<g transform=\22translate(%.8f,%.8f)\22><text transform=\22rotate(90)\22 font-size=\220.02pt\22>%s &lt;</text></g>\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"<circle  cx=\22%.8f\22 cy=\22%.2f\22 r = \220.01\22  style=\22fill:rgb(32,255,32)\22/>\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_partial_wakeline(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* @svgfile, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  br label %230

17:                                               ; preds = %6
  %18 = load i32, i32* @svgfile, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @svgfile, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %25 ]
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** %11, align 8
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %32 ]
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %34)
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @svgfile, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %125

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %46
  %50 = load i32, i32* @svgfile, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call double @time2pixels(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SLOT_MULT, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sitofp i32 %55 to double
  %57 = load double, double* @SLOT_HEIGHT, align 8
  %58 = fadd double %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = call double @time2pixels(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SLOT_MULT, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sitofp i32 %63 to double
  %65 = load double, double* @SLOT_HEIGHT, align 8
  %66 = fadd double %64, %65
  %67 = load i32, i32* @SLOT_MULT, align 4
  %68 = sdiv i32 %67, 32
  %69 = sitofp i32 %68 to double
  %70 = fadd double %66, %69
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), double %52, double %58, double %60, double %70)
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %49
  %75 = load i32, i32* @svgfile, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call double @time2pixels(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SLOT_MULT, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sitofp i32 %80 to double
  %82 = load double, double* @SLOT_HEIGHT, align 8
  %83 = fadd double %81, %82
  %84 = load double, double* @SLOT_HEIGHT, align 8
  %85 = fdiv double %84, 4.800000e+01
  %86 = fadd double %83, %85
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), double %77, double %86, i8* %87)
  br label %89

89:                                               ; preds = %74, %49
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load i32, i32* @svgfile, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call double @time2pixels(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @SLOT_MULT, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* @SLOT_MULT, align 4
  %101 = sdiv i32 %100, 32
  %102 = sub nsw i32 %99, %101
  %103 = load i32, i32* %7, align 4
  %104 = call double @time2pixels(i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @SLOT_MULT, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), double %96, i32 %102, double %104, i32 %107)
  %109 = load i8*, i8** %9, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %93
  %112 = load i32, i32* @svgfile, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call double @time2pixels(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @SLOT_MULT, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* @SLOT_MULT, align 4
  %119 = sdiv i32 %118, 32
  %120 = sub nsw i32 %117, %119
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), double %114, i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %111, %93
  br label %124

124:                                              ; preds = %123, %90
  br label %206

125:                                              ; preds = %42
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %170

128:                                              ; preds = %125
  %129 = load i32, i32* @svgfile, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call double @time2pixels(i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @SLOT_MULT, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sitofp i32 %134 to double
  %136 = load double, double* @SLOT_HEIGHT, align 8
  %137 = fadd double %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = call double @time2pixels(i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @SLOT_MULT, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sitofp i32 %142 to double
  %144 = load double, double* @SLOT_HEIGHT, align 8
  %145 = fadd double %143, %144
  %146 = load i32, i32* @SLOT_MULT, align 4
  %147 = sdiv i32 %146, 32
  %148 = sitofp i32 %147 to double
  %149 = fadd double %145, %148
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), double %131, double %137, double %139, double %149)
  %151 = load i8*, i8** %9, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %128
  %154 = load i32, i32* @svgfile, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call double @time2pixels(i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @SLOT_MULT, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sitofp i32 %159 to double
  %161 = load double, double* @SLOT_HEIGHT, align 8
  %162 = fadd double %160, %161
  %163 = load i32, i32* @SLOT_MULT, align 4
  %164 = sdiv i32 %163, 48
  %165 = sitofp i32 %164 to double
  %166 = fadd double %162, %165
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), double %156, double %166, i8* %167)
  br label %169

169:                                              ; preds = %153, %128
  br label %170

170:                                              ; preds = %169, %125
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %205

173:                                              ; preds = %170
  %174 = load i32, i32* @svgfile, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call double @time2pixels(i32 %175)
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @SLOT_MULT, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load i32, i32* @SLOT_MULT, align 4
  %181 = sdiv i32 %180, 32
  %182 = sub nsw i32 %179, %181
  %183 = load i32, i32* %7, align 4
  %184 = call double @time2pixels(i32 %183)
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @SLOT_MULT, align 4
  %187 = mul nsw i32 %185, %186
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), double %176, i32 %182, double %184, i32 %187)
  %189 = load i8*, i8** %11, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %204

191:                                              ; preds = %173
  %192 = load i32, i32* @svgfile, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call double @time2pixels(i32 %193)
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @SLOT_MULT, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sitofp i32 %197 to double
  %199 = load double, double* @SLOT_HEIGHT, align 8
  %200 = fdiv double %199, 3.200000e+01
  %201 = fsub double %198, %200
  %202 = load i8*, i8** %11, align 8
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), double %194, double %201, i8* %202)
  br label %204

204:                                              ; preds = %191, %173
  br label %205

205:                                              ; preds = %204, %170
  br label %206

206:                                              ; preds = %205, %124
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @SLOT_MULT, align 4
  %209 = mul nsw i32 %207, %208
  %210 = sitofp i32 %209 to double
  store double %210, double* %13, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %206
  %215 = load double, double* @SLOT_HEIGHT, align 8
  %216 = load double, double* %13, align 8
  %217 = fadd double %216, %215
  store double %217, double* %13, align 8
  br label %218

218:                                              ; preds = %214, %206
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load i32, i32* @svgfile, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call double @time2pixels(i32 %223)
  %225 = load double, double* %13, align 8
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), double %224, double %225)
  br label %227

227:                                              ; preds = %221, %218
  %228 = load i32, i32* @svgfile, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %230

230:                                              ; preds = %227, %16
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local double @time2pixels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

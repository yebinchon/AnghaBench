; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-hammer.c_hammer_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-hammer.c_hammer_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiohandle_data = type { i32* }

@__const.hammer_device.swirr = private unnamed_addr constant [5 x i8] c"-\\|/\00", align 1
@GPIOHANDLE_REQUEST_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"gpio-hammer\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Hammer lines [\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"] on %s, initial states: [\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[%c] \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%d: %d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"]\0D\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hammer_device(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpiohandle_data, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = bitcast [5 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.hammer_device.swirr, i32 0, i32 0), i64 5, i1 false)
  store i32 0, i32* %15, align 4
  %17 = getelementptr inbounds %struct.gpiohandle_data, %struct.gpiohandle_data* %9, i32 0, i32 0
  %18 = call i32 @memset(i32** %17, i32 0, i32 8)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GPIOHANDLE_REQUEST_OUTPUT, align 4
  %23 = call i32 @gpiotools_request_linehandle(i8* %19, i32* %20, i32 %21, i32 %22, %struct.gpiohandle_data* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %195

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @gpiotools_get_values(i32 %30, %struct.gpiohandle_data* %9)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %192

35:                                               ; preds = %29
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %58, %35
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* @stdout, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load i32, i32* @stdout, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %86, %61
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load i32, i32* @stdout, align 4
  %71 = getelementptr inbounds %struct.gpiohandle_data, %struct.gpiohandle_data* %9, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %69
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %65

89:                                               ; preds = %65
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %89, %188
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.gpiohandle_data, %struct.gpiohandle_data* %9, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.gpiohandle_data, %struct.gpiohandle_data* %9, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @gpiotools_set_values(i32 %116, %struct.gpiohandle_data* %9)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %192

121:                                              ; preds = %115
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @gpiotools_get_values(i32 %122, %struct.gpiohandle_data* %9)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %192

127:                                              ; preds = %121
  %128 = load i32, i32* @stdout, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %140, %127
  %142 = load i32, i32* @stdout, align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %170, %141
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %144
  %149 = load i32, i32* @stdout, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.gpiohandle_data, %struct.gpiohandle_data* %9, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %154, i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %7, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp ne i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %148
  %167 = load i32, i32* @stdout, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %148
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %144

173:                                              ; preds = %144
  %174 = load i32, i32* @stdout, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %176 = load i32, i32* @stdout, align 4
  %177 = call i32 @fflush(i32 %176)
  %178 = call i32 @sleep(i32 1)
  %179 = load i32, i32* %15, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %173
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %189

188:                                              ; preds = %183, %173
  br label %92

189:                                              ; preds = %187
  %190 = load i32, i32* @stdout, align 4
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %192

192:                                              ; preds = %189, %126, %120, %34
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @gpiotools_release_linehandle(i32 %193)
  br label %195

195:                                              ; preds = %192, %26
  %196 = load i32, i32* %12, align 4
  ret i32 %196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @gpiotools_request_linehandle(i8*, i32*, i32, i32, %struct.gpiohandle_data*, i8*) #2

declare dso_local i32 @gpiotools_get_values(i32, %struct.gpiohandle_data*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @gpiotools_set_values(i32, %struct.gpiohandle_data*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @gpiotools_release_linehandle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

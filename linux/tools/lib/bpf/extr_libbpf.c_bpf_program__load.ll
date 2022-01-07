; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)*, i64, i32, i32, %struct.TYPE_2__ }
%struct.bpf_prog_prep_result = type opaque
%struct.TYPE_2__ = type { i32, i32* }
%struct.bpf_prog_prep_result.0 = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Internal error: can't load program '%s'\0A\00", align 1
@LIBBPF_ERRNO__INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Not enough memory for BPF fds\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Program '%s' is inconsistent: nr(%d) != 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Preprocessing the %dth instance of program '%s' failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Skip loading the %dth instance of program '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Loading the %dth instance of program '%s' failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to load program '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_program__load(%struct.bpf_program* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_prog_prep_result.0, align 8
  %12 = alloca i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result.0*)*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %20 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %59, label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %26 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %25, i32 0, i32 0
  %27 = load i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)*, i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)** %26, align 8
  %28 = icmp ne i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @LIBBPF_ERRNO__INTERNAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %213

36:                                               ; preds = %24
  %37 = call i32* @malloc(i32 4)
  %38 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %39 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32* %37, i32** %40, align 8
  %41 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %42 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %213

50:                                               ; preds = %36
  %51 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %52 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %55 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %18
  %60 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %61 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %60, i32 0, i32 0
  %62 = load i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)*, i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)** %61, align 8
  %63 = icmp ne i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)* %62, null
  br i1 %63, label %100, label %64

64:                                               ; preds = %59
  %65 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %66 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %72 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %75 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %70, %64
  %80 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %81 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %82 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %85 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @load_program(%struct.bpf_program* %80, i32 %83, i64 %86, i8* %87, i32 %88, i32* %9)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %95 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %79
  br label %198

100:                                              ; preds = %59
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %194, %100
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %104 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %197

108:                                              ; preds = %101
  %109 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %110 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %109, i32 0, i32 0
  %111 = load i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)*, i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)** %110, align 8
  %112 = bitcast i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result*)* %111 to i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result.0*)*
  store i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result.0*)* %112, i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result.0*)** %12, align 8
  %113 = call i32 @memset(%struct.bpf_prog_prep_result.0* %11, i32 0, i32 24)
  %114 = load i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result.0*)*, i32 (%struct.bpf_program*, i32, i32, i64, %struct.bpf_prog_prep_result.0*)** %12, align 8
  %115 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %118 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %121 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 %114(%struct.bpf_program* %115, i32 %116, i32 %119, i64 %122, %struct.bpf_prog_prep_result.0* %11)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %108
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %129 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %130)
  br label %198

132:                                              ; preds = %108
  %133 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %143 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %144)
  %146 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %147 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 -1, i32* %152, align 4
  %153 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %140
  %157 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  store i32 -1, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %140
  br label %194

160:                                              ; preds = %136
  %161 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %162 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @load_program(%struct.bpf_program* %161, i32 %163, i64 %165, i8* %166, i32 %167, i32* %9)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %160
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %174 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %172, i32 %175)
  br label %198

177:                                              ; preds = %160
  %178 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32, i32* %9, align 4
  %183 = getelementptr inbounds %struct.bpf_prog_prep_result.0, %struct.bpf_prog_prep_result.0* %11, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %181, %177
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %188 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %186, i32* %193, align 4
  br label %194

194:                                              ; preds = %185, %159
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %101

197:                                              ; preds = %101
  br label %198

198:                                              ; preds = %197, %171, %126, %99
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %203 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %201, %198
  %207 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %208 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %207, i32 0, i32 2
  %209 = call i32 @zfree(i32* %208)
  %210 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %211 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %206, %46, %29
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @load_program(%struct.bpf_program*, i32, i64, i8*, i32, i32*) #1

declare dso_local i32 @memset(%struct.bpf_prog_prep_result.0*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @zfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

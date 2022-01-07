; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@__const.trace__record.sc_args = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)], align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"major-faults\00", align 1
@__const.trace__record.majpf_args = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [13 x i8] c"minor-faults\00", align 1
@__const.trace__record.minpf_args = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)], align 16
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"raw_syscalls:sys_enter\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"raw_syscalls:sys_enter,raw_syscalls:sys_exit\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"syscalls:sys_enter\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"syscalls:sys_enter,syscalls:sys_exit\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Neither raw_syscalls nor syscalls events exist.\0A\00", align 1
@TRACE_PFMAJ = common dso_local global i32 0, align 4
@TRACE_PFMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, i32, i8**)* @trace__record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__record(%struct.trace* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca [6 x i8*], align 16
  %13 = alloca [1 x i8*], align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i8*], align 16
  %16 = alloca i32, align 4
  %17 = alloca [2 x i8*], align 16
  %18 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %19 = bitcast [6 x i8*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = bitcast i8* %19 to [6 x i8*]*
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 16
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %26, align 8
  %27 = bitcast [1 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast ([1 x i8*]* @__const.trace__record.sc_args to i8*), i64 8, i1 false)
  %28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %13, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i8** %28)
  store i32 %29, i32* %14, align 4
  %30 = bitcast [2 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([2 x i8*]* @__const.trace__record.majpf_args to i8*), i64 16, i1 false)
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(i8** %31)
  store i32 %32, i32* %16, align 4
  %33 = bitcast [2 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([2 x i8*]* @__const.trace__record.minpf_args to i8*), i64 16, i1 false)
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 0
  %35 = call i32 @ARRAY_SIZE(i8** %34)
  store i32 %35, i32* %18, align 4
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(i8** %36)
  %38 = load i32, i32* %14, align 4
  %39 = add i32 %37, %38
  %40 = add i32 %39, 1
  %41 = load i32, i32* %16, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %18, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  %49 = call i8** @calloc(i32 %48, i32 8)
  store i8** %49, i8*** %11, align 8
  %50 = load i8**, i8*** %11, align 8
  %51 = icmp eq i8** %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %196

55:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %59 = call i32 @ARRAY_SIZE(i8** %58)
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  store i8* %65, i8** %70, align 8
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.trace*, %struct.trace** %5, align 8
  %76 = getelementptr inbounds %struct.trace, %struct.trace* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %94, %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [1 x i8*], [1 x i8*]* %13, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %11, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  store i8* %88, i8** %93, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %80

97:                                               ; preds = %80
  %98 = call i64 @is_valid_tracepoint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i8**, i8*** %11, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8** %105, align 8
  br label %120

106:                                              ; preds = %97
  %107 = call i64 @is_valid_tracepoint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i8**, i8*** %11, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8** %114, align 8
  br label %119

115:                                              ; preds = %106
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  %117 = load i8**, i8*** %11, align 8
  %118 = call i32 @free(i8** %117)
  store i32 -1, i32* %4, align 4
  br label %196

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %100
  br label %121

121:                                              ; preds = %120, %74
  %122 = load %struct.trace*, %struct.trace** %5, align 8
  %123 = getelementptr inbounds %struct.trace, %struct.trace* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TRACE_PFMAJ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %121
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %143, %128
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %11, align 8
  %139 = load i32, i32* %10, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %10, align 4
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds i8*, i8** %138, i64 %141
  store i8* %137, i8** %142, align 8
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %129

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146, %121
  %148 = load %struct.trace*, %struct.trace** %5, align 8
  %149 = getelementptr inbounds %struct.trace, %struct.trace* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TRACE_PFMIN, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %147
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %169, %154
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %18, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load i8**, i8*** %11, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %10, align 4
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds i8*, i8** %164, i64 %167
  store i8* %163, i8** %168, align 8
  br label %169

169:                                              ; preds = %159
  %170 = load i32, i32* %9, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %155

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %172, %147
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %189, %173
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %174
  %179 = load i8**, i8*** %7, align 8
  %180 = load i32, i32* %9, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i8**, i8*** %11, align 8
  %185 = load i32, i32* %10, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %10, align 4
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i8*, i8** %184, i64 %187
  store i8* %183, i8** %188, align 8
  br label %189

189:                                              ; preds = %178
  %190 = load i32, i32* %9, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %174

192:                                              ; preds = %174
  %193 = load i32, i32* %10, align 4
  %194 = load i8**, i8*** %11, align 8
  %195 = call i32 @cmd_record(i32 %193, i8** %194)
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %115, %52
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i64 @is_valid_tracepoint(i8*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i32 @cmd_record(i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

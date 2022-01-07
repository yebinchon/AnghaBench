; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_main.c_do_batch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_main.c_do_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BATCH_LINE_LEN_MAX = common dso_local global i32 0, align 4
@BATCH_ARG_NB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"too few parameters for batch\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"expected 'file', got: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"too many parameters for batch\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Can't open file (%s): %s\00", align 1
@errno = common dso_local global i64 0, align 8
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"missing continuation line on command %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"command %d is too long\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@cmds = common dso_local global i32 0, align 4
@do_help = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"reading batch file failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"processed %d commands\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_batch(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @BATCH_LINE_LEN_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @BATCH_LINE_LEN_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @BATCH_ARG_NB_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %221

31:                                               ; preds = %2
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @is_prefix(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %221

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %221

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = call i32 (...) @NEXT_ARG()
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** @stdin, align 8
  store i32* %54, i32** %12, align 8
  br label %59

55:                                               ; preds = %47
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32* @fopen(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %58, i32** %12, align 8
  br label %59

59:                                               ; preds = %55, %53
  %60 = load i32*, i32** %12, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* @errno, align 8
  %66 = call i32 @strerror(i64 %65)
  %67 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %64, i32 %66)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %221

68:                                               ; preds = %59
  %69 = load i64, i64* @json_output, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @json_wtr, align 4
  %73 = call i32 @jsonw_start_array(i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %184, %136, %74
  %76 = trunc i64 %18 to i32
  %77 = load i32*, i32** %12, align 8
  %78 = call i64 @fgets(i8* %20, i32 %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %187

80:                                               ; preds = %75
  %81 = call i8* @strchr(i8* %20, i8 signext 35)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i8*, i8** %13, align 8
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %84, %80
  %87 = call i32 @strlen(i8* %20)
  %88 = sext i32 %87 to i64
  %89 = sub i64 %18, 1
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @E2BIG, align 8
  store i64 %92, i64* @errno, align 8
  br label %187

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %124, %93
  %95 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %95, i8** %13, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %130

97:                                               ; preds = %94
  %98 = trunc i64 %22 to i32
  %99 = load i32*, i32** %12, align 8
  %100 = call i64 @fgets(i8* %23, i32 %98, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = call i32 @strlen(i8* %23)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %97
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  store i32 -1, i32* %14, align 4
  br label %206

108:                                              ; preds = %102
  %109 = call i8* @strchr(i8* %23, i8 signext 35)
  store i8* %109, i8** %13, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i8*, i8** %13, align 8
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %112, %108
  %115 = call i32 @strlen(i8* %20)
  %116 = call i32 @strlen(i8* %23)
  %117 = add nsw i32 %115, %116
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = icmp ugt i64 %119, %18
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  %123 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %14, align 4
  br label %206

124:                                              ; preds = %114
  %125 = call i32 @strlen(i8* %20)
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %20, i64 %127
  store i8 0, i8* %128, align 1
  %129 = call i32 @strcat(i8* %20, i8* %23)
  br label %94

130:                                              ; preds = %94
  %131 = load i32, i32* @BATCH_ARG_NB_MAX, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @make_args(i8* %20, i8** %26, i32 %131, i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  br label %75

137:                                              ; preds = %130
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %206

141:                                              ; preds = %137
  %142 = load i64, i64* @json_output, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %141
  %145 = load i32, i32* @json_wtr, align 4
  %146 = call i32 @jsonw_start_object(i32 %145)
  %147 = load i32, i32* @json_wtr, align 4
  %148 = call i32 @jsonw_name(i32 %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %149 = load i32, i32* @json_wtr, align 4
  %150 = call i32 @jsonw_start_array(i32 %149)
  store i32 0, i32* %15, align 4
  br label %151

151:                                              ; preds = %162, %144
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load i32, i32* @json_wtr, align 4
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %26, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @jsonw_string(i32 %156, i8* %160)
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %151

165:                                              ; preds = %151
  %166 = load i32, i32* @json_wtr, align 4
  %167 = call i32 @jsonw_end_array(i32 %166)
  %168 = load i32, i32* @json_wtr, align 4
  %169 = call i32 @jsonw_name(i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %141
  %171 = load i32, i32* @cmds, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @do_help, align 4
  %174 = call i32 @cmd_select(i32 %171, i32 %172, i8** %26, i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i64, i64* @json_output, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* @json_wtr, align 4
  %179 = call i32 @jsonw_end_object(i32 %178)
  br label %180

180:                                              ; preds = %177, %170
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %206

184:                                              ; preds = %180
  %185 = load i32, i32* %10, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %75

187:                                              ; preds = %91, %75
  %188 = load i64, i64* @errno, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  %191 = load i64, i64* @errno, align 8
  %192 = load i64, i64* @ENOENT, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i64, i64* @errno, align 8
  %196 = call i32 @strerror(i64 %195)
  %197 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %196)
  store i32 -1, i32* %14, align 4
  br label %205

198:                                              ; preds = %190, %187
  %199 = load i64, i64* @json_output, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %201, %198
  store i32 0, i32* %14, align 4
  br label %205

205:                                              ; preds = %204, %194
  br label %206

206:                                              ; preds = %205, %183, %140, %121, %105
  %207 = load i32*, i32** %12, align 8
  %208 = load i32*, i32** @stdin, align 8
  %209 = icmp ne i32* %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i32*, i32** %12, align 8
  %212 = call i32 @fclose(i32* %211)
  br label %213

213:                                              ; preds = %210, %206
  %214 = load i64, i64* @json_output, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* @json_wtr, align 4
  %218 = call i32 @jsonw_end_array(i32 %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %14, align 4
  store i32 %220, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %221

221:                                              ; preds = %219, %62, %43, %36, %29
  %222 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @p_err(i8*, ...) #2

declare dso_local i32 @is_prefix(i8*, i8*) #2

declare dso_local i32 @NEXT_ARG(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @jsonw_start_array(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @make_args(i8*, i8**, i32, i32) #2

declare dso_local i32 @jsonw_start_object(i32) #2

declare dso_local i32 @jsonw_name(i32, i8*) #2

declare dso_local i32 @jsonw_string(i32, i8*) #2

declare dso_local i32 @jsonw_end_array(i32) #2

declare dso_local i32 @cmd_select(i32, i32, i8**, i32) #2

declare dso_local i32 @jsonw_end_object(i32) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

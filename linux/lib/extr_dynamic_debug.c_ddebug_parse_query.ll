; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_parse_query.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_parse_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddebug_query = type { i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"expecting pairs of match-spec <value>\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@UNESCAPE_SPACE = common dso_local global i32 0, align 4
@UNESCAPE_OCTAL = common dso_local global i32 0, align 4
@UNESCAPE_SPECIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"match-spec: line used 2x\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"last-line:%d < 1st-line:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"unknown keyword \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"parsed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, %struct.ddebug_query*, i8*)* @ddebug_parse_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddebug_parse_query(i8** %0, i32 %1, %struct.ddebug_query* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ddebug_query*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ddebug_query* %2, %struct.ddebug_query** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = srem i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %236

21:                                               ; preds = %4
  %22 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %23 = call i32 @memset(%struct.ddebug_query* %22, i32 0, i32 40)
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %29 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %21
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %230, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %233

35:                                               ; preds = %31
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %35
  %44 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %45 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %44, i32 0, i32 1
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @check_set(i8** %45, i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %11, align 4
  br label %224

53:                                               ; preds = %35
  %54 = load i8**, i8*** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %63 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %62, i32 0, i32 2
  %64 = load i8**, i8*** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @check_set(i8** %63, i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* %11, align 4
  br label %223

71:                                               ; preds = %53
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %71
  %80 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %81 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %80, i32 0, i32 0
  %82 = load i8**, i8*** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @check_set(i8** %81, i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %88, i32* %11, align 4
  br label %222

89:                                               ; preds = %71
  %90 = load i8**, i8*** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %119, label %97

97:                                               ; preds = %89
  %98 = load i8**, i8*** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @UNESCAPE_SPACE, align 4
  %105 = load i32, i32* @UNESCAPE_OCTAL, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @UNESCAPE_SPECIAL, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @string_unescape_inplace(i8* %103, i32 %108)
  %110 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %111 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %110, i32 0, i32 3
  %112 = load i8**, i8*** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @check_set(i8** %111, i8* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %118, i32* %11, align 4
  br label %221

119:                                              ; preds = %89
  %120 = load i8**, i8*** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %211, label %127

127:                                              ; preds = %119
  %128 = load i8**, i8*** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %12, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = call i8* @strchr(i8* %134, i8 signext 45)
  store i8* %135, i8** %13, align 8
  %136 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %137 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %127
  %141 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %142 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140, %127
  %146 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %236

149:                                              ; preds = %140
  %150 = load i8*, i8** %13, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** %13, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %13, align 8
  store i8 0, i8* %153, align 1
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i8*, i8** %12, align 8
  %157 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %158 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %157, i32 0, i32 4
  %159 = call i64 @parse_lineno(i8* %156, i32* %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %236

164:                                              ; preds = %155
  %165 = load i8*, i8** %13, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %204

167:                                              ; preds = %164
  %168 = load i8*, i8** %13, align 8
  %169 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %170 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %169, i32 0, i32 5
  %171 = call i64 @parse_lineno(i8* %168, i32* %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %236

176:                                              ; preds = %167
  %177 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %178 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @UINT_MAX, align 4
  %183 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %184 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %181, %176
  %186 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %187 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %190 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %185
  %194 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %195 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %198 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %196, i32 %199)
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %5, align 4
  br label %236

203:                                              ; preds = %185
  br label %210

204:                                              ; preds = %164
  %205 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %206 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %209 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %204, %203
  br label %220

211:                                              ; preds = %119
  %212 = load i8**, i8*** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %5, align 4
  br label %236

220:                                              ; preds = %210
  br label %221

221:                                              ; preds = %220, %97
  br label %222

222:                                              ; preds = %221, %79
  br label %223

223:                                              ; preds = %222, %61
  br label %224

224:                                              ; preds = %223, %43
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32, i32* %11, align 4
  store i32 %228, i32* %5, align 4
  br label %236

229:                                              ; preds = %224
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %10, align 4
  %232 = add i32 %231, 2
  store i32 %232, i32* %10, align 4
  br label %31

233:                                              ; preds = %31
  %234 = load %struct.ddebug_query*, %struct.ddebug_query** %8, align 8
  %235 = call i32 @vpr_info_dq(%struct.ddebug_query* %234, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %233, %227, %211, %193, %173, %161, %145, %17
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memset(%struct.ddebug_query*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @check_set(i8**, i8*, i8*) #1

declare dso_local i32 @string_unescape_inplace(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @parse_lineno(i8*, i32*) #1

declare dso_local i32 @vpr_info_dq(%struct.ddebug_query*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

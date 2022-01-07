; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__set_arg_fmts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__set_arg_fmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.tep_format_field* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.tep_format_field = type { i32, i64, i64, i64, i64, %struct.tep_format_field* }

@.str = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@SCA_FILENAME = common dso_local global i32 0, align 4
@TEP_FIELD_IS_POINTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@SCA_PTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@SCA_PID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"umode_t\00", align 1
@SCA_MODE_T = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@SCA_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.syscall*)* @syscall__set_arg_fmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscall__set_arg_fmts(%struct.syscall* %0) #0 {
  %2 = alloca %struct.syscall*, align 8
  %3 = alloca %struct.tep_format_field*, align 8
  %4 = alloca %struct.tep_format_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.syscall* %0, %struct.syscall** %2, align 8
  store %struct.tep_format_field* null, %struct.tep_format_field** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.syscall*, %struct.syscall** %2, align 8
  %8 = getelementptr inbounds %struct.syscall, %struct.syscall* %7, i32 0, i32 3
  %9 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  store %struct.tep_format_field* %9, %struct.tep_format_field** %3, align 8
  br label %10

10:                                               ; preds = %167, %1
  %11 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %12 = icmp ne %struct.tep_format_field* %11, null
  br i1 %12, label %13, label %173

13:                                               ; preds = %10
  %14 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  store %struct.tep_format_field* %14, %struct.tep_format_field** %4, align 8
  %15 = load %struct.syscall*, %struct.syscall** %2, align 8
  %16 = getelementptr inbounds %struct.syscall, %struct.syscall* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.syscall*, %struct.syscall** %2, align 8
  %21 = getelementptr inbounds %struct.syscall, %struct.syscall* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %167

32:                                               ; preds = %19, %13
  %33 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %34 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strlen(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %38 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @strcmp(i64 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 4
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %47 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = sub nsw i64 %51, 4
  %53 = call i64 @strcmp(i64 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %45, %42
  %56 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %57 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32* @strstr(i64 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %55, %45
  %62 = load i32, i32* @SCA_FILENAME, align 4
  %63 = load %struct.syscall*, %struct.syscall** %2, align 8
  %64 = getelementptr inbounds %struct.syscall, %struct.syscall* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  br label %166

70:                                               ; preds = %55, %32
  %71 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %72 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TEP_FIELD_IS_POINTER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %79 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32* @strstr(i64 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %77, %70
  %84 = load i32, i32* @SCA_PTR, align 4
  %85 = load %struct.syscall*, %struct.syscall** %2, align 8
  %86 = getelementptr inbounds %struct.syscall, %struct.syscall* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %84, i32* %91, align 4
  br label %165

92:                                               ; preds = %77
  %93 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %94 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @strcmp(i64 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i32, i32* @SCA_PID, align 4
  %100 = load %struct.syscall*, %struct.syscall** %2, align 8
  %101 = getelementptr inbounds %struct.syscall, %struct.syscall* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 %99, i32* %106, align 4
  br label %164

107:                                              ; preds = %92
  %108 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %109 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @strcmp(i64 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32, i32* @SCA_MODE_T, align 4
  %115 = load %struct.syscall*, %struct.syscall** %2, align 8
  %116 = getelementptr inbounds %struct.syscall, %struct.syscall* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 4
  br label %163

122:                                              ; preds = %107
  %123 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %124 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @strcmp(i64 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %130 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @strcmp(i64 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %136 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @strcmp(i64 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %134, %128, %122
  %141 = load i32, i32* %6, align 4
  %142 = icmp sge i32 %141, 2
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %145 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = sub nsw i64 %149, 2
  %151 = call i64 @strcmp(i64 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %143
  %154 = load i32, i32* @SCA_FD, align 4
  %155 = load %struct.syscall*, %struct.syscall** %2, align 8
  %156 = getelementptr inbounds %struct.syscall, %struct.syscall* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i32 %154, i32* %161, align 4
  br label %162

162:                                              ; preds = %153, %143, %140, %134
  br label %163

163:                                              ; preds = %162, %113
  br label %164

164:                                              ; preds = %163, %98
  br label %165

165:                                              ; preds = %164, %83
  br label %166

166:                                              ; preds = %165, %61
  br label %167

167:                                              ; preds = %166, %31
  %168 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %169 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %168, i32 0, i32 5
  %170 = load %struct.tep_format_field*, %struct.tep_format_field** %169, align 8
  store %struct.tep_format_field* %170, %struct.tep_format_field** %3, align 8
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %10

173:                                              ; preds = %10
  %174 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %175 = icmp ne %struct.tep_format_field* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %178 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %181 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %179, %182
  %184 = load %struct.syscall*, %struct.syscall** %2, align 8
  %185 = getelementptr inbounds %struct.syscall, %struct.syscall* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %176, %173
  ret i32 0
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32* @strstr(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

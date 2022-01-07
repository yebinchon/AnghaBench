; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_help-unknown-cmd.c_help_unknown_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_help-unknown-cmd.c_help_unknown_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i8* }

@perf_unknown_cmd_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"perf-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"ERROR: Failed to allocate command list for unknown command.\0A\00", align 1
@cmdname_compare = common dso_local global i32 0, align 4
@levenshtein_compare = common dso_local global i32 0, align 4
@autocorrect = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [122 x i8] c"WARNING: You called a perf program named '%s', which does not exist.\0AContinuing under the assumption that you meant '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"in %0.1f seconds automatically...\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"perf: '%s' is not a perf-command. See 'perf --help'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0ADid you mean %s?\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"one of these\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @help_unknown_cmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdnames, align 8
  %7 = alloca %struct.cmdnames, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call i32 @memset(%struct.cmdnames* %6, i32 0, i32 16)
  %10 = call i32 @memset(%struct.cmdnames* %7, i32 0, i32 16)
  %11 = load i32, i32* @perf_unknown_cmd_config, align 4
  %12 = call i32 @perf_config(i32 %11, i32* null)
  %13 = call i32 @load_command_list(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.cmdnames* %6, %struct.cmdnames* %7)
  %14 = call i64 @add_cmd_list(%struct.cmdnames* %6, %struct.cmdnames* %7)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %164

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @cmdname_compare, align 4
  %25 = call i32 @qsort(%struct.TYPE_2__** %21, i32 %23, i32 8, i32 %24)
  %26 = call i32 @uniq(%struct.cmdnames* %6)
  %27 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %92

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %3, align 4
  %33 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @levenshtein(i8* %37, i8* %45, i32 0, i32 2, i32 1, i32 4)
  %47 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 8
  br label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %31

57:                                               ; preds = %31
  %58 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @levenshtein_compare, align 4
  %63 = call i32 @qsort(%struct.TYPE_2__** %59, i32 %61, i32 8, i32 %62)
  %64 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %88, %57
  %71 = load i32, i32* %4, align 4
  %72 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %76, %84
  br label %86

86:                                               ; preds = %75, %70
  %87 = phi i1 [ false, %70 ], [ %85, %75 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %70

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %19
  %93 = load i32, i32* @autocorrect, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %127

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %100 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %100, i64 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %8, align 8
  %105 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %106 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %106, i64 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %107, align 8
  %108 = call i32 @clean_cmdnames(%struct.cmdnames* %6)
  %109 = load i32, i32* @stderr, align 4
  %110 = load i8*, i8** %2, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %111)
  %113 = load i32, i32* @autocorrect, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %98
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* @autocorrect, align 4
  %118 = sitofp i32 %117 to float
  %119 = fpext float %118 to double
  %120 = fdiv double %119, 1.000000e+01
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), double %120)
  %122 = load i32, i32* @autocorrect, align 4
  %123 = mul nsw i32 %122, 100
  %124 = call i32 @poll(i32* null, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %115, %98
  %126 = load i8*, i8** %8, align 8
  ret i8* %126

127:                                              ; preds = %95, %92
  %128 = load i32, i32* @stderr, align 4
  %129 = load i8*, i8** %2, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %129)
  %131 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %127
  %135 = load i32, i32* %5, align 4
  %136 = icmp ult i32 %135, 6
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  %138 = load i32, i32* @stderr, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp ult i32 %139, 2
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %159, %137
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %144
  %149 = load i32, i32* @stderr, align 4
  %150 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %151 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %151, i64 %153
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %3, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %144

162:                                              ; preds = %144
  br label %163

163:                                              ; preds = %162, %134, %127
  br label %164

164:                                              ; preds = %163, %16
  %165 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @memset(%struct.cmdnames*, i32, i32) #1

declare dso_local i32 @perf_config(i32, i32*) #1

declare dso_local i32 @load_command_list(i8*, %struct.cmdnames*, %struct.cmdnames*) #1

declare dso_local i64 @add_cmd_list(%struct.cmdnames*, %struct.cmdnames*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @qsort(%struct.TYPE_2__**, i32, i32, i32) #1

declare dso_local i32 @uniq(%struct.cmdnames*) #1

declare dso_local i32 @levenshtein(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @clean_cmdnames(%struct.cmdnames*) #1

declare dso_local i32 @poll(i32*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

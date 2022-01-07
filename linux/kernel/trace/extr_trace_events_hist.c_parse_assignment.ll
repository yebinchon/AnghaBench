; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_assignment.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.hist_trigger_attrs = type { i32, i64, i8**, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"key=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"keys=\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"val=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vals=\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"values=\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"sort=\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"clock=\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"size=\00", align 1
@TRACING_MAP_VARS_MAX = common dso_local global i64 0, align 8
@HIST_ERR_TOO_MANY_VARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i8*, %struct.hist_trigger_attrs*)* @parse_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_assignment(%struct.trace_array* %0, i8* %1, %struct.hist_trigger_attrs* %2) #0 {
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hist_trigger_attrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hist_trigger_attrs* %2, %struct.hist_trigger_attrs** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @str_has_prefix(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @str_has_prefix(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13, %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kstrdup(i8* %18, i32 %19)
  %21 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %22 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %24 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %23, i32 0, i32 7
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %174

30:                                               ; preds = %17
  br label %173

31:                                               ; preds = %13
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @str_has_prefix(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @str_has_prefix(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @str_has_prefix(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39, %35, %31
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kstrdup(i8* %44, i32 %45)
  %47 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %48 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %50 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %174

56:                                               ; preds = %43
  br label %172

57:                                               ; preds = %39
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @str_has_prefix(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kstrdup(i8* %62, i32 %63)
  %65 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %66 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %68 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %174

74:                                               ; preds = %61
  br label %171

75:                                               ; preds = %57
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @str_has_prefix(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kstrdup(i8* %80, i32 %81)
  %83 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %84 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %86 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %174

92:                                               ; preds = %79
  br label %170

93:                                               ; preds = %75
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @str_has_prefix(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = call i32 @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i8*, i8** %5, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %174

104:                                              ; preds = %97
  %105 = load i8*, i8** %5, align 8
  %106 = call i8* @strstrip(i8* %105)
  store i8* %106, i8** %5, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @kstrdup(i8* %107, i32 %108)
  %110 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %111 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %113 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %104
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %174

119:                                              ; preds = %104
  br label %169

120:                                              ; preds = %93
  %121 = load i8*, i8** %5, align 8
  %122 = call i64 @str_has_prefix(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @parse_map_size(i8* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %7, align 4
  br label %174

131:                                              ; preds = %124
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %134 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %168

135:                                              ; preds = %120
  %136 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %137 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TRACING_MAP_VARS_MAX, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %143 = load i32, i32* @HIST_ERR_TOO_MANY_VARS, align 4
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @errpos(i8* %144)
  %146 = call i32 @hist_err(%struct.trace_array* %142, i32 %143, i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %174

149:                                              ; preds = %135
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call i8* @kstrdup(i8* %150, i32 %151)
  store i8* %152, i8** %9, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %7, align 4
  br label %174

158:                                              ; preds = %149
  %159 = load i8*, i8** %9, align 8
  %160 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %161 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %160, i32 0, i32 2
  %162 = load i8**, i8*** %161, align 8
  %163 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %164 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = getelementptr inbounds i8*, i8** %162, i64 %165
  store i8* %159, i8** %167, align 8
  br label %168

168:                                              ; preds = %158, %131
  br label %169

169:                                              ; preds = %168, %119
  br label %170

170:                                              ; preds = %169, %92
  br label %171

171:                                              ; preds = %170, %74
  br label %172

172:                                              ; preds = %171, %56
  br label %173

173:                                              ; preds = %172, %30
  br label %174

174:                                              ; preds = %173, %155, %141, %129, %116, %101, %89, %71, %53, %27
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local i64 @str_has_prefix(i8*, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @parse_map_size(i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

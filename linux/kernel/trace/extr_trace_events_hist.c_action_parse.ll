; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_action_parse.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_action_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.action_data = type { i32, i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@HIST_ERR_ACTION_NOT_FOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@HIST_ERR_NO_SAVE_PARAMS = common dso_local global i32 0, align 4
@HANDLER_ONMAX = common dso_local global i32 0, align 4
@check_track_val_max = common dso_local global i8* null, align 8
@HANDLER_ONCHANGE = common dso_local global i32 0, align 4
@check_track_val_changed = common dso_local global i8* null, align 8
@HIST_ERR_ACTION_MISMATCH = common dso_local global i32 0, align 4
@save_track_data_vars = common dso_local global i8* null, align 8
@ontrack_action = common dso_local global i8* null, align 8
@ACTION_SAVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@HIST_ERR_NO_CLOSING_PAREN = common dso_local global i32 0, align 4
@save_track_data_snapshot = common dso_local global i8* null, align 8
@ACTION_SNAPSHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@HANDLER_ONMATCH = common dso_local global i32 0, align 4
@action_trace = common dso_local global i8* null, align 8
@ACTION_TRACE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i8*, %struct.action_data*, i32)* @action_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_parse(%struct.trace_array* %0, i8* %1, %struct.action_data* %2, i32 %3) #0 {
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.action_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.action_data* %2, %struct.action_data** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %19 = load i32, i32* @HIST_ERR_ACTION_NOT_FOUND, align 4
  %20 = call i32 @hist_err(%struct.trace_array* %18, i32 %19, i32 0)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  br label %227

23:                                               ; preds = %4
  %24 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %32 = load i32, i32* @HIST_ERR_ACTION_NOT_FOUND, align 4
  %33 = call i32 @hist_err(%struct.trace_array* %31, i32 %32, i32 0)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %227

36:                                               ; preds = %27
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @str_has_prefix(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %36
  %41 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %46 = load i32, i32* @HIST_ERR_NO_SAVE_PARAMS, align 4
  %47 = call i32 @hist_err(%struct.trace_array* %45, i32 %46, i32 0)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %227

50:                                               ; preds = %40
  %51 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.action_data*, %struct.action_data** %7, align 8
  %54 = call i32 @parse_action_params(%struct.trace_array* %51, i8* %52, %struct.action_data* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %227

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @HANDLER_ONMAX, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i8*, i8** @check_track_val_max, align 8
  %64 = load %struct.action_data*, %struct.action_data** %7, align 8
  %65 = getelementptr inbounds %struct.action_data, %struct.action_data* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  br label %85

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @HANDLER_ONCHANGE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i8*, i8** @check_track_val_changed, align 8
  %73 = load %struct.action_data*, %struct.action_data** %7, align 8
  %74 = getelementptr inbounds %struct.action_data, %struct.action_data* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  br label %84

76:                                               ; preds = %67
  %77 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %78 = load i32, i32* @HIST_ERR_ACTION_MISMATCH, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @errpos(i8* %79)
  %81 = call i32 @hist_err(%struct.trace_array* %77, i32 %78, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %227

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %62
  %86 = load i8*, i8** @save_track_data_vars, align 8
  %87 = load %struct.action_data*, %struct.action_data** %7, align 8
  %88 = getelementptr inbounds %struct.action_data, %struct.action_data* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** @ontrack_action, align 8
  %91 = load %struct.action_data*, %struct.action_data** %7, align 8
  %92 = getelementptr inbounds %struct.action_data, %struct.action_data* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @ACTION_SAVE, align 4
  %94 = load %struct.action_data*, %struct.action_data** %7, align 8
  %95 = getelementptr inbounds %struct.action_data, %struct.action_data* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %210

96:                                               ; preds = %36
  %97 = load i8*, i8** %9, align 8
  %98 = call i64 @str_has_prefix(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %150

100:                                              ; preds = %96
  %101 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %106 = load i32, i32* @HIST_ERR_NO_CLOSING_PAREN, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @errpos(i8* %107)
  %109 = call i32 @hist_err(%struct.trace_array* %105, i32 %106, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %227

112:                                              ; preds = %100
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @HANDLER_ONMAX, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i8*, i8** @check_track_val_max, align 8
  %118 = load %struct.action_data*, %struct.action_data** %7, align 8
  %119 = getelementptr inbounds %struct.action_data, %struct.action_data* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  br label %139

121:                                              ; preds = %112
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @HANDLER_ONCHANGE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i8*, i8** @check_track_val_changed, align 8
  %127 = load %struct.action_data*, %struct.action_data** %7, align 8
  %128 = getelementptr inbounds %struct.action_data, %struct.action_data* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  br label %138

130:                                              ; preds = %121
  %131 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %132 = load i32, i32* @HIST_ERR_ACTION_MISMATCH, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @errpos(i8* %133)
  %135 = call i32 @hist_err(%struct.trace_array* %131, i32 %132, i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %227

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %116
  %140 = load i8*, i8** @save_track_data_snapshot, align 8
  %141 = load %struct.action_data*, %struct.action_data** %7, align 8
  %142 = getelementptr inbounds %struct.action_data, %struct.action_data* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i8* %140, i8** %143, align 8
  %144 = load i8*, i8** @ontrack_action, align 8
  %145 = load %struct.action_data*, %struct.action_data** %7, align 8
  %146 = getelementptr inbounds %struct.action_data, %struct.action_data* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* @ACTION_SNAPSHOT, align 4
  %148 = load %struct.action_data*, %struct.action_data** %7, align 8
  %149 = getelementptr inbounds %struct.action_data, %struct.action_data* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  br label %209

150:                                              ; preds = %96
  %151 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %151, i8** %13, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i64 @str_has_prefix(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.action_data*, %struct.action_data** %7, align 8
  %157 = getelementptr inbounds %struct.action_data, %struct.action_data* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i8*, i8** %13, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load %struct.action_data*, %struct.action_data** %7, align 8
  %165 = call i32 @parse_action_params(%struct.trace_array* %162, i8* %163, %struct.action_data* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %227

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169, %158
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @HANDLER_ONMAX, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i8*, i8** @check_track_val_max, align 8
  %176 = load %struct.action_data*, %struct.action_data** %7, align 8
  %177 = getelementptr inbounds %struct.action_data, %struct.action_data* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  store i8* %175, i8** %178, align 8
  br label %189

179:                                              ; preds = %170
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @HANDLER_ONCHANGE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i8*, i8** @check_track_val_changed, align 8
  %185 = load %struct.action_data*, %struct.action_data** %7, align 8
  %186 = getelementptr inbounds %struct.action_data, %struct.action_data* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  store i8* %184, i8** %187, align 8
  br label %188

188:                                              ; preds = %183, %179
  br label %189

189:                                              ; preds = %188, %174
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @HANDLER_ONMATCH, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %189
  %194 = load i8*, i8** @action_trace, align 8
  %195 = load %struct.action_data*, %struct.action_data** %7, align 8
  %196 = getelementptr inbounds %struct.action_data, %struct.action_data* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  store i8* %194, i8** %197, align 8
  %198 = load i8*, i8** @ontrack_action, align 8
  %199 = load %struct.action_data*, %struct.action_data** %7, align 8
  %200 = getelementptr inbounds %struct.action_data, %struct.action_data* %199, i32 0, i32 4
  store i8* %198, i8** %200, align 8
  br label %205

201:                                              ; preds = %189
  %202 = load i8*, i8** @action_trace, align 8
  %203 = load %struct.action_data*, %struct.action_data** %7, align 8
  %204 = getelementptr inbounds %struct.action_data, %struct.action_data* %203, i32 0, i32 4
  store i8* %202, i8** %204, align 8
  br label %205

205:                                              ; preds = %201, %193
  %206 = load i32, i32* @ACTION_TRACE, align 4
  %207 = load %struct.action_data*, %struct.action_data** %7, align 8
  %208 = getelementptr inbounds %struct.action_data, %struct.action_data* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %205, %139
  br label %210

210:                                              ; preds = %209, %85
  %211 = load i8*, i8** %9, align 8
  %212 = load i32, i32* @GFP_KERNEL, align 4
  %213 = call i32 @kstrdup(i8* %211, i32 %212)
  %214 = load %struct.action_data*, %struct.action_data** %7, align 8
  %215 = getelementptr inbounds %struct.action_data, %struct.action_data* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load %struct.action_data*, %struct.action_data** %7, align 8
  %217 = getelementptr inbounds %struct.action_data, %struct.action_data* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %210
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %10, align 4
  br label %227

223:                                              ; preds = %210
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.action_data*, %struct.action_data** %7, align 8
  %226 = getelementptr inbounds %struct.action_data, %struct.action_data* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %223, %220, %168, %130, %104, %76, %57, %44, %30, %17
  %228 = load i32, i32* %10, align 4
  ret i32 %228
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i64 @str_has_prefix(i8*, i8*) #1

declare dso_local i32 @parse_action_params(%struct.trace_array*, i8*, %struct.action_data*) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

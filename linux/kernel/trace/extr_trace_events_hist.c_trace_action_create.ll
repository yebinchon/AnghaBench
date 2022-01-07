; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_action_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_action_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.action_data = type { i8*, i8*, i32, i32, %struct.synth_event*, i32*, i64 }
%struct.synth_event = type { i32, i8*, i32 }
%struct.hist_field = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@HIST_ERR_SYNTH_EVENT_NOT_FOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@HIST_ERR_SYNTH_TYPE_MISMATCH = common dso_local global i32 0, align 4
@HIST_ERR_SYNTH_COUNT_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, %struct.action_data*)* @trace_action_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_action_create(%struct.hist_trigger_data* %0, %struct.action_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca %struct.action_data*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hist_field*, align 8
  %11 = alloca %struct.hist_field*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.synth_event*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %4, align 8
  store %struct.action_data* %1, %struct.action_data** %5, align 8
  %19 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %20 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.trace_array*, %struct.trace_array** %22, align 8
  store %struct.trace_array* %23, %struct.trace_array** %6, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %24 = call i32 @lockdep_assert_held(i32* @event_mutex)
  %25 = load %struct.action_data*, %struct.action_data** %5, align 8
  %26 = getelementptr inbounds %struct.action_data, %struct.action_data* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.action_data*, %struct.action_data** %5, align 8
  %31 = getelementptr inbounds %struct.action_data, %struct.action_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %16, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.action_data*, %struct.action_data** %5, align 8
  %35 = getelementptr inbounds %struct.action_data, %struct.action_data* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %16, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %16, align 8
  %39 = call %struct.synth_event* @find_synth_event(i8* %38)
  store %struct.synth_event* %39, %struct.synth_event** %15, align 8
  %40 = load %struct.synth_event*, %struct.synth_event** %15, align 8
  %41 = icmp ne %struct.synth_event* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %44 = load i32, i32* @HIST_ERR_SYNTH_EVENT_NOT_FOUND, align 4
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @errpos(i8* %45)
  %47 = call i32 @hist_err(%struct.trace_array* %43, i32 %44, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %190

50:                                               ; preds = %37
  %51 = load %struct.synth_event*, %struct.synth_event** %15, align 8
  %52 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %56 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %157, %50
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.action_data*, %struct.action_data** %5, align 8
  %61 = getelementptr inbounds %struct.action_data, %struct.action_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %160

64:                                               ; preds = %58
  %65 = load %struct.action_data*, %struct.action_data** %5, align 8
  %66 = getelementptr inbounds %struct.action_data, %struct.action_data* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kstrdup(i32 %71, i32 %72)
  store i8* %73, i8** %8, align 8
  store i8* %73, i8** %18, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %17, align 4
  br label %185

79:                                               ; preds = %64
  %80 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  store i8* %84, i8** %8, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %9, align 8
  br label %95

85:                                               ; preds = %79
  %86 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %17, align 4
  br label %185

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 36
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %103 = load %struct.action_data*, %struct.action_data** %5, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call %struct.hist_field* @trace_action_find_var(%struct.hist_trigger_data* %102, %struct.action_data* %103, i8* %104, i8* %105, i8* %106)
  store %struct.hist_field* %107, %struct.hist_field** %10, align 8
  br label %115

108:                                              ; preds = %95
  %109 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %110 = load %struct.action_data*, %struct.action_data** %5, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call %struct.hist_field* @trace_action_create_field_var(%struct.hist_trigger_data* %109, %struct.action_data* %110, i8* %111, i8* %112, i8* %113)
  store %struct.hist_field* %114, %struct.hist_field** %10, align 8
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %117 = icmp ne %struct.hist_field* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %18, align 8
  %120 = call i32 @kfree(i8* %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %17, align 4
  br label %185

123:                                              ; preds = %115
  %124 = load %struct.synth_event*, %struct.synth_event** %15, align 8
  %125 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i64 @check_synth_field(%struct.synth_event* %124, %struct.hist_field* %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %123
  %130 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %131 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = call %struct.hist_field* @create_var_ref(%struct.hist_trigger_data* %130, %struct.hist_field* %131, i8* %132, i8* %133)
  store %struct.hist_field* %134, %struct.hist_field** %11, align 8
  %135 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %136 = icmp ne %struct.hist_field* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %129
  %138 = load i8*, i8** %18, align 8
  %139 = call i32 @kfree(i8* %138)
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %17, align 4
  br label %185

142:                                              ; preds = %129
  %143 = load i32, i32* %14, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %14, align 4
  %145 = load i8*, i8** %18, align 8
  %146 = call i32 @kfree(i8* %145)
  br label %157

147:                                              ; preds = %123
  %148 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %149 = load i32, i32* @HIST_ERR_SYNTH_TYPE_MISMATCH, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @errpos(i8* %150)
  %152 = call i32 @hist_err(%struct.trace_array* %148, i32 %149, i32 %151)
  %153 = load i8*, i8** %18, align 8
  %154 = call i32 @kfree(i8* %153)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %17, align 4
  br label %185

157:                                              ; preds = %142
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %58

160:                                              ; preds = %58
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.synth_event*, %struct.synth_event** %15, align 8
  %163 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %168 = load i32, i32* @HIST_ERR_SYNTH_COUNT_MISMATCH, align 4
  %169 = load %struct.synth_event*, %struct.synth_event** %15, align 8
  %170 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @errpos(i8* %171)
  %173 = call i32 @hist_err(%struct.trace_array* %167, i32 %168, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %17, align 4
  br label %185

176:                                              ; preds = %160
  %177 = load %struct.synth_event*, %struct.synth_event** %15, align 8
  %178 = load %struct.action_data*, %struct.action_data** %5, align 8
  %179 = getelementptr inbounds %struct.action_data, %struct.action_data* %178, i32 0, i32 4
  store %struct.synth_event* %177, %struct.synth_event** %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.action_data*, %struct.action_data** %5, align 8
  %182 = getelementptr inbounds %struct.action_data, %struct.action_data* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %185, %176
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %3, align 4
  br label %190

185:                                              ; preds = %166, %147, %137, %118, %89, %76
  %186 = load %struct.synth_event*, %struct.synth_event** %15, align 8
  %187 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %187, align 8
  br label %183

190:                                              ; preds = %183, %42
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.synth_event* @find_synth_event(i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.hist_field* @trace_action_find_var(%struct.hist_trigger_data*, %struct.action_data*, i8*, i8*, i8*) #1

declare dso_local %struct.hist_field* @trace_action_create_field_var(%struct.hist_trigger_data*, %struct.action_data*, i8*, i8*, i8*) #1

declare dso_local i64 @check_synth_field(%struct.synth_event*, %struct.hist_field*, i32) #1

declare dso_local %struct.hist_field* @create_var_ref(%struct.hist_trigger_data*, %struct.hist_field*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

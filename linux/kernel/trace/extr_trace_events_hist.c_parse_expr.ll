; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_expr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i64, i32, i32, i32, i32, i32, %struct.hist_field** }
%struct.hist_trigger_data = type { i32 }
%struct.trace_event_file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HIST_ERR_TOO_MANY_SUBEXPR = common dso_local global i32 0, align 4
@FIELD_OP_NONE = common dso_local global i32 0, align 4
@FIELD_OP_UNARY_MINUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@HIST_FIELD_FL_EXPR = common dso_local global i64 0, align 8
@HIST_FIELD_FL_TIMESTAMP = common dso_local global i64 0, align 8
@HIST_FIELD_FL_TIMESTAMP_USECS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hist_field_minus = common dso_local global i32 0, align 4
@hist_field_plus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64, i8*, i32)* @parse_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @parse_expr(%struct.hist_trigger_data* %0, %struct.trace_event_file* %1, i8* %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca %struct.hist_trigger_data*, align 8
  %9 = alloca %struct.trace_event_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hist_field*, align 8
  %15 = alloca %struct.hist_field*, align 8
  %16 = alloca %struct.hist_field*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %8, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.hist_field* null, %struct.hist_field** %14, align 8
  store %struct.hist_field* null, %struct.hist_field** %15, align 8
  store %struct.hist_field* null, %struct.hist_field** %16, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %37

26:                                               ; preds = %6
  %27 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %28 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HIST_ERR_TOO_MANY_SUBEXPR, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @errpos(i8* %31)
  %33 = call i32 @hist_err(i32 %29, i32 %30, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.hist_field* @ERR_PTR(i32 %35)
  store %struct.hist_field* %36, %struct.hist_field** %7, align 8
  br label %193

37:                                               ; preds = %6
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @contains_operator(i8* %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @FIELD_OP_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %45 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call %struct.hist_field* @parse_atom(%struct.hist_trigger_data* %44, %struct.trace_event_file* %45, i8* %46, i64* %11, i8* %47)
  store %struct.hist_field* %48, %struct.hist_field** %7, align 8
  br label %193

49:                                               ; preds = %37
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* @FIELD_OP_UNARY_MINUS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %55 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = call %struct.hist_field* @parse_unary(%struct.hist_trigger_data* %54, %struct.trace_event_file* %55, i8* %56, i64 %57, i8* %58, i32 %60)
  store %struct.hist_field* %61, %struct.hist_field** %7, align 8
  br label %193

62:                                               ; preds = %49
  %63 = load i32, i32* %18, align 4
  switch i32 %63, label %66 [
    i32 129, label %64
    i32 128, label %65
  ]

64:                                               ; preds = %62
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %67

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %67

66:                                               ; preds = %62
  br label %184

67:                                               ; preds = %65, %64
  %68 = load i8*, i8** %20, align 8
  %69 = call i8* @strsep(i8** %10, i8* %68)
  store i8* %69, i8** %21, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72, %67
  br label %184

76:                                               ; preds = %72
  store i64 0, i64* %17, align 8
  %77 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %78 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = call %struct.hist_field* @parse_atom(%struct.hist_trigger_data* %77, %struct.trace_event_file* %78, i8* %79, i64* %17, i8* null)
  store %struct.hist_field* %80, %struct.hist_field** %14, align 8
  %81 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %82 = call i64 @IS_ERR(%struct.hist_field* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %86 = call i32 @PTR_ERR(%struct.hist_field* %85)
  store i32 %86, i32* %19, align 4
  store %struct.hist_field* null, %struct.hist_field** %14, align 8
  br label %184

87:                                               ; preds = %76
  store i64 0, i64* %17, align 8
  %88 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %89 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = call %struct.hist_field* @parse_expr(%struct.hist_trigger_data* %88, %struct.trace_event_file* %89, i8* %90, i64 %91, i8* null, i32 %93)
  store %struct.hist_field* %94, %struct.hist_field** %15, align 8
  %95 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %96 = call i64 @IS_ERR(%struct.hist_field* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %100 = call i32 @PTR_ERR(%struct.hist_field* %99)
  store i32 %100, i32* %19, align 4
  store %struct.hist_field* null, %struct.hist_field** %15, align 8
  br label %184

101:                                              ; preds = %87
  %102 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %103 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %106 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %107 = call i32 @check_expr_operands(i32 %104, %struct.hist_field* %105, %struct.hist_field* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %184

111:                                              ; preds = %101
  %112 = load i64, i64* @HIST_FIELD_FL_EXPR, align 8
  %113 = load i64, i64* %11, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %11, align 8
  %115 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %116 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP, align 8
  %119 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP_USECS, align 8
  %120 = or i64 %118, %119
  %121 = and i64 %117, %120
  %122 = load i64, i64* %11, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %11, align 8
  %124 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call %struct.hist_field* @create_hist_field(%struct.hist_trigger_data* %124, i32* null, i64 %125, i8* %126)
  store %struct.hist_field* %127, %struct.hist_field** %16, align 8
  %128 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %129 = icmp ne %struct.hist_field* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %111
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %19, align 4
  br label %184

133:                                              ; preds = %111
  %134 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %135 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %134, i32 0, i32 1
  store i32 1, i32* %135, align 8
  %136 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %137 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %136, i32 0, i32 1
  store i32 1, i32* %137, align 8
  %138 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %139 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %140 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %139, i32 0, i32 6
  %141 = load %struct.hist_field**, %struct.hist_field*** %140, align 8
  %142 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %141, i64 0
  store %struct.hist_field* %138, %struct.hist_field** %142, align 8
  %143 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %144 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %145 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %144, i32 0, i32 6
  %146 = load %struct.hist_field**, %struct.hist_field*** %145, align 8
  %147 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %146, i64 1
  store %struct.hist_field* %143, %struct.hist_field** %147, align 8
  %148 = load i32, i32* %18, align 4
  %149 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %150 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %152 = call i32 @expr_str(%struct.hist_field* %151, i32 0)
  %153 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %154 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  %155 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %156 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i32 @kstrdup(i32 %157, i32 %158)
  %160 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %161 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %163 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %133
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %19, align 4
  br label %184

169:                                              ; preds = %133
  %170 = load i32, i32* %18, align 4
  switch i32 %170, label %179 [
    i32 129, label %171
    i32 128, label %175
  ]

171:                                              ; preds = %169
  %172 = load i32, i32* @hist_field_minus, align 4
  %173 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %174 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  br label %182

175:                                              ; preds = %169
  %176 = load i32, i32* @hist_field_plus, align 4
  %177 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %178 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  br label %182

179:                                              ; preds = %169
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %19, align 4
  br label %184

182:                                              ; preds = %175, %171
  %183 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  store %struct.hist_field* %183, %struct.hist_field** %7, align 8
  br label %193

184:                                              ; preds = %179, %166, %130, %110, %98, %84, %75, %66
  %185 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %186 = call i32 @destroy_hist_field(%struct.hist_field* %185, i32 0)
  %187 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %188 = call i32 @destroy_hist_field(%struct.hist_field* %187, i32 0)
  %189 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  %190 = call i32 @destroy_hist_field(%struct.hist_field* %189, i32 0)
  %191 = load i32, i32* %19, align 4
  %192 = call %struct.hist_field* @ERR_PTR(i32 %191)
  store %struct.hist_field* %192, %struct.hist_field** %7, align 8
  br label %193

193:                                              ; preds = %184, %182, %53, %43, %26
  %194 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  ret %struct.hist_field* %194
}

declare dso_local i32 @hist_err(i32, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local %struct.hist_field* @ERR_PTR(i32) #1

declare dso_local i32 @contains_operator(i8*) #1

declare dso_local %struct.hist_field* @parse_atom(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64*, i8*) #1

declare dso_local %struct.hist_field* @parse_unary(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local i32 @PTR_ERR(%struct.hist_field*) #1

declare dso_local i32 @check_expr_operands(i32, %struct.hist_field*, %struct.hist_field*) #1

declare dso_local %struct.hist_field* @create_hist_field(%struct.hist_trigger_data*, i32*, i64, i8*) #1

declare dso_local i32 @expr_str(%struct.hist_field*, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @destroy_hist_field(%struct.hist_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

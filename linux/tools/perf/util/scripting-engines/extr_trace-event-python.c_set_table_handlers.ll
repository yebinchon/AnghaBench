; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_table_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_table_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tables = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"perf_db_export_mode\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"perf_db_export_calls\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"perf_db_export_callchains\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to initialize export\00", align 1
@main_dict = common dso_local global i32 0, align 4
@python_process_call_return = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to create calls processor\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to create call path root\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@evsel = common dso_local global i32 0, align 4
@machine = common dso_local global i32 0, align 4
@thread = common dso_local global i32 0, align 4
@comm = common dso_local global i32 0, align 4
@comm_thread = common dso_local global i32 0, align 4
@dso = common dso_local global i32 0, align 4
@symbol = common dso_local global i32 0, align 4
@branch_type = common dso_local global i32 0, align 4
@sample = common dso_local global i32 0, align 4
@call_path = common dso_local global i32 0, align 4
@call_return = common dso_local global i32 0, align 4
@context_switch = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"synth_data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tables*)* @set_table_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_table_handlers(%struct.tables* %0) #0 {
  %2 = alloca %struct.tables*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tables* %0, %struct.tables** %2, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.tables*, %struct.tables** %2, align 8
  %13 = call i32 @memset(%struct.tables* %12, i32 0, i32 24)
  %14 = load %struct.tables*, %struct.tables** %2, align 8
  %15 = getelementptr inbounds %struct.tables, %struct.tables* %14, i32 0, i32 2
  %16 = call i64 @db_export__init(%struct.TYPE_6__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* @main_dict, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32* @PyDict_GetItemString(i32 %21, i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %167

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @PyObject_IsTrue(i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @handler_call_die(i8* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %167

39:                                               ; preds = %35
  %40 = load %struct.tables*, %struct.tables** %2, align 8
  %41 = getelementptr inbounds %struct.tables, %struct.tables* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %42, align 8
  %43 = load i32, i32* @main_dict, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32* @PyDict_GetItemString(i32 %43, i8* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @PyObject_IsTrue(i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @handler_call_die(i8* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %39
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32, i32* @python_process_call_return, align 4
  %67 = load %struct.tables*, %struct.tables** %2, align 8
  %68 = getelementptr inbounds %struct.tables, %struct.tables* %67, i32 0, i32 2
  %69 = call %struct.TYPE_7__* @call_return_processor__new(i32 %66, %struct.TYPE_6__* %68)
  %70 = load %struct.tables*, %struct.tables** %2, align 8
  %71 = getelementptr inbounds %struct.tables, %struct.tables* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %72, align 8
  %73 = load %struct.tables*, %struct.tables** %2, align 8
  %74 = getelementptr inbounds %struct.tables, %struct.tables* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %65
  %79 = call i32 @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %65
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.tables*, %struct.tables** %2, align 8
  %83 = getelementptr inbounds %struct.tables, %struct.tables* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @main_dict, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = call i32* @PyDict_GetItemString(i32 %85, i8* %86)
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %81
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @PyObject_IsTrue(i32* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @handler_call_die(i8* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %81
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %104
  %108 = load %struct.tables*, %struct.tables** %2, align 8
  %109 = getelementptr inbounds %struct.tables, %struct.tables* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = icmp ne %struct.TYPE_7__* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.tables*, %struct.tables** %2, align 8
  %115 = getelementptr inbounds %struct.tables, %struct.tables* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.tables*, %struct.tables** %2, align 8
  %121 = getelementptr inbounds %struct.tables, %struct.tables* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32* %119, i32** %122, align 8
  br label %128

123:                                              ; preds = %107
  %124 = call i32* (...) @call_path_root__new()
  %125 = load %struct.tables*, %struct.tables** %2, align 8
  %126 = getelementptr inbounds %struct.tables, %struct.tables* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32* %124, i32** %127, align 8
  br label %128

128:                                              ; preds = %123, %113
  %129 = load %struct.tables*, %struct.tables** %2, align 8
  %130 = getelementptr inbounds %struct.tables, %struct.tables* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = call i32 @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %128
  br label %137

137:                                              ; preds = %136, %104
  %138 = load %struct.tables*, %struct.tables** %2, align 8
  %139 = getelementptr inbounds %struct.tables, %struct.tables* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @symbol_conf, i32 0, i32 0), align 4
  %140 = load i32, i32* @evsel, align 4
  %141 = call i32 @SET_TABLE_HANDLER(i32 %140)
  %142 = load i32, i32* @machine, align 4
  %143 = call i32 @SET_TABLE_HANDLER(i32 %142)
  %144 = load i32, i32* @thread, align 4
  %145 = call i32 @SET_TABLE_HANDLER(i32 %144)
  %146 = load i32, i32* @comm, align 4
  %147 = call i32 @SET_TABLE_HANDLER(i32 %146)
  %148 = load i32, i32* @comm_thread, align 4
  %149 = call i32 @SET_TABLE_HANDLER(i32 %148)
  %150 = load i32, i32* @dso, align 4
  %151 = call i32 @SET_TABLE_HANDLER(i32 %150)
  %152 = load i32, i32* @symbol, align 4
  %153 = call i32 @SET_TABLE_HANDLER(i32 %152)
  %154 = load i32, i32* @branch_type, align 4
  %155 = call i32 @SET_TABLE_HANDLER(i32 %154)
  %156 = load i32, i32* @sample, align 4
  %157 = call i32 @SET_TABLE_HANDLER(i32 %156)
  %158 = load i32, i32* @call_path, align 4
  %159 = call i32 @SET_TABLE_HANDLER(i32 %158)
  %160 = load i32, i32* @call_return, align 4
  %161 = call i32 @SET_TABLE_HANDLER(i32 %160)
  %162 = load i32, i32* @context_switch, align 4
  %163 = call i32 @SET_TABLE_HANDLER(i32 %162)
  %164 = call i32 @get_handler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %165 = load %struct.tables*, %struct.tables** %2, align 8
  %166 = getelementptr inbounds %struct.tables, %struct.tables* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %137, %38, %26
  ret void
}

declare dso_local i32 @memset(%struct.tables*, i32, i32) #1

declare dso_local i64 @db_export__init(%struct.TYPE_6__*) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32* @PyDict_GetItemString(i32, i8*) #1

declare dso_local i32 @PyObject_IsTrue(i32*) #1

declare dso_local i32 @handler_call_die(i8*) #1

declare dso_local %struct.TYPE_7__* @call_return_processor__new(i32, %struct.TYPE_6__*) #1

declare dso_local i32* @call_path_root__new(...) #1

declare dso_local i32 @SET_TABLE_HANDLER(i32) #1

declare dso_local i32 @get_handler(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

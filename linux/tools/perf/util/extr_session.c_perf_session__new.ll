; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32, %struct.TYPE_6__, %struct.perf_data*, %struct.TYPE_4__, i32, i32, %struct.perf_tool* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_data = type { i32, i64 }
%struct.perf_tool = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ordered_events__deliver_event = common dso_local global i32 0, align 4
@perf_env = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot read kernel map\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"WARNING: No sample_id_all support, falling back to unordered processing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_session* @perf_session__new(%struct.perf_data* %0, i32 %1, %struct.perf_tool* %2) #0 {
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %struct.perf_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_session*, align 8
  store %struct.perf_data* %0, %struct.perf_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_tool* %2, %struct.perf_tool** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = call %struct.perf_session* @zalloc(i32 56)
  store %struct.perf_session* %12, %struct.perf_session** %9, align 8
  %13 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %14 = icmp ne %struct.perf_session* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %151

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %19 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %21 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %22 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %21, i32 0, i32 7
  store %struct.perf_tool* %20, %struct.perf_tool** %22, align 8
  %23 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %24 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %23, i32 0, i32 6
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %27 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %26, i32 0, i32 2
  %28 = call i32 @machines__init(%struct.TYPE_6__* %27)
  %29 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %30 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %29, i32 0, i32 5
  %31 = load i32, i32* @ordered_events__deliver_event, align 4
  %32 = call i32 @ordered_events__init(i32* %30, i32 %31, i32* null)
  %33 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %34 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @perf_env__init(i32* %35)
  %37 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %38 = icmp ne %struct.perf_data* %37, null
  br i1 %38, label %39, label %86

39:                                               ; preds = %16
  %40 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %41 = call i32 @perf_data__open(%struct.perf_data* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %148

45:                                               ; preds = %39
  %46 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %47 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %48 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %47, i32 0, i32 3
  store %struct.perf_data* %46, %struct.perf_data** %48, align 8
  %49 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %50 = call i64 @perf_data__is_read(%struct.perf_data* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %45
  %53 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %54 = call i32 @perf_session__open(%struct.perf_session* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %148

58:                                               ; preds = %52
  %59 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %60 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %65 = call i32 @perf_session__set_id_hdr_size(%struct.perf_session* %64)
  %66 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %67 = call i32 @perf_session__set_comm_exec(%struct.perf_session* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %70 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @perf_evlist__init_trace_event_sample_raw(i32 %71)
  %73 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %74 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %79 = call i32 @perf_data__open_dir(%struct.perf_data* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %148

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %45
  br label %91

86:                                               ; preds = %16
  %87 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %88 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32* @perf_env, i32** %90, align 8
  br label %91

91:                                               ; preds = %86, %85
  %92 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %93 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @perf_env__single_address_space(i32* %96)
  %98 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %99 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 8
  %102 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %103 = icmp ne %struct.perf_data* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %106 = call i64 @perf_data__is_write(%struct.perf_data* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104, %91
  %109 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %110 = call i64 @perf_session__create_kernel_maps(%struct.perf_session* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 @pr_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %104
  %116 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %117 = icmp ne %struct.perf_data* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %120 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %118, %115
  %124 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %125 = icmp ne %struct.perf_tool* %124, null
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %128 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %133 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %138 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @perf_evlist__sample_id_all(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = call i32 @dump_printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %144 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %145 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %136, %131, %126, %123, %118
  %147 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  store %struct.perf_session* %147, %struct.perf_session** %4, align 8
  br label %154

148:                                              ; preds = %82, %57, %44
  %149 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %150 = call i32 @perf_session__delete(%struct.perf_session* %149)
  br label %151

151:                                              ; preds = %148, %15
  %152 = load i32, i32* %8, align 4
  %153 = call %struct.perf_session* @ERR_PTR(i32 %152)
  store %struct.perf_session* %153, %struct.perf_session** %4, align 8
  br label %154

154:                                              ; preds = %151, %146
  %155 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  ret %struct.perf_session* %155
}

declare dso_local %struct.perf_session* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @machines__init(%struct.TYPE_6__*) #1

declare dso_local i32 @ordered_events__init(i32*, i32, i32*) #1

declare dso_local i32 @perf_env__init(i32*) #1

declare dso_local i32 @perf_data__open(%struct.perf_data*) #1

declare dso_local i64 @perf_data__is_read(%struct.perf_data*) #1

declare dso_local i32 @perf_session__open(%struct.perf_session*) #1

declare dso_local i32 @perf_session__set_id_hdr_size(%struct.perf_session*) #1

declare dso_local i32 @perf_session__set_comm_exec(%struct.perf_session*) #1

declare dso_local i32 @perf_evlist__init_trace_event_sample_raw(i32) #1

declare dso_local i32 @perf_data__open_dir(%struct.perf_data*) #1

declare dso_local i32 @perf_env__single_address_space(i32*) #1

declare dso_local i64 @perf_data__is_write(%struct.perf_data*) #1

declare dso_local i64 @perf_session__create_kernel_maps(%struct.perf_session*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @perf_evlist__sample_id_all(i32) #1

declare dso_local i32 @dump_printf(i8*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

declare dso_local %struct.perf_session* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

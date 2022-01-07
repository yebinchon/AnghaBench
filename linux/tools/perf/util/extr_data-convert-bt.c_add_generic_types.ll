; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_generic_types.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_generic_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.evsel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bt_ctf_event_class = type { i32 }

@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"  field '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"perf_ip\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to add field '%s';\0A\00", align 1
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"perf_tid\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"perf_pid\00", align 1
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"perf_id\00", align 1
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"perf_stream_id\00", align 1
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"perf_period\00", align 1
@PERF_SAMPLE_WEIGHT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"perf_weight\00", align 1
@PERF_SAMPLE_DATA_SRC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"perf_data_src\00", align 1
@PERF_SAMPLE_TRANSACTION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"perf_transaction\00", align 1
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"perf_callchain_size\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"perf_callchain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.evsel*, %struct.bt_ctf_event_class*)* @add_generic_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_generic_types(%struct.ctf_writer* %0, %struct.evsel* %1, %struct.bt_ctf_event_class* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctf_writer*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.bt_ctf_event_class*, align 8
  %8 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.bt_ctf_event_class* %2, %struct.bt_ctf_event_class** %7, align 8
  %9 = load %struct.evsel*, %struct.evsel** %6, align 8
  %10 = getelementptr inbounds %struct.evsel, %struct.evsel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18
  %20 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %22 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %23 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %21, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %41 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %42 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %40, i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %54 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %55 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %53, i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74
  %76 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %78 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %79 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %77, i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93
  %95 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %96 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %97 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %98 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %96, i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %88
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112
  %114 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %115 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %116 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %117 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %115, i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131
  %133 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %134 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %135 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %136 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %134, i32 %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144, %126
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @PERF_SAMPLE_DATA_SRC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150
  %152 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %153 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %154 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %155 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %153, i32 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @PERF_SAMPLE_TRANSACTION, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169
  %171 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %172 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %173 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %174 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %172, i32 %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %164
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %216

188:                                              ; preds = %183
  br label %189

189:                                              ; preds = %188
  %190 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %191 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %192 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %193 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %191, i32 %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  %203 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr2 to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %204 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %205 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %206 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @bt_ctf_field_type_sequence_create(i32 %208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %210 = call i32 (%struct.bt_ctf_event_class*, i32, i8*, ...) bitcast (i32 (...)* @bt_ctf_event_class_add_field to i32 (%struct.bt_ctf_event_class*, i32, i8*, ...)*)(%struct.bt_ctf_event_class* %204, i32 %209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %202
  %213 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @pr_err to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

214:                                              ; preds = %202
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215, %183
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %212, %198, %179, %160, %141, %122, %103, %84, %60, %47, %28
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @pr2(...) #1

declare dso_local i32 @bt_ctf_event_class_add_field(...) #1

declare dso_local i32 @pr_err(...) #1

declare dso_local i32 @bt_ctf_field_type_sequence_create(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

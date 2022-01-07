; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_generic_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_generic_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { i32 }
%struct.bt_ctf_event = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"perf_ip\00", align 1
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"perf_tid\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"perf_pid\00", align 1
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"perf_id\00", align 1
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"perf_stream_id\00", align 1
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"perf_period\00", align 1
@PERF_SAMPLE_WEIGHT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"perf_weight\00", align 1
@PERF_SAMPLE_DATA_SRC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"perf_data_src\00", align 1
@PERF_SAMPLE_TRANSACTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"perf_transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.bt_ctf_event*, %struct.evsel*, %struct.perf_sample*)* @add_generic_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_generic_values(%struct.ctf_writer* %0, %struct.bt_ctf_event* %1, %struct.evsel* %2, %struct.perf_sample* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctf_writer*, align 8
  %7 = alloca %struct.bt_ctf_event*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %6, align 8
  store %struct.bt_ctf_event* %1, %struct.bt_ctf_event** %7, align 8
  store %struct.evsel* %2, %struct.evsel** %8, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %9, align 8
  %12 = load %struct.evsel*, %struct.evsel** %8, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %23 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %24 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %25 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @value_set_u64_hex(%struct.ctf_writer* %22, %struct.bt_ctf_event* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %160

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %39 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %40 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %41 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @value_set_s32(%struct.ctf_writer* %38, %struct.bt_ctf_event* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %160

47:                                               ; preds = %37
  %48 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %49 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %50 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %51 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @value_set_s32(%struct.ctf_writer* %48, %struct.bt_ctf_event* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %160

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63, %58
  %69 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %70 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %71 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %72 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @value_set_u64(%struct.ctf_writer* %69, %struct.bt_ctf_event* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %160

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %86 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %87 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %88 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @value_set_u64(%struct.ctf_writer* %85, %struct.bt_ctf_event* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 -1, i32* %5, align 4
  br label %160

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %79
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %102 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %103 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %104 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @value_set_u64(%struct.ctf_writer* %101, %struct.bt_ctf_event* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  store i32 -1, i32* %5, align 4
  br label %160

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %95
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %118 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %119 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %120 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @value_set_u64(%struct.ctf_writer* %117, %struct.bt_ctf_event* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  store i32 -1, i32* %5, align 4
  br label %160

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %111
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @PERF_SAMPLE_DATA_SRC, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %134 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %135 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %136 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @value_set_u64(%struct.ctf_writer* %133, %struct.bt_ctf_event* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  store i32 -1, i32* %5, align 4
  br label %160

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %127
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @PERF_SAMPLE_TRANSACTION, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %150 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %7, align 8
  %151 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %152 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @value_set_u64(%struct.ctf_writer* %149, %struct.bt_ctf_event* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 -1, i32* %5, align 4
  br label %160

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %143
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %157, %141, %125, %109, %93, %77, %56, %46, %30
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @value_set_u64_hex(%struct.ctf_writer*, %struct.bt_ctf_event*, i8*, i32) #1

declare dso_local i32 @value_set_s32(%struct.ctf_writer*, %struct.bt_ctf_event*, i8*, i32) #1

declare dso_local i32 @value_set_u64(%struct.ctf_writer*, %struct.bt_ctf_event*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_evsel__check_attr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_evsel__check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32 }
%struct.perf_session = type { i32, i32 }

@HEADER_STAT = common dso_local global i32 0, align 4
@HEADER_AUXTRACE = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"record -R\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@PERF_OUTPUT_IP = common dso_local global i32 0, align 4
@ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@PERF_OUTPUT_ADDR = common dso_local global i32 0, align 4
@DATA_SRC = common dso_local global i32 0, align 4
@PERF_SAMPLE_DATA_SRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"DATA_SRC\00", align 1
@PERF_OUTPUT_DATA_SRC = common dso_local global i32 0, align 4
@WEIGHT = common dso_local global i32 0, align 4
@PERF_SAMPLE_WEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"WEIGHT\00", align 1
@PERF_OUTPUT_WEIGHT = common dso_local global i32 0, align 4
@SYM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [125 x i8] c"Display of symbols requested but neither sample IP nor sample address\0Aavailable. Hence, no addresses to convert to symbols.\0A\00", align 1
@SYMOFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Display of offsets requested but symbol is notselected.\0A\00", align 1
@DSO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"Display of DSO requested but no address to convert.\0A\00", align 1
@SRCLINE = common dso_local global i32 0, align 4
@SRCCODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [124 x i8] c"Display of source line number requested but sample IP is not\0Aselected. Hence, no address to lookup the source line number.\0A\00", align 1
@BRSTACKINSN = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_ANY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [107 x i8] c"Display of branch stack assembler requested, but non all-branch filter set\0AHint: run 'perf record -b ...'\0A\00", align 1
@PID = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@PERF_OUTPUT_TID = common dso_local global i32 0, align 4
@PERF_OUTPUT_PID = common dso_local global i32 0, align 4
@TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@PERF_OUTPUT_TIME = common dso_local global i32 0, align 4
@CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@PERF_OUTPUT_CPU = common dso_local global i32 0, align 4
@IREGS = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_INTR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"IREGS\00", align 1
@PERF_OUTPUT_IREGS = common dso_local global i32 0, align 4
@UREGS = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"UREGS\00", align 1
@PERF_OUTPUT_UREGS = common dso_local global i32 0, align 4
@PHYS_ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_PHYS_ADDR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"PHYS_ADDR\00", align 1
@PERF_OUTPUT_PHYS_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_session*)* @perf_evsel__check_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__check_attr(%struct.evsel* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %8 = load %struct.evsel*, %struct.evsel** %4, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.perf_event_attr* %10, %struct.perf_event_attr** %6, align 8
  %11 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %12 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %11, i32 0, i32 1
  %13 = load i32, i32* @HEADER_STAT, align 4
  %14 = call i32 @perf_header__has_feat(i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %254

17:                                               ; preds = %2
  %18 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %19 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %18, i32 0, i32 1
  %20 = load i32, i32* @HEADER_AUXTRACE, align 4
  %21 = call i32 @perf_header__has_feat(i32* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @TRACE, align 4
  %23 = call i64 @PRINT_FIELD(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %27 = call i32 @perf_session__has_traces(%struct.perf_session* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %254

32:                                               ; preds = %25, %17
  %33 = load i32, i32* @IP, align 4
  %34 = call i64 @PRINT_FIELD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.evsel*, %struct.evsel** %4, align 8
  %38 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %39 = load i32, i32* @PERF_OUTPUT_IP, align 4
  %40 = call i64 @perf_evsel__check_stype(%struct.evsel* %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %254

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* @ADDR, align 4
  %48 = call i64 @PRINT_FIELD(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.evsel*, %struct.evsel** %4, align 8
  %52 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %53 = load i32, i32* @PERF_OUTPUT_ADDR, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @perf_evsel__do_check_stype(%struct.evsel* %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %254

60:                                               ; preds = %50, %46
  %61 = load i32, i32* @DATA_SRC, align 4
  %62 = call i64 @PRINT_FIELD(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.evsel*, %struct.evsel** %4, align 8
  %66 = load i32, i32* @PERF_SAMPLE_DATA_SRC, align 4
  %67 = load i32, i32* @PERF_OUTPUT_DATA_SRC, align 4
  %68 = call i64 @perf_evsel__check_stype(%struct.evsel* %65, i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %254

73:                                               ; preds = %64, %60
  %74 = load i32, i32* @WEIGHT, align 4
  %75 = call i64 @PRINT_FIELD(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.evsel*, %struct.evsel** %4, align 8
  %79 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %80 = load i32, i32* @PERF_OUTPUT_WEIGHT, align 4
  %81 = call i64 @perf_evsel__check_stype(%struct.evsel* %78, i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %254

86:                                               ; preds = %77, %73
  %87 = load i32, i32* @SYM, align 4
  %88 = call i64 @PRINT_FIELD(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load %struct.evsel*, %struct.evsel** %4, align 8
  %92 = getelementptr inbounds %struct.evsel, %struct.evsel* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %97 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %90
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %254

105:                                              ; preds = %90, %86
  %106 = load i32, i32* @SYMOFFSET, align 4
  %107 = call i64 @PRINT_FIELD(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i32, i32* @SYM, align 4
  %111 = call i64 @PRINT_FIELD(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %254

117:                                              ; preds = %109, %105
  %118 = load i32, i32* @DSO, align 4
  %119 = call i64 @PRINT_FIELD(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load %struct.evsel*, %struct.evsel** %4, align 8
  %123 = getelementptr inbounds %struct.evsel, %struct.evsel* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %128 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %121
  %133 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %254

136:                                              ; preds = %121, %117
  %137 = load i32, i32* @SRCLINE, align 4
  %138 = call i64 @PRINT_FIELD(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @SRCCODE, align 4
  %142 = call i64 @PRINT_FIELD(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %140, %136
  %145 = load i32, i32* @IP, align 4
  %146 = call i64 @PRINT_FIELD(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.8, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %254

152:                                              ; preds = %144, %140
  %153 = load i32, i32* @BRSTACKINSN, align 4
  %154 = call i64 @PRINT_FIELD(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %158 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @perf_evlist__combined_branch_type(i32 %159)
  %161 = load i32, i32* @PERF_SAMPLE_BRANCH_ANY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %156
  %165 = call i32 @pr_err(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.9, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %254

168:                                              ; preds = %156, %152
  %169 = load i32, i32* @PID, align 4
  %170 = call i64 @PRINT_FIELD(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* @TID, align 4
  %174 = call i64 @PRINT_FIELD(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %172, %168
  %177 = load %struct.evsel*, %struct.evsel** %4, align 8
  %178 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %179 = load i32, i32* @PERF_OUTPUT_TID, align 4
  %180 = load i32, i32* @PERF_OUTPUT_PID, align 4
  %181 = or i32 %179, %180
  %182 = call i64 @perf_evsel__check_stype(%struct.evsel* %177, i32 %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %254

187:                                              ; preds = %176, %172
  %188 = load i32, i32* @TIME, align 4
  %189 = call i64 @PRINT_FIELD(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load %struct.evsel*, %struct.evsel** %4, align 8
  %193 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %194 = load i32, i32* @PERF_OUTPUT_TIME, align 4
  %195 = call i64 @perf_evsel__check_stype(%struct.evsel* %192, i32 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  br label %254

200:                                              ; preds = %191, %187
  %201 = load i32, i32* @CPU, align 4
  %202 = call i64 @PRINT_FIELD(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load %struct.evsel*, %struct.evsel** %4, align 8
  %206 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %207 = load i32, i32* @PERF_OUTPUT_CPU, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i64 @perf_evsel__do_check_stype(%struct.evsel* %205, i32 %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %254

214:                                              ; preds = %204, %200
  %215 = load i32, i32* @IREGS, align 4
  %216 = call i64 @PRINT_FIELD(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %214
  %219 = load %struct.evsel*, %struct.evsel** %4, align 8
  %220 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  %221 = load i32, i32* @PERF_OUTPUT_IREGS, align 4
  %222 = call i64 @perf_evsel__check_stype(%struct.evsel* %219, i32 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %254

227:                                              ; preds = %218, %214
  %228 = load i32, i32* @UREGS, align 4
  %229 = call i64 @PRINT_FIELD(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %227
  %232 = load %struct.evsel*, %struct.evsel** %4, align 8
  %233 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %234 = load i32, i32* @PERF_OUTPUT_UREGS, align 4
  %235 = call i64 @perf_evsel__check_stype(%struct.evsel* %232, i32 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %3, align 4
  br label %254

240:                                              ; preds = %231, %227
  %241 = load i32, i32* @PHYS_ADDR, align 4
  %242 = call i64 @PRINT_FIELD(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load %struct.evsel*, %struct.evsel** %4, align 8
  %246 = load i32, i32* @PERF_SAMPLE_PHYS_ADDR, align 4
  %247 = load i32, i32* @PERF_OUTPUT_PHYS_ADDR, align 4
  %248 = call i64 @perf_evsel__check_stype(%struct.evsel* %245, i32 %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %3, align 4
  br label %254

253:                                              ; preds = %244, %240
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %253, %250, %237, %224, %211, %197, %184, %164, %148, %132, %113, %101, %83, %70, %57, %42, %29, %16
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @perf_header__has_feat(i32*, i32) #1

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i32 @perf_session__has_traces(%struct.perf_session*, i8*) #1

declare dso_local i64 @perf_evsel__check_stype(%struct.evsel*, i32, i8*, i32) #1

declare dso_local i64 @perf_evsel__do_check_stype(%struct.evsel*, i32, i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @perf_evlist__combined_branch_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_stats_print.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_stats_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.record, %struct.record, %struct.record*, %struct.record_u64*, %struct.record_u64* }
%struct.record = type { %struct.datarec, %struct.datarec* }
%struct.datarec = type { i32 }
%struct.record_u64 = type { %struct.u64rec, %struct.u64rec* }
%struct.u64rec = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%-15s %-7s %-12s %-12s %-9s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"XDP-event\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CPU:to\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drop-pps\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"extra-info\00", align 1
@REDIR_ERROR = common dso_local global i32 0, align 4
@REDIR_RES_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%-15s %-7d %'-12.0f %'-12.0f %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%-15s %-7s %'-12.0f %'-12.0f %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"XDP_REDIRECT\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@XDP_ACTION_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@MAX_CPUS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"%-15s %3d:%-3d %'-12.0f %'-12.0f %'-10.2f %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%-15s %3s:%-3d %'-12.0f %'-12.0f %'-10.2f %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"bulk-average\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"cpumap-enqueue\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"%-15s %-7d %'-12.0f %'-12.0f %'-10.0f %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%-15s %-7s %'-12.0f %'-12.0f %'-10.0f %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"cpumap-kthread\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sched-sum\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"%-15s %-7d %'-12.0f %'-12.0f %'-10.2f %s %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"%-15s %-7s %'-12.0f %'-12.0f %'-10.2f %s %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"drv-err\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"devmap-xmit\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record*, %struct.stats_record*, i32)* @stats_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_print(%struct.stats_record* %0, %struct.stats_record* %1, i32 %2) #0 {
  %4 = alloca %struct.stats_record*, align 8
  %5 = alloca %struct.stats_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.record_u64*, align 8
  %14 = alloca %struct.record_u64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.u64rec*, align 8
  %18 = alloca %struct.u64rec*, align 8
  %19 = alloca %struct.record_u64*, align 8
  %20 = alloca %struct.record_u64*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.u64rec*, align 8
  %24 = alloca %struct.u64rec*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.record*, align 8
  %28 = alloca %struct.record*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca %struct.datarec*, align 8
  %33 = alloca %struct.datarec*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.record*, align 8
  %37 = alloca %struct.record*, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.datarec*, align 8
  %42 = alloca %struct.datarec*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca %struct.record*, align 8
  %46 = alloca %struct.record*, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i8*, align 8
  %52 = alloca %struct.datarec*, align 8
  %53 = alloca %struct.datarec*, align 8
  store %struct.stats_record* %0, %struct.stats_record** %4, align 8
  store %struct.stats_record* %1, %struct.stats_record** %5, align 8
  store i32 %2, i32* %6, align 4
  %54 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %54, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %3
  %59 = load i32, i32* @REDIR_ERROR, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %3
  br label %61

61:                                               ; preds = %153, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @REDIR_RES_MAX, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %156

65:                                               ; preds = %61
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  %66 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %67 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %66, i32 0, i32 4
  %68 = load %struct.record_u64*, %struct.record_u64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %68, i64 %70
  store %struct.record_u64* %71, %struct.record_u64** %13, align 8
  %72 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %73 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %72, i32 0, i32 4
  %74 = load %struct.record_u64*, %struct.record_u64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %74, i64 %76
  store %struct.record_u64* %77, %struct.record_u64** %14, align 8
  %78 = load %struct.record_u64*, %struct.record_u64** %13, align 8
  %79 = load %struct.record_u64*, %struct.record_u64** %14, align 8
  %80 = call double @calc_period_u64(%struct.record_u64* %78, %struct.record_u64* %79)
  store double %80, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %125, %65
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %128

85:                                               ; preds = %81
  %86 = load %struct.record_u64*, %struct.record_u64** %13, align 8
  %87 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %86, i32 0, i32 1
  %88 = load %struct.u64rec*, %struct.u64rec** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %88, i64 %90
  store %struct.u64rec* %91, %struct.u64rec** %17, align 8
  %92 = load %struct.record_u64*, %struct.record_u64** %14, align 8
  %93 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %92, i32 0, i32 1
  %94 = load %struct.u64rec*, %struct.u64rec** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %94, i64 %96
  store %struct.u64rec* %97, %struct.u64rec** %18, align 8
  %98 = load %struct.u64rec*, %struct.u64rec** %17, align 8
  %99 = load %struct.u64rec*, %struct.u64rec** %18, align 8
  %100 = load double, double* %11, align 8
  %101 = call double @calc_pps_u64(%struct.u64rec* %98, %struct.u64rec* %99, double %100)
  store double %101, double* %12, align 8
  %102 = load double, double* %12, align 8
  %103 = fcmp ogt double %102, 0.000000e+00
  br i1 %103, label %104, label %124

104:                                              ; preds = %85
  %105 = load i8*, i8** %15, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %112

110:                                              ; preds = %104
  %111 = load double, double* %12, align 8
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi double [ 0.000000e+00, %109 ], [ %111, %110 ]
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load double, double* %12, align 8
  br label %119

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi double [ %117, %116 ], [ 0.000000e+00, %118 ]
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @err2str(i32 %121)
  %123 = call i32 (i8*, ...) @printf(i8* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %106, double %113, double %120, i32 %122)
  br label %124

124:                                              ; preds = %119, %85
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %81

128:                                              ; preds = %81
  %129 = load %struct.record_u64*, %struct.record_u64** %13, align 8
  %130 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %129, i32 0, i32 0
  %131 = load %struct.record_u64*, %struct.record_u64** %14, align 8
  %132 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %131, i32 0, i32 0
  %133 = load double, double* %11, align 8
  %134 = call double @calc_pps_u64(%struct.u64rec* %130, %struct.u64rec* %132, double %133)
  store double %134, double* %12, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %141

139:                                              ; preds = %128
  %140 = load double, double* %12, align 8
  br label %141

141:                                              ; preds = %139, %138
  %142 = phi double [ 0.000000e+00, %138 ], [ %140, %139 ]
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load double, double* %12, align 8
  br label %148

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi double [ %146, %145 ], [ 0.000000e+00, %147 ]
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @err2str(i32 %150)
  %152 = call i32 (i8*, ...) @printf(i8* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %142, double %149, i32 %151)
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %61

156:                                              ; preds = %61
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %227, %156
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @XDP_ACTION_MAX, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %230

161:                                              ; preds = %157
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %22, align 8
  %162 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %163 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %162, i32 0, i32 3
  %164 = load %struct.record_u64*, %struct.record_u64** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %164, i64 %166
  store %struct.record_u64* %167, %struct.record_u64** %19, align 8
  %168 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %169 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %168, i32 0, i32 3
  %170 = load %struct.record_u64*, %struct.record_u64** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %170, i64 %172
  store %struct.record_u64* %173, %struct.record_u64** %20, align 8
  %174 = load %struct.record_u64*, %struct.record_u64** %19, align 8
  %175 = load %struct.record_u64*, %struct.record_u64** %20, align 8
  %176 = call double @calc_period_u64(%struct.record_u64* %174, %struct.record_u64* %175)
  store double %176, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %208, %161
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %211

181:                                              ; preds = %177
  %182 = load %struct.record_u64*, %struct.record_u64** %19, align 8
  %183 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %182, i32 0, i32 1
  %184 = load %struct.u64rec*, %struct.u64rec** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %184, i64 %186
  store %struct.u64rec* %187, %struct.u64rec** %23, align 8
  %188 = load %struct.record_u64*, %struct.record_u64** %20, align 8
  %189 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %188, i32 0, i32 1
  %190 = load %struct.u64rec*, %struct.u64rec** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %190, i64 %192
  store %struct.u64rec* %193, %struct.u64rec** %24, align 8
  %194 = load %struct.u64rec*, %struct.u64rec** %23, align 8
  %195 = load %struct.u64rec*, %struct.u64rec** %24, align 8
  %196 = load double, double* %11, align 8
  %197 = call double @calc_pps_u64(%struct.u64rec* %194, %struct.u64rec* %195, double %196)
  store double %197, double* %12, align 8
  %198 = load double, double* %12, align 8
  %199 = fcmp ogt double %198, 0.000000e+00
  br i1 %199, label %200, label %207

200:                                              ; preds = %181
  %201 = load i8*, i8** %21, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load double, double* %12, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @action2str(i32 %204)
  %206 = call i32 (i8*, ...) @printf(i8* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %202, double 0.000000e+00, double %203, i32 %205)
  br label %207

207:                                              ; preds = %200, %181
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %177

211:                                              ; preds = %177
  %212 = load %struct.record_u64*, %struct.record_u64** %19, align 8
  %213 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %212, i32 0, i32 0
  %214 = load %struct.record_u64*, %struct.record_u64** %20, align 8
  %215 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %214, i32 0, i32 0
  %216 = load double, double* %11, align 8
  %217 = call double @calc_pps_u64(%struct.u64rec* %213, %struct.u64rec* %215, double %216)
  store double %217, double* %12, align 8
  %218 = load double, double* %12, align 8
  %219 = fcmp ogt double %218, 0.000000e+00
  br i1 %219, label %220, label %226

220:                                              ; preds = %211
  %221 = load i8*, i8** %22, align 8
  %222 = load double, double* %12, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @action2str(i32 %223)
  %225 = call i32 (i8*, ...) @printf(i8* %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double 0.000000e+00, double %222, i32 %224)
  br label %226

226:                                              ; preds = %220, %211
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %157

230:                                              ; preds = %157
  store i32 0, i32* %10, align 4
  br label %231

231:                                              ; preds = %339, %230
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* @MAX_CPUS, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %342

235:                                              ; preds = %231
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8** %25, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8** %26, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** %29, align 8
  %236 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %237 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %236, i32 0, i32 2
  %238 = load %struct.record*, %struct.record** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.record, %struct.record* %238, i64 %240
  store %struct.record* %241, %struct.record** %27, align 8
  %242 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %243 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %242, i32 0, i32 2
  %244 = load %struct.record*, %struct.record** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.record, %struct.record* %244, i64 %246
  store %struct.record* %247, %struct.record** %28, align 8
  %248 = load %struct.record*, %struct.record** %27, align 8
  %249 = load %struct.record*, %struct.record** %28, align 8
  %250 = call double @calc_period(%struct.record* %248, %struct.record* %249)
  store double %250, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %299, %235
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %255, label %302

255:                                              ; preds = %251
  %256 = load %struct.record*, %struct.record** %27, align 8
  %257 = getelementptr inbounds %struct.record, %struct.record* %256, i32 0, i32 1
  %258 = load %struct.datarec*, %struct.datarec** %257, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.datarec, %struct.datarec* %258, i64 %260
  store %struct.datarec* %261, %struct.datarec** %32, align 8
  %262 = load %struct.record*, %struct.record** %28, align 8
  %263 = getelementptr inbounds %struct.record, %struct.record* %262, i32 0, i32 1
  %264 = load %struct.datarec*, %struct.datarec** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.datarec, %struct.datarec* %264, i64 %266
  store %struct.datarec* %267, %struct.datarec** %33, align 8
  %268 = load %struct.datarec*, %struct.datarec** %32, align 8
  %269 = load %struct.datarec*, %struct.datarec** %33, align 8
  %270 = load double, double* %11, align 8
  %271 = call double @calc_pps(%struct.datarec* %268, %struct.datarec* %269, double %270)
  store double %271, double* %12, align 8
  %272 = load %struct.datarec*, %struct.datarec** %32, align 8
  %273 = load %struct.datarec*, %struct.datarec** %33, align 8
  %274 = load double, double* %11, align 8
  %275 = call double @calc_drop(%struct.datarec* %272, %struct.datarec* %273, double %274)
  store double %275, double* %30, align 8
  %276 = load %struct.datarec*, %struct.datarec** %32, align 8
  %277 = load %struct.datarec*, %struct.datarec** %33, align 8
  %278 = load double, double* %11, align 8
  %279 = call double @calc_info(%struct.datarec* %276, %struct.datarec* %277, double %278)
  store double %279, double* %31, align 8
  %280 = load double, double* %31, align 8
  %281 = fcmp ogt double %280, 0.000000e+00
  br i1 %281, label %282, label %286

282:                                              ; preds = %255
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %29, align 8
  %283 = load double, double* %12, align 8
  %284 = load double, double* %31, align 8
  %285 = fdiv double %283, %284
  store double %285, double* %31, align 8
  br label %286

286:                                              ; preds = %282, %255
  %287 = load double, double* %12, align 8
  %288 = fcmp ogt double %287, 0.000000e+00
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = load i8*, i8** %25, align 8
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %10, align 4
  %293 = load double, double* %12, align 8
  %294 = load double, double* %30, align 8
  %295 = load double, double* %31, align 8
  %296 = load i8*, i8** %29, align 8
  %297 = call i32 (i8*, ...) @printf(i8* %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %291, i32 %292, double %293, double %294, double %295, i8* %296)
  br label %298

298:                                              ; preds = %289, %286
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %9, align 4
  br label %251

302:                                              ; preds = %251
  %303 = load %struct.record*, %struct.record** %27, align 8
  %304 = getelementptr inbounds %struct.record, %struct.record* %303, i32 0, i32 0
  %305 = load %struct.record*, %struct.record** %28, align 8
  %306 = getelementptr inbounds %struct.record, %struct.record* %305, i32 0, i32 0
  %307 = load double, double* %11, align 8
  %308 = call double @calc_pps(%struct.datarec* %304, %struct.datarec* %306, double %307)
  store double %308, double* %12, align 8
  %309 = load double, double* %12, align 8
  %310 = fcmp ogt double %309, 0.000000e+00
  br i1 %310, label %311, label %338

311:                                              ; preds = %302
  %312 = load %struct.record*, %struct.record** %27, align 8
  %313 = getelementptr inbounds %struct.record, %struct.record* %312, i32 0, i32 0
  %314 = load %struct.record*, %struct.record** %28, align 8
  %315 = getelementptr inbounds %struct.record, %struct.record* %314, i32 0, i32 0
  %316 = load double, double* %11, align 8
  %317 = call double @calc_drop(%struct.datarec* %313, %struct.datarec* %315, double %316)
  store double %317, double* %30, align 8
  %318 = load %struct.record*, %struct.record** %27, align 8
  %319 = getelementptr inbounds %struct.record, %struct.record* %318, i32 0, i32 0
  %320 = load %struct.record*, %struct.record** %28, align 8
  %321 = getelementptr inbounds %struct.record, %struct.record* %320, i32 0, i32 0
  %322 = load double, double* %11, align 8
  %323 = call double @calc_info(%struct.datarec* %319, %struct.datarec* %321, double %322)
  store double %323, double* %31, align 8
  %324 = load double, double* %31, align 8
  %325 = fcmp ogt double %324, 0.000000e+00
  br i1 %325, label %326, label %330

326:                                              ; preds = %311
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %29, align 8
  %327 = load double, double* %12, align 8
  %328 = load double, double* %31, align 8
  %329 = fdiv double %327, %328
  store double %329, double* %31, align 8
  br label %330

330:                                              ; preds = %326, %311
  %331 = load i8*, i8** %26, align 8
  %332 = load i32, i32* %10, align 4
  %333 = load double, double* %12, align 8
  %334 = load double, double* %30, align 8
  %335 = load double, double* %31, align 8
  %336 = load i8*, i8** %29, align 8
  %337 = call i32 (i8*, ...) @printf(i8* %331, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %332, double %333, double %334, double %335, i8* %336)
  br label %338

338:                                              ; preds = %330, %302
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %10, align 4
  br label %231

342:                                              ; preds = %231
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8** %34, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8** %35, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** %40, align 8
  %343 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %344 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %343, i32 0, i32 1
  store %struct.record* %344, %struct.record** %36, align 8
  %345 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %346 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %345, i32 0, i32 1
  store %struct.record* %346, %struct.record** %37, align 8
  %347 = load %struct.record*, %struct.record** %36, align 8
  %348 = load %struct.record*, %struct.record** %37, align 8
  %349 = call double @calc_period(%struct.record* %347, %struct.record* %348)
  store double %349, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %350

350:                                              ; preds = %397, %342
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* %7, align 4
  %353 = icmp ult i32 %351, %352
  br i1 %353, label %354, label %400

354:                                              ; preds = %350
  %355 = load %struct.record*, %struct.record** %36, align 8
  %356 = getelementptr inbounds %struct.record, %struct.record* %355, i32 0, i32 1
  %357 = load %struct.datarec*, %struct.datarec** %356, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.datarec, %struct.datarec* %357, i64 %359
  store %struct.datarec* %360, %struct.datarec** %41, align 8
  %361 = load %struct.record*, %struct.record** %37, align 8
  %362 = getelementptr inbounds %struct.record, %struct.record* %361, i32 0, i32 1
  %363 = load %struct.datarec*, %struct.datarec** %362, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.datarec, %struct.datarec* %363, i64 %365
  store %struct.datarec* %366, %struct.datarec** %42, align 8
  %367 = load %struct.datarec*, %struct.datarec** %41, align 8
  %368 = load %struct.datarec*, %struct.datarec** %42, align 8
  %369 = load double, double* %11, align 8
  %370 = call double @calc_pps(%struct.datarec* %367, %struct.datarec* %368, double %369)
  store double %370, double* %12, align 8
  %371 = load %struct.datarec*, %struct.datarec** %41, align 8
  %372 = load %struct.datarec*, %struct.datarec** %42, align 8
  %373 = load double, double* %11, align 8
  %374 = call double @calc_drop(%struct.datarec* %371, %struct.datarec* %372, double %373)
  store double %374, double* %38, align 8
  %375 = load %struct.datarec*, %struct.datarec** %41, align 8
  %376 = load %struct.datarec*, %struct.datarec** %42, align 8
  %377 = load double, double* %11, align 8
  %378 = call double @calc_info(%struct.datarec* %375, %struct.datarec* %376, double %377)
  store double %378, double* %39, align 8
  %379 = load double, double* %39, align 8
  %380 = fcmp ogt double %379, 0.000000e+00
  br i1 %380, label %381, label %382

381:                                              ; preds = %354
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %40, align 8
  br label %382

382:                                              ; preds = %381, %354
  %383 = load double, double* %12, align 8
  %384 = fcmp ogt double %383, 0.000000e+00
  br i1 %384, label %388, label %385

385:                                              ; preds = %382
  %386 = load double, double* %38, align 8
  %387 = fcmp ogt double %386, 0.000000e+00
  br i1 %387, label %388, label %396

388:                                              ; preds = %385, %382
  %389 = load i8*, i8** %34, align 8
  %390 = load i32, i32* %9, align 4
  %391 = load double, double* %12, align 8
  %392 = load double, double* %38, align 8
  %393 = load double, double* %39, align 8
  %394 = load i8*, i8** %40, align 8
  %395 = call i32 (i8*, ...) @printf(i8* %389, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %390, double %391, double %392, double %393, i8* %394)
  br label %396

396:                                              ; preds = %388, %385
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %9, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %9, align 4
  br label %350

400:                                              ; preds = %350
  %401 = load %struct.record*, %struct.record** %36, align 8
  %402 = getelementptr inbounds %struct.record, %struct.record* %401, i32 0, i32 0
  %403 = load %struct.record*, %struct.record** %37, align 8
  %404 = getelementptr inbounds %struct.record, %struct.record* %403, i32 0, i32 0
  %405 = load double, double* %11, align 8
  %406 = call double @calc_pps(%struct.datarec* %402, %struct.datarec* %404, double %405)
  store double %406, double* %12, align 8
  %407 = load %struct.record*, %struct.record** %36, align 8
  %408 = getelementptr inbounds %struct.record, %struct.record* %407, i32 0, i32 0
  %409 = load %struct.record*, %struct.record** %37, align 8
  %410 = getelementptr inbounds %struct.record, %struct.record* %409, i32 0, i32 0
  %411 = load double, double* %11, align 8
  %412 = call double @calc_drop(%struct.datarec* %408, %struct.datarec* %410, double %411)
  store double %412, double* %38, align 8
  %413 = load %struct.record*, %struct.record** %36, align 8
  %414 = getelementptr inbounds %struct.record, %struct.record* %413, i32 0, i32 0
  %415 = load %struct.record*, %struct.record** %37, align 8
  %416 = getelementptr inbounds %struct.record, %struct.record* %415, i32 0, i32 0
  %417 = load double, double* %11, align 8
  %418 = call double @calc_info(%struct.datarec* %414, %struct.datarec* %416, double %417)
  store double %418, double* %39, align 8
  %419 = load double, double* %39, align 8
  %420 = fcmp ogt double %419, 0.000000e+00
  br i1 %420, label %421, label %422

421:                                              ; preds = %400
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8** %40, align 8
  br label %422

422:                                              ; preds = %421, %400
  %423 = load i8*, i8** %35, align 8
  %424 = load double, double* %12, align 8
  %425 = load double, double* %38, align 8
  %426 = load double, double* %39, align 8
  %427 = load i8*, i8** %40, align 8
  %428 = call i32 (i8*, ...) @printf(i8* %423, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %424, double %425, double %426, i8* %427)
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i8** %43, align 8
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i8** %44, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** %50, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** %51, align 8
  %429 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %430 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %429, i32 0, i32 0
  store %struct.record* %430, %struct.record** %45, align 8
  %431 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %432 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %431, i32 0, i32 0
  store %struct.record* %432, %struct.record** %46, align 8
  %433 = load %struct.record*, %struct.record** %45, align 8
  %434 = load %struct.record*, %struct.record** %46, align 8
  %435 = call double @calc_period(%struct.record* %433, %struct.record* %434)
  store double %435, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %436

436:                                              ; preds = %497, %422
  %437 = load i32, i32* %9, align 4
  %438 = load i32, i32* %7, align 4
  %439 = icmp ult i32 %437, %438
  br i1 %439, label %440, label %500

440:                                              ; preds = %436
  %441 = load %struct.record*, %struct.record** %45, align 8
  %442 = getelementptr inbounds %struct.record, %struct.record* %441, i32 0, i32 1
  %443 = load %struct.datarec*, %struct.datarec** %442, align 8
  %444 = load i32, i32* %9, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.datarec, %struct.datarec* %443, i64 %445
  store %struct.datarec* %446, %struct.datarec** %52, align 8
  %447 = load %struct.record*, %struct.record** %46, align 8
  %448 = getelementptr inbounds %struct.record, %struct.record* %447, i32 0, i32 1
  %449 = load %struct.datarec*, %struct.datarec** %448, align 8
  %450 = load i32, i32* %9, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.datarec, %struct.datarec* %449, i64 %451
  store %struct.datarec* %452, %struct.datarec** %53, align 8
  %453 = load %struct.datarec*, %struct.datarec** %52, align 8
  %454 = load %struct.datarec*, %struct.datarec** %53, align 8
  %455 = load double, double* %11, align 8
  %456 = call double @calc_pps(%struct.datarec* %453, %struct.datarec* %454, double %455)
  store double %456, double* %12, align 8
  %457 = load %struct.datarec*, %struct.datarec** %52, align 8
  %458 = load %struct.datarec*, %struct.datarec** %53, align 8
  %459 = load double, double* %11, align 8
  %460 = call double @calc_drop(%struct.datarec* %457, %struct.datarec* %458, double %459)
  store double %460, double* %47, align 8
  %461 = load %struct.datarec*, %struct.datarec** %52, align 8
  %462 = load %struct.datarec*, %struct.datarec** %53, align 8
  %463 = load double, double* %11, align 8
  %464 = call double @calc_info(%struct.datarec* %461, %struct.datarec* %462, double %463)
  store double %464, double* %48, align 8
  %465 = load %struct.datarec*, %struct.datarec** %52, align 8
  %466 = load %struct.datarec*, %struct.datarec** %53, align 8
  %467 = load double, double* %11, align 8
  %468 = call double @calc_err(%struct.datarec* %465, %struct.datarec* %466, double %467)
  store double %468, double* %49, align 8
  %469 = load double, double* %48, align 8
  %470 = fcmp ogt double %469, 0.000000e+00
  br i1 %470, label %471, label %477

471:                                              ; preds = %440
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %50, align 8
  %472 = load double, double* %12, align 8
  %473 = load double, double* %47, align 8
  %474 = fadd double %472, %473
  %475 = load double, double* %48, align 8
  %476 = fdiv double %474, %475
  store double %476, double* %48, align 8
  br label %477

477:                                              ; preds = %471, %440
  %478 = load double, double* %49, align 8
  %479 = fcmp ogt double %478, 0.000000e+00
  br i1 %479, label %480, label %481

480:                                              ; preds = %477
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %51, align 8
  br label %481

481:                                              ; preds = %480, %477
  %482 = load double, double* %12, align 8
  %483 = fcmp ogt double %482, 0.000000e+00
  br i1 %483, label %487, label %484

484:                                              ; preds = %481
  %485 = load double, double* %47, align 8
  %486 = fcmp ogt double %485, 0.000000e+00
  br i1 %486, label %487, label %496

487:                                              ; preds = %484, %481
  %488 = load i8*, i8** %43, align 8
  %489 = load i32, i32* %9, align 4
  %490 = load double, double* %12, align 8
  %491 = load double, double* %47, align 8
  %492 = load double, double* %48, align 8
  %493 = load i8*, i8** %50, align 8
  %494 = load i8*, i8** %51, align 8
  %495 = call i32 (i8*, ...) @printf(i8* %488, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %489, double %490, double %491, double %492, i8* %493, i8* %494)
  br label %496

496:                                              ; preds = %487, %484
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %9, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %9, align 4
  br label %436

500:                                              ; preds = %436
  %501 = load %struct.record*, %struct.record** %45, align 8
  %502 = getelementptr inbounds %struct.record, %struct.record* %501, i32 0, i32 0
  %503 = load %struct.record*, %struct.record** %46, align 8
  %504 = getelementptr inbounds %struct.record, %struct.record* %503, i32 0, i32 0
  %505 = load double, double* %11, align 8
  %506 = call double @calc_pps(%struct.datarec* %502, %struct.datarec* %504, double %505)
  store double %506, double* %12, align 8
  %507 = load %struct.record*, %struct.record** %45, align 8
  %508 = getelementptr inbounds %struct.record, %struct.record* %507, i32 0, i32 0
  %509 = load %struct.record*, %struct.record** %46, align 8
  %510 = getelementptr inbounds %struct.record, %struct.record* %509, i32 0, i32 0
  %511 = load double, double* %11, align 8
  %512 = call double @calc_drop(%struct.datarec* %508, %struct.datarec* %510, double %511)
  store double %512, double* %47, align 8
  %513 = load %struct.record*, %struct.record** %45, align 8
  %514 = getelementptr inbounds %struct.record, %struct.record* %513, i32 0, i32 0
  %515 = load %struct.record*, %struct.record** %46, align 8
  %516 = getelementptr inbounds %struct.record, %struct.record* %515, i32 0, i32 0
  %517 = load double, double* %11, align 8
  %518 = call double @calc_info(%struct.datarec* %514, %struct.datarec* %516, double %517)
  store double %518, double* %48, align 8
  %519 = load %struct.record*, %struct.record** %45, align 8
  %520 = getelementptr inbounds %struct.record, %struct.record* %519, i32 0, i32 0
  %521 = load %struct.record*, %struct.record** %46, align 8
  %522 = getelementptr inbounds %struct.record, %struct.record* %521, i32 0, i32 0
  %523 = load double, double* %11, align 8
  %524 = call double @calc_err(%struct.datarec* %520, %struct.datarec* %522, double %523)
  store double %524, double* %49, align 8
  %525 = load double, double* %48, align 8
  %526 = fcmp ogt double %525, 0.000000e+00
  br i1 %526, label %527, label %533

527:                                              ; preds = %500
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %50, align 8
  %528 = load double, double* %12, align 8
  %529 = load double, double* %47, align 8
  %530 = fadd double %528, %529
  %531 = load double, double* %48, align 8
  %532 = fdiv double %530, %531
  store double %532, double* %48, align 8
  br label %533

533:                                              ; preds = %527, %500
  %534 = load double, double* %49, align 8
  %535 = fcmp ogt double %534, 0.000000e+00
  br i1 %535, label %536, label %537

536:                                              ; preds = %533
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %51, align 8
  br label %537

537:                                              ; preds = %536, %533
  %538 = load i8*, i8** %44, align 8
  %539 = load double, double* %12, align 8
  %540 = load double, double* %47, align 8
  %541 = load double, double* %48, align 8
  %542 = load i8*, i8** %50, align 8
  %543 = load i8*, i8** %51, align 8
  %544 = call i32 (i8*, ...) @printf(i8* %538, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %539, double %540, double %541, i8* %542, i8* %543)
  %545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bpf_num_possible_cpus(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local double @calc_period_u64(%struct.record_u64*, %struct.record_u64*) #1

declare dso_local double @calc_pps_u64(%struct.u64rec*, %struct.u64rec*, double) #1

declare dso_local i32 @err2str(i32) #1

declare dso_local i32 @action2str(i32) #1

declare dso_local double @calc_period(%struct.record*, %struct.record*) #1

declare dso_local double @calc_pps(%struct.datarec*, %struct.datarec*, double) #1

declare dso_local double @calc_drop(%struct.datarec*, %struct.datarec*, double) #1

declare dso_local double @calc_info(%struct.datarec*, %struct.datarec*, double) #1

declare dso_local double @calc_err(%struct.datarec*, %struct.datarec*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

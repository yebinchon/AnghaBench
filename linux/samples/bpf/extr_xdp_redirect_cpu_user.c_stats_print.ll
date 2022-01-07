; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_stats_print.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_stats_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.record, %struct.record, %struct.record, %struct.record*, %struct.record }
%struct.record = type { %struct.datarec, %struct.datarec* }
%struct.datarec = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Running XDP/eBPF prog_name:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%-15s %-7s %-14s %-11s %-9s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"XDP-cpumap\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CPU:to\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"drop-pps\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"extra-info\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"%-15s %-7d %'-14.0f %'-11.0f %'-10.0f %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%-15s %-7s %'-14.0f %'-11.0f\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"cpu-dest/err\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"XDP-RX\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@MAX_CPUS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [46 x i8] c"%-15s %3d:%-3d %'-14.0f %'-11.0f %'-10.2f %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"%-15s %3s:%-3d %'-14.0f %'-11.0f %'-10.2f %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"bulk-average\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"cpumap-enqueue\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%-15s %-7s %'-14.0f %'-11.0f %'-10.0f %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"cpumap_kthread\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sched-sum\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"%-15s %-7d %'-14.0f %'-11.0f\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"redirect_err\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"xdp_exception\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record*, %struct.stats_record*, i8*)* @stats_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_print(%struct.stats_record* %0, %struct.stats_record* %1, i8* %2) #0 {
  %4 = alloca %struct.stats_record*, align 8
  %5 = alloca %struct.stats_record*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.record*, align 8
  %12 = alloca %struct.record*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.datarec*, align 8
  %20 = alloca %struct.datarec*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.datarec*, align 8
  %25 = alloca %struct.datarec*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.datarec*, align 8
  %30 = alloca %struct.datarec*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.datarec*, align 8
  %34 = alloca %struct.datarec*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca %struct.datarec*, align 8
  %38 = alloca %struct.datarec*, align 8
  store %struct.stats_record* %0, %struct.stats_record** %4, align 8
  store %struct.stats_record* %1, %struct.stats_record** %5, align 8
  store i8* %2, i8** %6, align 8
  %39 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %39, i32* %7, align 4
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %18, align 8
  %43 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %44 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %43, i32 0, i32 4
  store %struct.record* %44, %struct.record** %11, align 8
  %45 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %46 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %45, i32 0, i32 4
  store %struct.record* %46, %struct.record** %12, align 8
  %47 = load %struct.record*, %struct.record** %11, align 8
  %48 = load %struct.record*, %struct.record** %12, align 8
  %49 = call double @calc_period(%struct.record* %47, %struct.record* %48)
  store double %49, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %94, %3
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %50
  %55 = load %struct.record*, %struct.record** %11, align 8
  %56 = getelementptr inbounds %struct.record, %struct.record* %55, i32 0, i32 1
  %57 = load %struct.datarec*, %struct.datarec** %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.datarec, %struct.datarec* %57, i64 %59
  store %struct.datarec* %60, %struct.datarec** %19, align 8
  %61 = load %struct.record*, %struct.record** %12, align 8
  %62 = getelementptr inbounds %struct.record, %struct.record* %61, i32 0, i32 1
  %63 = load %struct.datarec*, %struct.datarec** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.datarec, %struct.datarec* %63, i64 %65
  store %struct.datarec* %66, %struct.datarec** %20, align 8
  %67 = load %struct.datarec*, %struct.datarec** %19, align 8
  %68 = load %struct.datarec*, %struct.datarec** %20, align 8
  %69 = load double, double* %14, align 8
  %70 = call double @calc_pps(%struct.datarec* %67, %struct.datarec* %68, double %69)
  store double %70, double* %8, align 8
  %71 = load %struct.datarec*, %struct.datarec** %19, align 8
  %72 = load %struct.datarec*, %struct.datarec** %20, align 8
  %73 = load double, double* %14, align 8
  %74 = call double @calc_drop_pps(%struct.datarec* %71, %struct.datarec* %72, double %73)
  store double %74, double* %9, align 8
  %75 = load %struct.datarec*, %struct.datarec** %19, align 8
  %76 = load %struct.datarec*, %struct.datarec** %20, align 8
  %77 = load double, double* %14, align 8
  %78 = call double @calc_errs_pps(%struct.datarec* %75, %struct.datarec* %76, double %77)
  store double %78, double* %10, align 8
  %79 = load double, double* %10, align 8
  %80 = fcmp ogt double %79, 0.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %54
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %18, align 8
  br label %82

82:                                               ; preds = %81, %54
  %83 = load double, double* %8, align 8
  %84 = fcmp ogt double %83, 0.000000e+00
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i8*, i8** %16, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load double, double* %8, align 8
  %89 = load double, double* %9, align 8
  %90 = load double, double* %10, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = call i32 (i8*, ...) @printf(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %87, double %88, double %89, double %90, i8* %91)
  br label %93

93:                                               ; preds = %85, %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %50

97:                                               ; preds = %50
  %98 = load %struct.record*, %struct.record** %11, align 8
  %99 = getelementptr inbounds %struct.record, %struct.record* %98, i32 0, i32 0
  %100 = load %struct.record*, %struct.record** %12, align 8
  %101 = getelementptr inbounds %struct.record, %struct.record* %100, i32 0, i32 0
  %102 = load double, double* %14, align 8
  %103 = call double @calc_pps(%struct.datarec* %99, %struct.datarec* %101, double %102)
  store double %103, double* %8, align 8
  %104 = load %struct.record*, %struct.record** %11, align 8
  %105 = getelementptr inbounds %struct.record, %struct.record* %104, i32 0, i32 0
  %106 = load %struct.record*, %struct.record** %12, align 8
  %107 = getelementptr inbounds %struct.record, %struct.record* %106, i32 0, i32 0
  %108 = load double, double* %14, align 8
  %109 = call double @calc_drop_pps(%struct.datarec* %105, %struct.datarec* %107, double %108)
  store double %109, double* %9, align 8
  %110 = load %struct.record*, %struct.record** %11, align 8
  %111 = getelementptr inbounds %struct.record, %struct.record* %110, i32 0, i32 0
  %112 = load %struct.record*, %struct.record** %12, align 8
  %113 = getelementptr inbounds %struct.record, %struct.record* %112, i32 0, i32 0
  %114 = load double, double* %14, align 8
  %115 = call double @calc_errs_pps(%struct.datarec* %111, %struct.datarec* %113, double %114)
  store double %115, double* %10, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = load double, double* %8, align 8
  %118 = load double, double* %9, align 8
  %119 = call i32 (i8*, ...) @printf(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), double %117, double %118)
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %228, %97
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @MAX_CPUS, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %231

124:                                              ; preds = %120
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8** %22, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %23, align 8
  %125 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %126 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %125, i32 0, i32 3
  %127 = load %struct.record*, %struct.record** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.record, %struct.record* %127, i64 %129
  store %struct.record* %130, %struct.record** %11, align 8
  %131 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %132 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %131, i32 0, i32 3
  %133 = load %struct.record*, %struct.record** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.record, %struct.record* %133, i64 %135
  store %struct.record* %136, %struct.record** %12, align 8
  %137 = load %struct.record*, %struct.record** %11, align 8
  %138 = load %struct.record*, %struct.record** %12, align 8
  %139 = call double @calc_period(%struct.record* %137, %struct.record* %138)
  store double %139, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %188, %124
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %191

144:                                              ; preds = %140
  %145 = load %struct.record*, %struct.record** %11, align 8
  %146 = getelementptr inbounds %struct.record, %struct.record* %145, i32 0, i32 1
  %147 = load %struct.datarec*, %struct.datarec** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.datarec, %struct.datarec* %147, i64 %149
  store %struct.datarec* %150, %struct.datarec** %24, align 8
  %151 = load %struct.record*, %struct.record** %12, align 8
  %152 = getelementptr inbounds %struct.record, %struct.record* %151, i32 0, i32 1
  %153 = load %struct.datarec*, %struct.datarec** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.datarec, %struct.datarec* %153, i64 %155
  store %struct.datarec* %156, %struct.datarec** %25, align 8
  %157 = load %struct.datarec*, %struct.datarec** %24, align 8
  %158 = load %struct.datarec*, %struct.datarec** %25, align 8
  %159 = load double, double* %14, align 8
  %160 = call double @calc_pps(%struct.datarec* %157, %struct.datarec* %158, double %159)
  store double %160, double* %8, align 8
  %161 = load %struct.datarec*, %struct.datarec** %24, align 8
  %162 = load %struct.datarec*, %struct.datarec** %25, align 8
  %163 = load double, double* %14, align 8
  %164 = call double @calc_drop_pps(%struct.datarec* %161, %struct.datarec* %162, double %163)
  store double %164, double* %9, align 8
  %165 = load %struct.datarec*, %struct.datarec** %24, align 8
  %166 = load %struct.datarec*, %struct.datarec** %25, align 8
  %167 = load double, double* %14, align 8
  %168 = call double @calc_errs_pps(%struct.datarec* %165, %struct.datarec* %166, double %167)
  store double %168, double* %10, align 8
  %169 = load double, double* %10, align 8
  %170 = fcmp ogt double %169, 0.000000e+00
  br i1 %170, label %171, label %175

171:                                              ; preds = %144
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %23, align 8
  %172 = load double, double* %8, align 8
  %173 = load double, double* %10, align 8
  %174 = fdiv double %172, %173
  store double %174, double* %10, align 8
  br label %175

175:                                              ; preds = %171, %144
  %176 = load double, double* %8, align 8
  %177 = fcmp ogt double %176, 0.000000e+00
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i8*, i8** %21, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load double, double* %8, align 8
  %183 = load double, double* %9, align 8
  %184 = load double, double* %10, align 8
  %185 = load i8*, i8** %23, align 8
  %186 = call i32 (i8*, ...) @printf(i8* %179, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %180, i32 %181, double %182, double %183, double %184, i8* %185)
  br label %187

187:                                              ; preds = %178, %175
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  br label %140

191:                                              ; preds = %140
  %192 = load %struct.record*, %struct.record** %11, align 8
  %193 = getelementptr inbounds %struct.record, %struct.record* %192, i32 0, i32 0
  %194 = load %struct.record*, %struct.record** %12, align 8
  %195 = getelementptr inbounds %struct.record, %struct.record* %194, i32 0, i32 0
  %196 = load double, double* %14, align 8
  %197 = call double @calc_pps(%struct.datarec* %193, %struct.datarec* %195, double %196)
  store double %197, double* %8, align 8
  %198 = load double, double* %8, align 8
  %199 = fcmp ogt double %198, 0.000000e+00
  br i1 %199, label %200, label %227

200:                                              ; preds = %191
  %201 = load %struct.record*, %struct.record** %11, align 8
  %202 = getelementptr inbounds %struct.record, %struct.record* %201, i32 0, i32 0
  %203 = load %struct.record*, %struct.record** %12, align 8
  %204 = getelementptr inbounds %struct.record, %struct.record* %203, i32 0, i32 0
  %205 = load double, double* %14, align 8
  %206 = call double @calc_drop_pps(%struct.datarec* %202, %struct.datarec* %204, double %205)
  store double %206, double* %9, align 8
  %207 = load %struct.record*, %struct.record** %11, align 8
  %208 = getelementptr inbounds %struct.record, %struct.record* %207, i32 0, i32 0
  %209 = load %struct.record*, %struct.record** %12, align 8
  %210 = getelementptr inbounds %struct.record, %struct.record* %209, i32 0, i32 0
  %211 = load double, double* %14, align 8
  %212 = call double @calc_errs_pps(%struct.datarec* %208, %struct.datarec* %210, double %211)
  store double %212, double* %10, align 8
  %213 = load double, double* %10, align 8
  %214 = fcmp ogt double %213, 0.000000e+00
  br i1 %214, label %215, label %219

215:                                              ; preds = %200
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %23, align 8
  %216 = load double, double* %8, align 8
  %217 = load double, double* %10, align 8
  %218 = fdiv double %216, %217
  store double %218, double* %10, align 8
  br label %219

219:                                              ; preds = %215, %200
  %220 = load i8*, i8** %22, align 8
  %221 = load i32, i32* %13, align 4
  %222 = load double, double* %8, align 8
  %223 = load double, double* %9, align 8
  %224 = load double, double* %10, align 8
  %225 = load i8*, i8** %23, align 8
  %226 = call i32 (i8*, ...) @printf(i8* %220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %221, double %222, double %223, double %224, i8* %225)
  br label %227

227:                                              ; preds = %219, %191
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  br label %120

231:                                              ; preds = %120
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8** %26, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8** %27, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %28, align 8
  %232 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %233 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %232, i32 0, i32 2
  store %struct.record* %233, %struct.record** %11, align 8
  %234 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %235 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %234, i32 0, i32 2
  store %struct.record* %235, %struct.record** %12, align 8
  %236 = load %struct.record*, %struct.record** %11, align 8
  %237 = load %struct.record*, %struct.record** %12, align 8
  %238 = call double @calc_period(%struct.record* %236, %struct.record* %237)
  store double %238, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %239

239:                                              ; preds = %283, %231
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ult i32 %240, %241
  br i1 %242, label %243, label %286

243:                                              ; preds = %239
  %244 = load %struct.record*, %struct.record** %11, align 8
  %245 = getelementptr inbounds %struct.record, %struct.record* %244, i32 0, i32 1
  %246 = load %struct.datarec*, %struct.datarec** %245, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.datarec, %struct.datarec* %246, i64 %248
  store %struct.datarec* %249, %struct.datarec** %29, align 8
  %250 = load %struct.record*, %struct.record** %12, align 8
  %251 = getelementptr inbounds %struct.record, %struct.record* %250, i32 0, i32 1
  %252 = load %struct.datarec*, %struct.datarec** %251, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.datarec, %struct.datarec* %252, i64 %254
  store %struct.datarec* %255, %struct.datarec** %30, align 8
  %256 = load %struct.datarec*, %struct.datarec** %29, align 8
  %257 = load %struct.datarec*, %struct.datarec** %30, align 8
  %258 = load double, double* %14, align 8
  %259 = call double @calc_pps(%struct.datarec* %256, %struct.datarec* %257, double %258)
  store double %259, double* %8, align 8
  %260 = load %struct.datarec*, %struct.datarec** %29, align 8
  %261 = load %struct.datarec*, %struct.datarec** %30, align 8
  %262 = load double, double* %14, align 8
  %263 = call double @calc_drop_pps(%struct.datarec* %260, %struct.datarec* %261, double %262)
  store double %263, double* %9, align 8
  %264 = load %struct.datarec*, %struct.datarec** %29, align 8
  %265 = load %struct.datarec*, %struct.datarec** %30, align 8
  %266 = load double, double* %14, align 8
  %267 = call double @calc_errs_pps(%struct.datarec* %264, %struct.datarec* %265, double %266)
  store double %267, double* %10, align 8
  %268 = load double, double* %10, align 8
  %269 = fcmp ogt double %268, 0.000000e+00
  br i1 %269, label %270, label %271

270:                                              ; preds = %243
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %28, align 8
  br label %271

271:                                              ; preds = %270, %243
  %272 = load double, double* %8, align 8
  %273 = fcmp ogt double %272, 0.000000e+00
  br i1 %273, label %274, label %282

274:                                              ; preds = %271
  %275 = load i8*, i8** %26, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load double, double* %8, align 8
  %278 = load double, double* %9, align 8
  %279 = load double, double* %10, align 8
  %280 = load i8*, i8** %28, align 8
  %281 = call i32 (i8*, ...) @printf(i8* %275, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %276, double %277, double %278, double %279, i8* %280)
  br label %282

282:                                              ; preds = %274, %271
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %15, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %15, align 4
  br label %239

286:                                              ; preds = %239
  %287 = load %struct.record*, %struct.record** %11, align 8
  %288 = getelementptr inbounds %struct.record, %struct.record* %287, i32 0, i32 0
  %289 = load %struct.record*, %struct.record** %12, align 8
  %290 = getelementptr inbounds %struct.record, %struct.record* %289, i32 0, i32 0
  %291 = load double, double* %14, align 8
  %292 = call double @calc_pps(%struct.datarec* %288, %struct.datarec* %290, double %291)
  store double %292, double* %8, align 8
  %293 = load %struct.record*, %struct.record** %11, align 8
  %294 = getelementptr inbounds %struct.record, %struct.record* %293, i32 0, i32 0
  %295 = load %struct.record*, %struct.record** %12, align 8
  %296 = getelementptr inbounds %struct.record, %struct.record* %295, i32 0, i32 0
  %297 = load double, double* %14, align 8
  %298 = call double @calc_drop_pps(%struct.datarec* %294, %struct.datarec* %296, double %297)
  store double %298, double* %9, align 8
  %299 = load %struct.record*, %struct.record** %11, align 8
  %300 = getelementptr inbounds %struct.record, %struct.record* %299, i32 0, i32 0
  %301 = load %struct.record*, %struct.record** %12, align 8
  %302 = getelementptr inbounds %struct.record, %struct.record* %301, i32 0, i32 0
  %303 = load double, double* %14, align 8
  %304 = call double @calc_errs_pps(%struct.datarec* %300, %struct.datarec* %302, double %303)
  store double %304, double* %10, align 8
  %305 = load double, double* %10, align 8
  %306 = fcmp ogt double %305, 0.000000e+00
  br i1 %306, label %307, label %308

307:                                              ; preds = %286
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8** %28, align 8
  br label %308

308:                                              ; preds = %307, %286
  %309 = load i8*, i8** %27, align 8
  %310 = load double, double* %8, align 8
  %311 = load double, double* %9, align 8
  %312 = load double, double* %10, align 8
  %313 = load i8*, i8** %28, align 8
  %314 = call i32 (i8*, ...) @printf(i8* %309, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), double %310, double %311, double %312, i8* %313)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i8** %31, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8** %32, align 8
  %315 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %316 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %315, i32 0, i32 1
  store %struct.record* %316, %struct.record** %11, align 8
  %317 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %318 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %317, i32 0, i32 1
  store %struct.record* %318, %struct.record** %12, align 8
  %319 = load %struct.record*, %struct.record** %11, align 8
  %320 = load %struct.record*, %struct.record** %12, align 8
  %321 = call double @calc_period(%struct.record* %319, %struct.record* %320)
  store double %321, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %322

322:                                              ; preds = %356, %308
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp ult i32 %323, %324
  br i1 %325, label %326, label %359

326:                                              ; preds = %322
  %327 = load %struct.record*, %struct.record** %11, align 8
  %328 = getelementptr inbounds %struct.record, %struct.record* %327, i32 0, i32 1
  %329 = load %struct.datarec*, %struct.datarec** %328, align 8
  %330 = load i32, i32* %15, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.datarec, %struct.datarec* %329, i64 %331
  store %struct.datarec* %332, %struct.datarec** %33, align 8
  %333 = load %struct.record*, %struct.record** %12, align 8
  %334 = getelementptr inbounds %struct.record, %struct.record* %333, i32 0, i32 1
  %335 = load %struct.datarec*, %struct.datarec** %334, align 8
  %336 = load i32, i32* %15, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.datarec, %struct.datarec* %335, i64 %337
  store %struct.datarec* %338, %struct.datarec** %34, align 8
  %339 = load %struct.datarec*, %struct.datarec** %33, align 8
  %340 = load %struct.datarec*, %struct.datarec** %34, align 8
  %341 = load double, double* %14, align 8
  %342 = call double @calc_pps(%struct.datarec* %339, %struct.datarec* %340, double %341)
  store double %342, double* %8, align 8
  %343 = load %struct.datarec*, %struct.datarec** %33, align 8
  %344 = load %struct.datarec*, %struct.datarec** %34, align 8
  %345 = load double, double* %14, align 8
  %346 = call double @calc_drop_pps(%struct.datarec* %343, %struct.datarec* %344, double %345)
  store double %346, double* %9, align 8
  %347 = load double, double* %8, align 8
  %348 = fcmp ogt double %347, 0.000000e+00
  br i1 %348, label %349, label %355

349:                                              ; preds = %326
  %350 = load i8*, i8** %31, align 8
  %351 = load i32, i32* %15, align 4
  %352 = load double, double* %8, align 8
  %353 = load double, double* %9, align 8
  %354 = call i32 (i8*, ...) @printf(i8* %350, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %351, double %352, double %353)
  br label %355

355:                                              ; preds = %349, %326
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %15, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %15, align 4
  br label %322

359:                                              ; preds = %322
  %360 = load %struct.record*, %struct.record** %11, align 8
  %361 = getelementptr inbounds %struct.record, %struct.record* %360, i32 0, i32 0
  %362 = load %struct.record*, %struct.record** %12, align 8
  %363 = getelementptr inbounds %struct.record, %struct.record* %362, i32 0, i32 0
  %364 = load double, double* %14, align 8
  %365 = call double @calc_pps(%struct.datarec* %361, %struct.datarec* %363, double %364)
  store double %365, double* %8, align 8
  %366 = load %struct.record*, %struct.record** %11, align 8
  %367 = getelementptr inbounds %struct.record, %struct.record* %366, i32 0, i32 0
  %368 = load %struct.record*, %struct.record** %12, align 8
  %369 = getelementptr inbounds %struct.record, %struct.record* %368, i32 0, i32 0
  %370 = load double, double* %14, align 8
  %371 = call double @calc_drop_pps(%struct.datarec* %367, %struct.datarec* %369, double %370)
  store double %371, double* %9, align 8
  %372 = load i8*, i8** %32, align 8
  %373 = load double, double* %8, align 8
  %374 = load double, double* %9, align 8
  %375 = call i32 (i8*, ...) @printf(i8* %372, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), double %373, double %374)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i8** %35, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8** %36, align 8
  %376 = load %struct.stats_record*, %struct.stats_record** %4, align 8
  %377 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %376, i32 0, i32 0
  store %struct.record* %377, %struct.record** %11, align 8
  %378 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %379 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %378, i32 0, i32 0
  store %struct.record* %379, %struct.record** %12, align 8
  %380 = load %struct.record*, %struct.record** %11, align 8
  %381 = load %struct.record*, %struct.record** %12, align 8
  %382 = call double @calc_period(%struct.record* %380, %struct.record* %381)
  store double %382, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %383

383:                                              ; preds = %417, %359
  %384 = load i32, i32* %15, align 4
  %385 = load i32, i32* %7, align 4
  %386 = icmp ult i32 %384, %385
  br i1 %386, label %387, label %420

387:                                              ; preds = %383
  %388 = load %struct.record*, %struct.record** %11, align 8
  %389 = getelementptr inbounds %struct.record, %struct.record* %388, i32 0, i32 1
  %390 = load %struct.datarec*, %struct.datarec** %389, align 8
  %391 = load i32, i32* %15, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.datarec, %struct.datarec* %390, i64 %392
  store %struct.datarec* %393, %struct.datarec** %37, align 8
  %394 = load %struct.record*, %struct.record** %12, align 8
  %395 = getelementptr inbounds %struct.record, %struct.record* %394, i32 0, i32 1
  %396 = load %struct.datarec*, %struct.datarec** %395, align 8
  %397 = load i32, i32* %15, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.datarec, %struct.datarec* %396, i64 %398
  store %struct.datarec* %399, %struct.datarec** %38, align 8
  %400 = load %struct.datarec*, %struct.datarec** %37, align 8
  %401 = load %struct.datarec*, %struct.datarec** %38, align 8
  %402 = load double, double* %14, align 8
  %403 = call double @calc_pps(%struct.datarec* %400, %struct.datarec* %401, double %402)
  store double %403, double* %8, align 8
  %404 = load %struct.datarec*, %struct.datarec** %37, align 8
  %405 = load %struct.datarec*, %struct.datarec** %38, align 8
  %406 = load double, double* %14, align 8
  %407 = call double @calc_drop_pps(%struct.datarec* %404, %struct.datarec* %405, double %406)
  store double %407, double* %9, align 8
  %408 = load double, double* %8, align 8
  %409 = fcmp ogt double %408, 0.000000e+00
  br i1 %409, label %410, label %416

410:                                              ; preds = %387
  %411 = load i8*, i8** %35, align 8
  %412 = load i32, i32* %15, align 4
  %413 = load double, double* %8, align 8
  %414 = load double, double* %9, align 8
  %415 = call i32 (i8*, ...) @printf(i8* %411, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %412, double %413, double %414)
  br label %416

416:                                              ; preds = %410, %387
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %15, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %15, align 4
  br label %383

420:                                              ; preds = %383
  %421 = load %struct.record*, %struct.record** %11, align 8
  %422 = getelementptr inbounds %struct.record, %struct.record* %421, i32 0, i32 0
  %423 = load %struct.record*, %struct.record** %12, align 8
  %424 = getelementptr inbounds %struct.record, %struct.record* %423, i32 0, i32 0
  %425 = load double, double* %14, align 8
  %426 = call double @calc_pps(%struct.datarec* %422, %struct.datarec* %424, double %425)
  store double %426, double* %8, align 8
  %427 = load %struct.record*, %struct.record** %11, align 8
  %428 = getelementptr inbounds %struct.record, %struct.record* %427, i32 0, i32 0
  %429 = load %struct.record*, %struct.record** %12, align 8
  %430 = getelementptr inbounds %struct.record, %struct.record* %429, i32 0, i32 0
  %431 = load double, double* %14, align 8
  %432 = call double @calc_drop_pps(%struct.datarec* %428, %struct.datarec* %430, double %431)
  store double %432, double* %9, align 8
  %433 = load i8*, i8** %36, align 8
  %434 = load double, double* %8, align 8
  %435 = load double, double* %9, align 8
  %436 = call i32 (i8*, ...) @printf(i8* %433, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), double %434, double %435)
  %437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %438 = load i32, i32* @stdout, align 4
  %439 = call i32 @fflush(i32 %438)
  ret void
}

declare dso_local i32 @bpf_num_possible_cpus(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local double @calc_period(%struct.record*, %struct.record*) #1

declare dso_local double @calc_pps(%struct.datarec*, %struct.datarec*, double) #1

declare dso_local double @calc_drop_pps(%struct.datarec*, %struct.datarec*, double) #1

declare dso_local double @calc_errs_pps(%struct.datarec*, %struct.datarec*, double) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

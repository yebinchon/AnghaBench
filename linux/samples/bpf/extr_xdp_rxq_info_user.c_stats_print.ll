; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_stats_print.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_stats_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.record*, %struct.record }
%struct.record = type { %struct.datarec, %struct.datarec* }
%struct.datarec = type { i32 }
%struct.TYPE_2__ = type { i32 }

@rx_queue_index_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"\0ARunning XDP on dev:%s (ifindex:%d) action:%s options:%s\0A\00", align 1
@ifname = common dso_local global i8* null, align 8
@ifindex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%-15s %-7d %'-11.0f %'-10.0f %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%-15s %-7s %'-11.0f\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%-15s %-7s %-11s %-11s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"XDP stats\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"issue-pps\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"invalid-ifindex\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"XDP-RX CPU\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\0A%-15s %-7s %-11s %-11s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"RXQ stats\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"RXQ:CPU\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"%-15s %3d:%-3d %'-11.0f %'-10.0f %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"%-15s %3d:%-3s %'-11.0f\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"map-overflow-RXQ\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"rx_queue_index\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record*, %struct.stats_record*, i32, i32)* @stats_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_print(%struct.stats_record* %0, %struct.stats_record* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stats_record*, align 8
  %6 = alloca %struct.stats_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.record*, align 8
  %14 = alloca %struct.record*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.datarec*, align 8
  %22 = alloca %struct.datarec*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.datarec*, align 8
  %28 = alloca %struct.datarec*, align 8
  store %struct.stats_record* %0, %struct.stats_record** %5, align 8
  store %struct.stats_record* %1, %struct.stats_record** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = load i32, i32* @rx_queue_index_map, align 4
  %30 = call %struct.TYPE_2__* @bpf_map__def(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %33, i32* %10, align 4
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %34 = load i8*, i8** @ifname, align 8
  %35 = load i32, i32* @ifindex, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @action2str(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @options2str(i32 %38)
  %40 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35, i8* %37, i8* %39)
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %41 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %42 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %43 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %42, i32 0, i32 1
  store %struct.record* %43, %struct.record** %13, align 8
  %44 = load %struct.stats_record*, %struct.stats_record** %6, align 8
  %45 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %44, i32 0, i32 1
  store %struct.record* %45, %struct.record** %14, align 8
  %46 = load %struct.record*, %struct.record** %13, align 8
  %47 = load %struct.record*, %struct.record** %14, align 8
  %48 = call double @calc_period(%struct.record* %46, %struct.record* %47)
  store double %48, double* %15, align 8
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %88, %4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = load %struct.record*, %struct.record** %13, align 8
  %55 = getelementptr inbounds %struct.record, %struct.record* %54, i32 0, i32 1
  %56 = load %struct.datarec*, %struct.datarec** %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.datarec, %struct.datarec* %56, i64 %58
  store %struct.datarec* %59, %struct.datarec** %21, align 8
  %60 = load %struct.record*, %struct.record** %14, align 8
  %61 = getelementptr inbounds %struct.record, %struct.record* %60, i32 0, i32 1
  %62 = load %struct.datarec*, %struct.datarec** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.datarec, %struct.datarec* %62, i64 %64
  store %struct.datarec* %65, %struct.datarec** %22, align 8
  %66 = load %struct.datarec*, %struct.datarec** %21, align 8
  %67 = load %struct.datarec*, %struct.datarec** %22, align 8
  %68 = load double, double* %15, align 8
  %69 = call double @calc_pps(%struct.datarec* %66, %struct.datarec* %67, double %68)
  store double %69, double* %11, align 8
  %70 = load %struct.datarec*, %struct.datarec** %21, align 8
  %71 = load %struct.datarec*, %struct.datarec** %22, align 8
  %72 = load double, double* %15, align 8
  %73 = call double @calc_errs_pps(%struct.datarec* %70, %struct.datarec* %71, double %72)
  store double %73, double* %12, align 8
  %74 = load double, double* %12, align 8
  %75 = fcmp ogt double %74, 0.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %53
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  br label %77

77:                                               ; preds = %76, %53
  %78 = load double, double* %11, align 8
  %79 = fcmp ogt double %78, 0.000000e+00
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i8*, i8** %18, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load double, double* %11, align 8
  %84 = load double, double* %12, align 8
  %85 = load i8*, i8** %20, align 8
  %86 = call i32 (i8*, i8*, ...) @printf(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %82, double %83, double %84, i8* %85)
  br label %87

87:                                               ; preds = %80, %77
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %49

91:                                               ; preds = %49
  %92 = load %struct.record*, %struct.record** %13, align 8
  %93 = getelementptr inbounds %struct.record, %struct.record* %92, i32 0, i32 0
  %94 = load %struct.record*, %struct.record** %14, align 8
  %95 = getelementptr inbounds %struct.record, %struct.record* %94, i32 0, i32 0
  %96 = load double, double* %15, align 8
  %97 = call double @calc_pps(%struct.datarec* %93, %struct.datarec* %95, double %96)
  store double %97, double* %11, align 8
  %98 = load %struct.record*, %struct.record** %13, align 8
  %99 = getelementptr inbounds %struct.record, %struct.record* %98, i32 0, i32 0
  %100 = load %struct.record*, %struct.record** %14, align 8
  %101 = getelementptr inbounds %struct.record, %struct.record* %100, i32 0, i32 0
  %102 = load double, double* %15, align 8
  %103 = call double @calc_errs_pps(%struct.datarec* %99, %struct.datarec* %101, double %102)
  store double %103, double* %12, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = load double, double* %11, align 8
  %106 = load double, double* %12, align 8
  %107 = call i32 (i8*, i8*, ...) @printf(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), double %105, double %106)
  %108 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %209, %91
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %212

113:                                              ; preds = %109
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i8** %23, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8** %24, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %25, align 8
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %26, align 4
  %115 = load i32, i32* %26, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub i32 %116, 1
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 -1, i32* %26, align 4
  br label %120

120:                                              ; preds = %119, %113
  %121 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %122 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %121, i32 0, i32 0
  %123 = load %struct.record*, %struct.record** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.record, %struct.record* %123, i64 %125
  store %struct.record* %126, %struct.record** %13, align 8
  %127 = load %struct.stats_record*, %struct.stats_record** %6, align 8
  %128 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %127, i32 0, i32 0
  %129 = load %struct.record*, %struct.record** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.record, %struct.record* %129, i64 %131
  store %struct.record* %132, %struct.record** %14, align 8
  %133 = load %struct.record*, %struct.record** %13, align 8
  %134 = load %struct.record*, %struct.record** %14, align 8
  %135 = call double @calc_period(%struct.record* %133, %struct.record* %134)
  store double %135, double* %15, align 8
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %181, %120
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %136
  %141 = load %struct.record*, %struct.record** %13, align 8
  %142 = getelementptr inbounds %struct.record, %struct.record* %141, i32 0, i32 1
  %143 = load %struct.datarec*, %struct.datarec** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.datarec, %struct.datarec* %143, i64 %145
  store %struct.datarec* %146, %struct.datarec** %27, align 8
  %147 = load %struct.record*, %struct.record** %14, align 8
  %148 = getelementptr inbounds %struct.record, %struct.record* %147, i32 0, i32 1
  %149 = load %struct.datarec*, %struct.datarec** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.datarec, %struct.datarec* %149, i64 %151
  store %struct.datarec* %152, %struct.datarec** %28, align 8
  %153 = load %struct.datarec*, %struct.datarec** %27, align 8
  %154 = load %struct.datarec*, %struct.datarec** %28, align 8
  %155 = load double, double* %15, align 8
  %156 = call double @calc_pps(%struct.datarec* %153, %struct.datarec* %154, double %155)
  store double %156, double* %11, align 8
  %157 = load %struct.datarec*, %struct.datarec** %27, align 8
  %158 = load %struct.datarec*, %struct.datarec** %28, align 8
  %159 = load double, double* %15, align 8
  %160 = call double @calc_errs_pps(%struct.datarec* %157, %struct.datarec* %158, double %159)
  store double %160, double* %12, align 8
  %161 = load double, double* %12, align 8
  %162 = fcmp ogt double %161, 0.000000e+00
  br i1 %162, label %163, label %169

163:                                              ; preds = %140
  %164 = load i32, i32* %26, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8** %25, align 8
  br label %168

167:                                              ; preds = %163
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %25, align 8
  br label %168

168:                                              ; preds = %167, %166
  br label %169

169:                                              ; preds = %168, %140
  %170 = load double, double* %11, align 8
  %171 = fcmp ogt double %170, 0.000000e+00
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load i8*, i8** %23, align 8
  %174 = load i32, i32* %26, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load double, double* %11, align 8
  %177 = load double, double* %12, align 8
  %178 = load i8*, i8** %25, align 8
  %179 = call i32 (i8*, i8*, ...) @printf(i8* %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %174, i32 %175, double %176, double %177, i8* %178)
  br label %180

180:                                              ; preds = %172, %169
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %17, align 4
  br label %136

184:                                              ; preds = %136
  %185 = load %struct.record*, %struct.record** %13, align 8
  %186 = getelementptr inbounds %struct.record, %struct.record* %185, i32 0, i32 0
  %187 = load %struct.record*, %struct.record** %14, align 8
  %188 = getelementptr inbounds %struct.record, %struct.record* %187, i32 0, i32 0
  %189 = load double, double* %15, align 8
  %190 = call double @calc_pps(%struct.datarec* %186, %struct.datarec* %188, double %189)
  store double %190, double* %11, align 8
  %191 = load %struct.record*, %struct.record** %13, align 8
  %192 = getelementptr inbounds %struct.record, %struct.record* %191, i32 0, i32 0
  %193 = load %struct.record*, %struct.record** %14, align 8
  %194 = getelementptr inbounds %struct.record, %struct.record* %193, i32 0, i32 0
  %195 = load double, double* %15, align 8
  %196 = call double @calc_errs_pps(%struct.datarec* %192, %struct.datarec* %194, double %195)
  store double %196, double* %12, align 8
  %197 = load double, double* %11, align 8
  %198 = fcmp une double %197, 0.000000e+00
  br i1 %198, label %202, label %199

199:                                              ; preds = %184
  %200 = load double, double* %12, align 8
  %201 = fcmp une double %200, 0.000000e+00
  br i1 %201, label %202, label %208

202:                                              ; preds = %199, %184
  %203 = load i8*, i8** %24, align 8
  %204 = load i32, i32* %26, align 4
  %205 = load double, double* %11, align 8
  %206 = load double, double* %12, align 8
  %207 = call i32 (i8*, i8*, ...) @printf(i8* %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), double %205, double %206)
  br label %208

208:                                              ; preds = %202, %199
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %16, align 4
  br label %109

212:                                              ; preds = %109
  ret void
}

declare dso_local %struct.TYPE_2__* @bpf_map__def(i32) #1

declare dso_local i32 @bpf_num_possible_cpus(...) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @action2str(i32) #1

declare dso_local i8* @options2str(i32) #1

declare dso_local double @calc_period(%struct.record*, %struct.record*) #1

declare dso_local double @calc_pps(%struct.datarec*, %struct.datarec*, double) #1

declare dso_local double @calc_errs_pps(%struct.datarec*, %struct.datarec*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

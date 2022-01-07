; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_io_bars.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_io_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i64, %struct.per_pid* }
%struct.per_pid = type { i32, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, double, double, %struct.per_pidcomm*, i32, i64, %struct.io_sample*, i32, i32 }
%struct.io_sample = type { i64, i32, i64, i32, i32, i32, i64, %struct.io_sample* }

@.str = private unnamed_addr constant [9 x i8] c"process3\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@IOTYPE_SYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@IOTYPE_POLL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@IOTYPE_READ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@IOTYPE_WRITE = common dso_local global i64 0, align 8
@IOTYPE_RX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@IOTYPE_TX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"%s:%i (%3.1f %sbytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*)* @draw_io_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_io_bars(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.per_pid*, align 8
  %7 = alloca %struct.per_pidcomm*, align 8
  %8 = alloca %struct.io_sample*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  store i32 1, i32* %9, align 4
  %11 = load %struct.timechart*, %struct.timechart** %2, align 8
  %12 = getelementptr inbounds %struct.timechart, %struct.timechart* %11, i32 0, i32 1
  %13 = load %struct.per_pid*, %struct.per_pid** %12, align 8
  store %struct.per_pid* %13, %struct.per_pid** %6, align 8
  br label %14

14:                                               ; preds = %326, %1
  %15 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %16 = icmp ne %struct.per_pid* %15, null
  br i1 %16, label %17, label %330

17:                                               ; preds = %14
  %18 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %19 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %18, i32 0, i32 2
  %20 = load %struct.per_pidcomm*, %struct.per_pidcomm** %19, align 8
  store %struct.per_pidcomm* %20, %struct.per_pidcomm** %7, align 8
  br label %21

21:                                               ; preds = %304, %29, %17
  %22 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %23 = icmp ne %struct.per_pidcomm* %22, null
  br i1 %23, label %24, label %326

24:                                               ; preds = %21
  %25 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %26 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %31 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %33 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %32, i32 0, i32 3
  %34 = load %struct.per_pidcomm*, %struct.per_pidcomm** %33, align 8
  store %struct.per_pidcomm* %34, %struct.per_pidcomm** %7, align 8
  br label %21

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %38 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %41 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @svg_box(i32 %36, i32 %39, i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %45 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %44, i32 0, i32 6
  %46 = load %struct.io_sample*, %struct.io_sample** %45, align 8
  store %struct.io_sample* %46, %struct.io_sample** %8, align 8
  %47 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %48 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %47, i32 0, i32 6
  %49 = load %struct.io_sample*, %struct.io_sample** %48, align 8
  store %struct.io_sample* %49, %struct.io_sample** %8, align 8
  br label %50

50:                                               ; preds = %270, %35
  %51 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %52 = icmp ne %struct.io_sample* %51, null
  br i1 %52, label %53, label %274

53:                                               ; preds = %50
  %54 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %55 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to double
  %58 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %59 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = fdiv double %57, %60
  store double %61, double* %10, align 8
  %62 = load %struct.timechart*, %struct.timechart** %2, align 8
  %63 = getelementptr inbounds %struct.timechart, %struct.timechart* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %68 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EAGAIN, align 8
  %71 = sub nsw i64 0, %70
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %270

74:                                               ; preds = %66, %53
  %75 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %76 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store double 1.000000e+00, double* %10, align 8
  br label %80

80:                                               ; preds = %79, %74
  %81 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %82 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IOTYPE_SYNC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %89 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %92 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %95 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %100 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %101 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %104 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %107 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @svg_fbox(i32 %87, i32 %90, i32 %93, i32 1, i8* %99, i32 %102, i64 %105, i32 %108)
  br label %269

110:                                              ; preds = %80
  %111 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %112 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @IOTYPE_POLL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %119 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %122 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %125 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %130 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %131 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %134 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %137 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @svg_fbox(i32 %117, i32 %120, i32 %123, i32 1, i8* %129, i32 %132, i64 %135, i32 %138)
  br label %268

140:                                              ; preds = %110
  %141 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %142 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IOTYPE_READ, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %149 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %152 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load double, double* %10, align 8
  %155 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %156 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %161 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %162 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %165 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %168 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @svg_ubox(i32 %147, i32 %150, i32 %153, double %154, i8* %160, i32 %163, i64 %166, i32 %169)
  br label %267

171:                                              ; preds = %140
  %172 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %173 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IOTYPE_WRITE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %171
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %180 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %183 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load double, double* %10, align 8
  %186 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %187 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %192 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %193 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %196 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %199 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @svg_lbox(i32 %178, i32 %181, i32 %184, double %185, i8* %191, i32 %194, i64 %197, i32 %200)
  br label %266

202:                                              ; preds = %171
  %203 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %204 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @IOTYPE_RX, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %233

208:                                              ; preds = %202
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %211 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %214 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = load double, double* %10, align 8
  %217 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %218 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %223 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %224 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %227 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %230 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @svg_ubox(i32 %209, i32 %212, i32 %215, double %216, i8* %222, i32 %225, i64 %228, i32 %231)
  br label %265

233:                                              ; preds = %202
  %234 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %235 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @IOTYPE_TX, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %264

239:                                              ; preds = %233
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %242 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %245 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = load double, double* %10, align 8
  %248 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %249 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %254 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %255 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %258 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %261 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @svg_lbox(i32 %240, i32 %243, i32 %246, double %247, i8* %253, i32 %256, i64 %259, i32 %262)
  br label %264

264:                                              ; preds = %239, %233
  br label %265

265:                                              ; preds = %264, %208
  br label %266

266:                                              ; preds = %265, %177
  br label %267

267:                                              ; preds = %266, %146
  br label %268

268:                                              ; preds = %267, %116
  br label %269

269:                                              ; preds = %268, %86
  br label %270

270:                                              ; preds = %269, %73
  %271 = load %struct.io_sample*, %struct.io_sample** %8, align 8
  %272 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %271, i32 0, i32 7
  %273 = load %struct.io_sample*, %struct.io_sample** %272, align 8
  store %struct.io_sample* %273, %struct.io_sample** %8, align 8
  br label %50

274:                                              ; preds = %50
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  %275 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %276 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %275, i32 0, i32 2
  %277 = load double, double* %276, align 8
  store double %277, double* %4, align 8
  %278 = load double, double* %4, align 8
  %279 = fcmp ogt double %278, 1.024000e+03
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = load double, double* %4, align 8
  %282 = fdiv double %281, 1.024000e+03
  store double %282, double* %4, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %283

283:                                              ; preds = %280, %274
  %284 = load double, double* %4, align 8
  %285 = fcmp ogt double %284, 1.024000e+03
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load double, double* %4, align 8
  %288 = fdiv double %287, 1.024000e+03
  store double %288, double* %4, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %289

289:                                              ; preds = %286, %283
  %290 = load double, double* %4, align 8
  %291 = fcmp ogt double %290, 1.024000e+03
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load double, double* %4, align 8
  %294 = fdiv double %293, 1.024000e+03
  store double %294, double* %4, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %295

295:                                              ; preds = %292, %289
  %296 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %297 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %298 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %297, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = inttoptr i64 %299 to i8*
  br label %304

303:                                              ; preds = %295
  br label %304

304:                                              ; preds = %303, %301
  %305 = phi i8* [ %302, %301 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %303 ]
  %306 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %307 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load double, double* %4, align 8
  %310 = load i8*, i8** %3, align 8
  %311 = call i32 @sprintf(i8* %296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %305, i32 %308, double %309, i8* %310)
  %312 = load i32, i32* %9, align 4
  %313 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %314 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %317 = call i32 @svg_text(i32 %312, i32 %315, i8* %316)
  %318 = load i32, i32* %9, align 4
  %319 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %320 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load i32, i32* %9, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %9, align 4
  %323 = load %struct.per_pidcomm*, %struct.per_pidcomm** %7, align 8
  %324 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %323, i32 0, i32 3
  %325 = load %struct.per_pidcomm*, %struct.per_pidcomm** %324, align 8
  store %struct.per_pidcomm* %325, %struct.per_pidcomm** %7, align 8
  br label %21

326:                                              ; preds = %21
  %327 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %328 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %327, i32 0, i32 1
  %329 = load %struct.per_pid*, %struct.per_pid** %328, align 8
  store %struct.per_pid* %329, %struct.per_pid** %6, align 8
  br label %14

330:                                              ; preds = %14
  ret void
}

declare dso_local i32 @svg_box(i32, i32, i32, i8*) #1

declare dso_local i32 @svg_fbox(i32, i32, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @svg_ubox(i32, i32, i32, double, i8*, i32, i64, i32) #1

declare dso_local i32 @svg_lbox(i32, i32, i32, double, i8*, i32, i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, double, i8*) #1

declare dso_local i32 @svg_text(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

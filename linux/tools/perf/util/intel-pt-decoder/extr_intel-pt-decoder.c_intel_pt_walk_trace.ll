; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_trace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@INTEL_PT_STATE_TNT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@INTEL_PT_STATE_TIP_PGD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Skipping zero TIP.PGE\00", align 1
@INTEL_PT_TRACE_BEGIN = common dso_local global i32 0, align 4
@INTEL_PT_STATE_TIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Skipping zero FUP\00", align 1
@INTEL_PT_STATE_FUP_NO_TIP = common dso_local global i32 0, align 4
@INTEL_PT_STATE_FUP = common dso_local global i32 0, align 4
@BIT63 = common dso_local global i32 0, align 4
@INTEL_PT_PERIOD_MTC = common dso_local global i32 0, align 4
@INTEL_PT_INSTRUCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: Missing FUP after PTWRITE\00", align 1
@INTEL_PT_PTW = common dso_local global i32 0, align 4
@INTEL_PT_PWR_ENTRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Missing FUP after EXSTOP\00", align 1
@INTEL_PT_EX_STOP = common dso_local global i32 0, align 4
@INTEL_PT_PWR_EXIT = common dso_local global i32 0, align 4
@INTEL_PT_BLK_ITEMS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ERROR: Missing FUP after BEP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_walk_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_trace(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %1, %508
  %7 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %8 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %509

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %504, %427, %340, %308, %200, %13
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 16
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %505 [
    i32 131, label %19
    i32 134, label %45
    i32 133, label %60
    i32 144, label %93
    i32 135, label %96
    i32 150, label %111
    i32 130, label %177
    i32 141, label %186
    i32 142, label %216
    i32 146, label %226
    i32 129, label %265
    i32 132, label %268
    i32 153, label %271
    i32 154, label %274
    i32 148, label %286
    i32 147, label %293
    i32 159, label %309
    i32 140, label %312
    i32 128, label %312
    i32 149, label %312
    i32 143, label %312
    i32 138, label %313
    i32 139, label %341
    i32 145, label %362
    i32 137, label %371
    i32 151, label %406
    i32 152, label %428
    i32 136, label %442
    i32 158, label %463
    i32 155, label %466
    i32 157, label %469
    i32 156, label %483
  ]

19:                                               ; preds = %14
  %20 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %20, i32 0, i32 16
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %508

26:                                               ; preds = %19
  %27 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %27, i32 0, i32 27
  %29 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %29, i32 0, i32 16
  %31 = bitcast %struct.TYPE_3__* %28 to i8*
  %32 = bitcast %struct.TYPE_3__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 12, i1 false)
  %33 = load i32, i32* @INTEL_PT_STATE_TNT, align 4
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %35 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %34, i32 0, i32 25
  store i32 %33, i32* %35, align 4
  %36 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %37 = call i32 @intel_pt_walk_tnt(%struct.intel_pt_decoder* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %508

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %509

45:                                               ; preds = %14
  %46 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %47 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %46, i32 0, i32 16
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %53 = call i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder* %52)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* @INTEL_PT_STATE_TIP_PGD, align 4
  %56 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %57 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %56, i32 0, i32 25
  store i32 %55, i32* %57, align 4
  %58 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %59 = call i32 @intel_pt_walk_tip(%struct.intel_pt_decoder* %58)
  store i32 %59, i32* %2, align 4
  br label %509

60:                                               ; preds = %14
  %61 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %64 = call i32 @intel_pt_mtc_cyc_cnt_pge(%struct.intel_pt_decoder* %63)
  %65 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %66 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %65, i32 0, i32 16
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %72 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %71, i32 0, i32 15
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %508

75:                                               ; preds = %60
  %76 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %77 = call i32 @intel_pt_set_ip(%struct.intel_pt_decoder* %76)
  %78 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %79 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %82 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %81, i32 0, i32 18
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %85 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %84, i32 0, i32 17
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @INTEL_PT_TRACE_BEGIN, align 4
  %88 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %89 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %88, i32 0, i32 17
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  store i32 0, i32* %2, align 4
  br label %509

93:                                               ; preds = %14
  %94 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %95 = call i32 @intel_pt_overflow(%struct.intel_pt_decoder* %94)
  store i32 %95, i32* %2, align 4
  br label %509

96:                                               ; preds = %14
  %97 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %98 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %97, i32 0, i32 16
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %104 = call i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder* %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32, i32* @INTEL_PT_STATE_TIP, align 4
  %107 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %108 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %107, i32 0, i32 25
  store i32 %106, i32* %108, align 4
  %109 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %110 = call i32 @intel_pt_walk_tip(%struct.intel_pt_decoder* %109)
  store i32 %110, i32* %2, align 4
  br label %509

111:                                              ; preds = %14
  %112 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %113 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %112, i32 0, i32 16
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %119 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %118, i32 0, i32 15
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  store i32 0, i32* %4, align 4
  br label %508

122:                                              ; preds = %111
  %123 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %124 = call i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder* %123)
  %125 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %126 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %125, i32 0, i32 26
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %122
  %130 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %131 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %130, i32 0, i32 24
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %134 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %133, i32 0, i32 18
  store i32 %132, i32* %134, align 4
  %135 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %136 = call i32 @intel_pt_fup_event(%struct.intel_pt_decoder* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %509

139:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %508

140:                                              ; preds = %122
  %141 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %142 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 1, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %140
  %147 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %148 = call i32 @intel_pt_walk_fup(%struct.intel_pt_decoder* %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %509

158:                                              ; preds = %153
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* @INTEL_PT_STATE_FUP_NO_TIP, align 4
  %163 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %164 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %163, i32 0, i32 25
  store i32 %162, i32* %164, align 4
  br label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @INTEL_PT_STATE_FUP, align 4
  %167 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %168 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %167, i32 0, i32 25
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %161
  store i32 0, i32* %2, align 4
  br label %509

170:                                              ; preds = %146
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %508

174:                                              ; preds = %170
  %175 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %176 = call i32 @intel_pt_walk_fup_tip(%struct.intel_pt_decoder* %175)
  store i32 %176, i32* %2, align 4
  br label %509

177:                                              ; preds = %14
  %178 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %179 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %178, i32 0, i32 0
  store i32 0, i32* %179, align 4
  %180 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %181 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %180, i32 0, i32 2
  store i32 0, i32* %181, align 4
  %182 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %183 = call i32 @intel_pt_clear_tx_flags(%struct.intel_pt_decoder* %182)
  %184 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %185 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %184, i32 0, i32 3
  store i32 0, i32* %185, align 4
  br label %508

186:                                              ; preds = %14
  %187 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %188 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %187, i32 0, i32 24
  store i32 0, i32* %188, align 4
  %189 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %190 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %189, i32 0, i32 4
  store i32 1, i32* %190, align 4
  %191 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %192 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %191, i32 0, i32 23
  %193 = call i32 @intel_pt_clear_stack(i32* %192)
  %194 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %195 = call i32 @intel_pt_walk_psbend(%struct.intel_pt_decoder* %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @EAGAIN, align 4
  %198 = sub nsw i32 0, %197
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %186
  br label %14

201:                                              ; preds = %186
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* %5, align 4
  store i32 %205, i32* %2, align 4
  br label %509

206:                                              ; preds = %201
  %207 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %208 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %207, i32 0, i32 20
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %211 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %210, i32 0, i32 19
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  store i32 0, i32* %2, align 4
  br label %509

215:                                              ; preds = %206
  br label %508

216:                                              ; preds = %14
  %217 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %218 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %217, i32 0, i32 16
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @BIT63, align 4
  %222 = sub nsw i32 %221, 1
  %223 = and i32 %220, %222
  %224 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %225 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %224, i32 0, i32 5
  store i32 %223, i32* %225, align 4
  br label %508

226:                                              ; preds = %14
  %227 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %228 = call i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder* %227)
  %229 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %230 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %229, i32 0, i32 22
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @INTEL_PT_PERIOD_MTC, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  br label %508

235:                                              ; preds = %226
  %236 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %237 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %235
  br label %508

241:                                              ; preds = %235
  %242 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %243 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %242, i32 0, i32 6
  store i32 0, i32* %243, align 4
  %244 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %245 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %244, i32 0, i32 21
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %241
  br label %508

249:                                              ; preds = %241
  %250 = load i32, i32* @INTEL_PT_INSTRUCTION, align 4
  %251 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %252 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %251, i32 0, i32 17
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 4
  store i32 %250, i32* %253, align 4
  %254 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %255 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %258 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %257, i32 0, i32 17
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  store i32 %256, i32* %259, align 4
  %260 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %261 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %260, i32 0, i32 17
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  store i32 0, i32* %262, align 4
  %263 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %264 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %263, i32 0, i32 6
  store i32 0, i32* %264, align 4
  store i32 0, i32* %2, align 4
  br label %509

265:                                              ; preds = %14
  %266 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %267 = call i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder* %266)
  br label %508

268:                                              ; preds = %14
  %269 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %270 = call i32 @intel_pt_calc_tma(%struct.intel_pt_decoder* %269)
  br label %508

271:                                              ; preds = %14
  %272 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %273 = call i32 @intel_pt_calc_cyc_timestamp(%struct.intel_pt_decoder* %272)
  br label %508

274:                                              ; preds = %14
  %275 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %276 = call i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder* %275)
  %277 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %278 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %277, i32 0, i32 20
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %281 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %280, i32 0, i32 19
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %279, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %274
  store i32 0, i32* %2, align 4
  br label %509

285:                                              ; preds = %274
  br label %508

286:                                              ; preds = %14
  %287 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %288 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %287, i32 0, i32 16
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %292 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %291, i32 0, i32 7
  store i32 %290, i32* %292, align 4
  br label %508

293:                                              ; preds = %14
  %294 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %295 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %293
  %299 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %300 = call i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder* %299)
  br label %508

301:                                              ; preds = %293
  %302 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %303 = call i32 @intel_pt_mode_tsx(%struct.intel_pt_decoder* %302, i32* %4)
  store i32 %303, i32* %5, align 4
  %304 = load i32, i32* %5, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i32, i32* %5, align 4
  store i32 %307, i32* %2, align 4
  br label %509

308:                                              ; preds = %301
  br label %14

309:                                              ; preds = %14
  %310 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %311 = call i32 @intel_pt_bug(%struct.intel_pt_decoder* %310)
  store i32 %311, i32* %2, align 4
  br label %509

312:                                              ; preds = %14, %14, %14, %14
  br label %508

313:                                              ; preds = %14
  %314 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %315 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %314, i32 0, i32 16
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %319 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %318, i32 0, i32 8
  store i32 %317, i32* %319, align 4
  %320 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %321 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %320)
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %313
  %325 = load i32, i32* %5, align 4
  store i32 %325, i32* %2, align 4
  br label %509

326:                                              ; preds = %313
  %327 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %328 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %327, i32 0, i32 16
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 150
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  %333 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %334 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %333, i32 0, i32 9
  store i32 1, i32* %334, align 4
  store i32 1, i32* %4, align 4
  br label %340

335:                                              ; preds = %326
  %336 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %337 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %336, i32 0, i32 15
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %335, %332
  br label %14

341:                                              ; preds = %14
  %342 = load i32, i32* @INTEL_PT_PTW, align 4
  %343 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %344 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %343, i32 0, i32 17
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 4
  store i32 %342, i32* %345, align 4
  %346 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %347 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %346, i32 0, i32 18
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %350 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %349, i32 0, i32 17
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 3
  store i32 %348, i32* %351, align 4
  %352 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %353 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %352, i32 0, i32 17
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 2
  store i32 0, i32* %354, align 4
  %355 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %356 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %355, i32 0, i32 16
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %360 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %359, i32 0, i32 17
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 0
  store i32 %358, i32* %361, align 4
  store i32 0, i32* %2, align 4
  br label %509

362:                                              ; preds = %14
  %363 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %364 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %363, i32 0, i32 16
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %368 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %367, i32 0, i32 10
  store i32 %366, i32* %368, align 4
  %369 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %370 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %369, i32 0, i32 1
  store i32 1, i32* %370, align 4
  br label %508

371:                                              ; preds = %14
  %372 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %373 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %371
  %377 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %378 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %377, i32 0, i32 16
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %382 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %381, i32 0, i32 11
  store i32 %380, i32* %382, align 4
  %383 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %384 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %383, i32 0, i32 12
  store i32 1, i32* %384, align 4
  br label %508

385:                                              ; preds = %371
  %386 = load i32, i32* @INTEL_PT_PWR_ENTRY, align 4
  %387 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %388 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %387, i32 0, i32 17
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 4
  store i32 %386, i32* %389, align 4
  %390 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %391 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %390, i32 0, i32 18
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %394 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %393, i32 0, i32 17
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 3
  store i32 %392, i32* %395, align 4
  %396 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %397 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %396, i32 0, i32 17
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  store i32 0, i32* %398, align 4
  %399 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %400 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %399, i32 0, i32 16
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %404 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %403, i32 0, i32 17
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 1
  store i32 %402, i32* %405, align 4
  store i32 0, i32* %2, align 4
  br label %509

406:                                              ; preds = %14
  %407 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %408 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %407)
  store i32 %408, i32* %5, align 4
  %409 = load i32, i32* %5, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %406
  %412 = load i32, i32* %5, align 4
  store i32 %412, i32* %2, align 4
  br label %509

413:                                              ; preds = %406
  %414 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %415 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %414, i32 0, i32 16
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = icmp eq i32 %417, 150
  br i1 %418, label %419, label %422

419:                                              ; preds = %413
  %420 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %421 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %420, i32 0, i32 13
  store i32 1, i32* %421, align 4
  store i32 1, i32* %4, align 4
  br label %427

422:                                              ; preds = %413
  %423 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %424 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %423, i32 0, i32 15
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %425)
  br label %427

427:                                              ; preds = %422, %419
  br label %14

428:                                              ; preds = %14
  %429 = load i32, i32* @INTEL_PT_EX_STOP, align 4
  %430 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %431 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %430, i32 0, i32 17
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 4
  store i32 %429, i32* %432, align 4
  %433 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %434 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %433, i32 0, i32 18
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %437 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %436, i32 0, i32 17
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 3
  store i32 %435, i32* %438, align 4
  %439 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %440 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %439, i32 0, i32 17
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 2
  store i32 0, i32* %441, align 4
  store i32 0, i32* %2, align 4
  br label %509

442:                                              ; preds = %14
  %443 = load i32, i32* @INTEL_PT_PWR_EXIT, align 4
  %444 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %445 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %444, i32 0, i32 17
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 4
  store i32 %443, i32* %446, align 4
  %447 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %448 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %447, i32 0, i32 18
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %451 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %450, i32 0, i32 17
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 3
  store i32 %449, i32* %452, align 4
  %453 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %454 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %453, i32 0, i32 17
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 2
  store i32 0, i32* %455, align 4
  %456 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %457 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %456, i32 0, i32 16
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %461 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %460, i32 0, i32 17
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 1
  store i32 %459, i32* %462, align 4
  store i32 0, i32* %2, align 4
  br label %509

463:                                              ; preds = %14
  %464 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %465 = call i32 @intel_pt_bbp(%struct.intel_pt_decoder* %464)
  br label %508

466:                                              ; preds = %14
  %467 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %468 = call i32 @intel_pt_bip(%struct.intel_pt_decoder* %467)
  br label %508

469:                                              ; preds = %14
  %470 = load i32, i32* @INTEL_PT_BLK_ITEMS, align 4
  %471 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %472 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %471, i32 0, i32 17
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 4
  store i32 %470, i32* %473, align 4
  %474 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %475 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %474, i32 0, i32 18
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %478 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %477, i32 0, i32 17
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 3
  store i32 %476, i32* %479, align 4
  %480 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %481 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %480, i32 0, i32 17
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 2
  store i32 0, i32* %482, align 4
  store i32 0, i32* %2, align 4
  br label %509

483:                                              ; preds = %14
  %484 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %485 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %484)
  store i32 %485, i32* %5, align 4
  %486 = load i32, i32* %5, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %483
  %489 = load i32, i32* %5, align 4
  store i32 %489, i32* %2, align 4
  br label %509

490:                                              ; preds = %483
  %491 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %492 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %491, i32 0, i32 16
  %493 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = icmp eq i32 %494, 150
  br i1 %495, label %496, label %499

496:                                              ; preds = %490
  %497 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %498 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %497, i32 0, i32 14
  store i32 1, i32* %498, align 4
  store i32 1, i32* %4, align 4
  br label %504

499:                                              ; preds = %490
  %500 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %501 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %500, i32 0, i32 15
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %502)
  br label %504

504:                                              ; preds = %499, %496
  br label %14

505:                                              ; preds = %14
  %506 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %507 = call i32 @intel_pt_bug(%struct.intel_pt_decoder* %506)
  store i32 %507, i32* %2, align 4
  br label %509

508:                                              ; preds = %466, %463, %376, %362, %312, %298, %286, %285, %271, %268, %265, %248, %240, %234, %216, %215, %177, %173, %139, %117, %70, %42, %25
  br label %6

509:                                              ; preds = %505, %488, %469, %442, %428, %411, %385, %341, %324, %309, %306, %284, %249, %214, %204, %174, %169, %156, %138, %105, %93, %75, %54, %43, %11
  %510 = load i32, i32* %2, align 4
  ret i32 %510
}

declare dso_local i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @intel_pt_walk_tnt(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_walk_tip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_mtc_cyc_cnt_pge(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log_at(i8*, i32) #1

declare dso_local i32 @intel_pt_set_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_overflow(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_fup_event(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_walk_fup(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_walk_fup_tip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_clear_tx_flags(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_clear_stack(i32*) #1

declare dso_local i32 @intel_pt_walk_psbend(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tma(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_cyc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_mode_tsx(%struct.intel_pt_decoder*, i32*) #1

declare dso_local i32 @intel_pt_bug(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_bbp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_bip(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

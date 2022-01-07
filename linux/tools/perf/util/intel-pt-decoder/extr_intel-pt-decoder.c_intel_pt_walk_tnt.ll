; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_tnt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_tnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__, i8*, i64, i64, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.intel_pt_insn = type { i64, i64, i64, i64 }

@INTEL_PT_RETURN = common dso_local global i32 0, align 4
@INTEL_PT_OP_RET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"ERROR: RET when expecting conditional branch\00", align 1
@INTEL_PT_STATE_ERR3 = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ERROR: Bad RET compression (stack empty)\00", align 1
@BIT63 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"ERROR: Bad RET compression (TNT=N)\00", align 1
@INTEL_PT_STATE_TNT_CONT = common dso_local global i8* null, align 8
@INTEL_PT_STATE_IN_SYNC = common dso_local global i8* null, align 8
@INTEL_PT_BR_INDIRECT = common dso_local global i64 0, align 8
@INTEL_PT_TIP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"ERROR: Missing deferred TIP for indirect branch\00", align 1
@INTEL_PT_BR_CONDITIONAL = common dso_local global i64 0, align 8
@INTEL_PT_INSTRUCTION = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_walk_tnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_tnt(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca %struct.intel_pt_insn, align 8
  %5 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  br label %6

6:                                                ; preds = %1, %281
  %7 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %8 = call i32 @intel_pt_walk_insn(%struct.intel_pt_decoder* %7, %struct.intel_pt_insn* %4, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @INTEL_PT_RETURN, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %290

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %290

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTEL_PT_OP_RET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %113

23:                                               ; preds = %18
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i8*, i8** @INTEL_PT_STATE_ERR3, align 8
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %35 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %290

38:                                               ; preds = %23
  %39 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %40 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %45 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i8*, i8** @INTEL_PT_STATE_ERR3, align 8
  %49 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %50 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %290

53:                                               ; preds = %38
  %54 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %55 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BIT63, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %63 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load i8*, i8** @INTEL_PT_STATE_ERR3, align 8
  %67 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %68 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %290

71:                                               ; preds = %53
  %72 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %73 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %78 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load i8*, i8** @INTEL_PT_STATE_TNT_CONT, align 8
  %84 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %85 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %90

86:                                               ; preds = %71
  %87 = load i8*, i8** @INTEL_PT_STATE_IN_SYNC, align 8
  %88 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %89 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %92 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %97 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %100 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i64 %98, i64* %101, align 8
  %102 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %103 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %106 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %108 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %111 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  store i32 0, i32* %2, align 4
  br label %290

113:                                              ; preds = %18
  %114 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @INTEL_PT_BR_INDIRECT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %170

118:                                              ; preds = %113
  %119 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %120 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %290

125:                                              ; preds = %118
  %126 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %127 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INTEL_PT_TIP, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %125
  %133 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %134 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %132, %125
  %139 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %140 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %141)
  %143 = load i8*, i8** @INTEL_PT_STATE_ERR3, align 8
  %144 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %145 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %147 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %146, i32 0, i32 6
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @ENOENT, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %290

150:                                              ; preds = %132
  %151 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %152 = call i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder* %151)
  %153 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %154 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %157 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i64 %155, i64* %158, align 8
  %159 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %160 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %163 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  store i64 %161, i64* %164, align 8
  %165 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %166 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %169 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  store i32 0, i32* %2, align 4
  br label %290

170:                                              ; preds = %113
  %171 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @INTEL_PT_BR_CONDITIONAL, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %287

175:                                              ; preds = %170
  %176 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %177 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %182 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %175
  %187 = load i8*, i8** @INTEL_PT_STATE_TNT_CONT, align 8
  %188 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %189 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  br label %194

190:                                              ; preds = %175
  %191 = load i8*, i8** @INTEL_PT_STATE_IN_SYNC, align 8
  %192 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %193 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %190, %186
  %195 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %196 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @BIT63, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %229

202:                                              ; preds = %194
  %203 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %204 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 %206, 1
  store i32 %207, i32* %205, align 8
  %208 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %209 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %212 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i64 %210, i64* %213, align 8
  %214 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %215, %217
  %219 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %220 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %221, %218
  store i64 %222, i64* %220, align 8
  %223 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %224 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %227 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  store i64 %225, i64* %228, align 8
  store i32 0, i32* %2, align 4
  br label %290

229:                                              ; preds = %194
  %230 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %231 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @INTEL_PT_INSTRUCTION, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %262

237:                                              ; preds = %229
  %238 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %239 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = shl i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = load i32, i32* @INTEL_PT_INSTRUCTION, align 4
  %244 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %245 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  %247 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %248 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %251 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  store i64 %249, i64* %252, align 8
  %253 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %254 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  store i64 0, i64* %255, align 8
  %256 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %259 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, %257
  store i64 %261, i64* %259, align 8
  store i32 0, i32* %2, align 4
  br label %290

262:                                              ; preds = %229
  %263 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %264 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %263, i32 0, i32 0
  store i32 0, i32* %264, align 8
  %265 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %268 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, %266
  store i64 %270, i64* %268, align 8
  %271 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %272 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %262
  %277 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %278 = call i32 @intel_pt_update_sample_time(%struct.intel_pt_decoder* %277)
  %279 = load i32, i32* @EAGAIN, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %2, align 4
  br label %290

281:                                              ; preds = %262
  %282 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %283 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = shl i32 %285, 1
  store i32 %286, i32* %284, align 8
  br label %6

287:                                              ; preds = %170
  %288 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %289 = call i32 @intel_pt_bug(%struct.intel_pt_decoder* %288)
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %287, %276, %237, %202, %150, %138, %123, %90, %61, %43, %28, %16, %12
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @intel_pt_walk_insn(%struct.intel_pt_decoder*, %struct.intel_pt_insn*, i32) #1

declare dso_local i32 @intel_pt_log_at(i8*, i64) #1

declare dso_local i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_update_sample_time(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_bug(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

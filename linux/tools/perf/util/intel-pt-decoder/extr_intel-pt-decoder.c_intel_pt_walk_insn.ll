; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32 (%struct.intel_pt_insn*, i64*, i64*, i64, i64, i32)*, i64, i64, i32, i32, i32, %struct.TYPE_2__, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.intel_pt_insn = type { i64, i64, i64, i64, i32 }

@INTEL_PT_STATE_ERR2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ERROR: Failed to get instruction\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@INTEL_PT_BR_NO_BRANCH = common dso_local global i64 0, align 8
@INTEL_PT_INSTRUCTION = common dso_local global i32 0, align 4
@INTEL_PT_RETURN = common dso_local global i32 0, align 4
@INTEL_PT_OP_CALL = common dso_local global i64 0, align 8
@INTEL_PT_BR_UNCONDITIONAL = common dso_local global i64 0, align 8
@INTEL_PT_OP_RET = common dso_local global i64 0, align 8
@INTEL_PT_MAX_LOOPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ERROR: Never-ending loop\00", align 1
@INTEL_PT_STATE_ERR_RESYNC = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@INTEL_PT_INSN_BUF_SZ = common dso_local global i32 0, align 4
@INTEL_PT_IN_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*, %struct.intel_pt_insn*, i64)* @intel_pt_walk_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_insn(%struct.intel_pt_decoder* %0, %struct.intel_pt_insn* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_pt_decoder*, align 8
  %6 = alloca %struct.intel_pt_insn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %5, align 8
  store %struct.intel_pt_insn* %1, %struct.intel_pt_insn** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %13 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %18 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %21 = call i64 @intel_pt_next_sample(%struct.intel_pt_decoder* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %23 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %22, i32 0, i32 1
  %24 = load i32 (%struct.intel_pt_insn*, i64*, i64*, i64, i64, i32)*, i32 (%struct.intel_pt_insn*, i64*, i64*, i64, i64, i32)** %23, align 8
  %25 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %27 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %26, i32 0, i32 2
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %24(%struct.intel_pt_insn* %25, i64* %9, i64* %27, i64 %28, i64 %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %36 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %35, i32 0, i32 15
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %43 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %50 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %57 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %19
  %65 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %66 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @INTEL_PT_STATE_ERR2, align 4
  %68 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %69 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  %70 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %71 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load i32, i32* @ENOLINK, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %323

81:                                               ; preds = %64
  %82 = load i32, i32* @EILSEQ, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %323

84:                                               ; preds = %19
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %89 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %283

96:                                               ; preds = %87, %84
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %105 = call i32 @intel_pt_sample_insn(%struct.intel_pt_decoder* %104)
  br label %106

106:                                              ; preds = %103, %99, %96
  %107 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %108 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @INTEL_PT_BR_NO_BRANCH, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %106
  %113 = load i32, i32* @INTEL_PT_INSTRUCTION, align 4
  %114 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %115 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  store i32 %113, i32* %116, align 8
  %117 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %118 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %121 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %124 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %127 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %130 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i32, i32* @INTEL_PT_RETURN, align 4
  store i32 %133, i32* %10, align 4
  br label %283

134:                                              ; preds = %106
  %135 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %136 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @INTEL_PT_OP_CALL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %134
  %141 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %142 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @INTEL_PT_BR_UNCONDITIONAL, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %148 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %146, %140
  %152 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %153 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %152, i32 0, i32 10
  %154 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %155 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %158 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = call i32 @intel_pt_push(i32* %153, i64 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  br label %283

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165, %146
  br label %180

167:                                              ; preds = %134
  %168 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %169 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @INTEL_PT_OP_RET, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %175 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %174, i32 0, i32 10
  %176 = call i32 @intel_pt_pop(i32* %175)
  %177 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %178 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %177, i32 0, i32 11
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %166
  %181 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %182 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @INTEL_PT_BR_UNCONDITIONAL, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %282

186:                                              ; preds = %180
  %187 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %188 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = trunc i64 %189 to i32
  store i32 %191, i32* %11, align 4
  %192 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %193 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %196 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  store i64 %194, i64* %197, align 8
  %198 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %199 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %202 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %200, %203
  %205 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %206 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %204
  store i64 %208, i64* %206, align 8
  %209 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %210 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %213 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 1
  store i64 %211, i64* %214, align 8
  %215 = load i32, i32* @INTEL_PT_RETURN, align 4
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %281

218:                                              ; preds = %186
  %219 = load i32, i32* %11, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %232

221:                                              ; preds = %218
  %222 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %223 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %227 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %226, i32 0, i32 3
  store i64 %225, i64* %227, align 8
  %228 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %229 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %228, i32 0, i32 4
  store i32 1, i32* %229, align 8
  %230 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %231 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %230, i32 0, i32 5
  store i32 1, i32* %231, align 4
  br label %280

232:                                              ; preds = %218
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @INTEL_PT_MAX_LOOPS, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %245, label %236

236:                                              ; preds = %232
  %237 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %238 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %237, i32 0, i32 7
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %242 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %240, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %236, %232
  %246 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %247 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %246, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %249)
  %251 = load i32, i32* @INTEL_PT_STATE_ERR_RESYNC, align 4
  %252 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %253 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %252, i32 0, i32 9
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* @ELOOP, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %10, align 4
  br label %283

256:                                              ; preds = %236
  %257 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %258 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %258, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %278, label %262

262:                                              ; preds = %256
  %263 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %264 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  %267 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %268 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %271 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %270, i32 0, i32 5
  store i32 %269, i32* %271, align 4
  %272 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %273 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %277 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %276, i32 0, i32 3
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %262, %256
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279, %221
  br label %281

281:                                              ; preds = %280, %186
  br label %286

282:                                              ; preds = %180
  br label %283

283:                                              ; preds = %282, %245, %164, %112, %93
  %284 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %285 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %284, i32 0, i32 8
  store i64 0, i64* %285, align 8
  br label %286

286:                                              ; preds = %283, %281
  %287 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %288 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %291 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 2
  store i64 %289, i64* %292, align 8
  %293 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %294 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %297 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %296, i32 0, i32 7
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 3
  store i64 %295, i64* %298, align 8
  %299 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %300 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %299, i32 0, i32 7
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %304 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %307 = call i32 @memcpy(i32 %302, i32 %305, i32 %306)
  %308 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %309 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @INTEL_PT_IN_TX, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %286
  %315 = load i32, i32* @INTEL_PT_IN_TX, align 4
  %316 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %317 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %316, i32 0, i32 7
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %315
  store i32 %320, i32* %318, align 8
  br label %321

321:                                              ; preds = %314, %286
  %322 = load i32, i32* %10, align 4
  store i32 %322, i32* %4, align 4
  br label %323

323:                                              ; preds = %321, %81, %78
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i64 @intel_pt_next_sample(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log_at(i8*, i64) #1

declare dso_local i32 @intel_pt_sample_insn(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_push(i32*, i64) #1

declare dso_local i32 @intel_pt_pop(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

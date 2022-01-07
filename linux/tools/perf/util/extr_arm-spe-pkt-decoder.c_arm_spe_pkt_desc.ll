; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_pkt_desc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_pkt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pkt = type { i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" EXCEPTION-GEN\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" RETIRED\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" L1D-ACCESS\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" L1D-REFILL\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" TLB-ACCESS\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" TLB-REFILL\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" NOT-TAKEN\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" MISPRED\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" LLC-ACCESS\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" LLC-REFILL\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" REMOTE-ACCESS\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"COND-SELECT\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"INSN-OTHER\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"LD\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" AT\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c" EXCL\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" AR\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" SIMD-FP\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" COND\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" IND\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%s %lld\00", align 1
@NS_FLAG = common dso_local global i32 0, align 4
@EL_FLAG = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"%s 0x%llx el%d ns=%d\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"TGT\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"VA 0x%llx\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"PA 0x%llx ns=%d\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"%s 0x%lx el%d\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%s %d \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"TOT\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"ISSUE\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"XLAT\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"%s 0x%llx (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_spe_pkt_desc(%struct.arm_spe_pkt* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_spe_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.arm_spe_pkt* %0, %struct.arm_spe_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %22 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %25 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @arm_spe_pkt_name(i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %29 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %533 [
    i32 136, label %31
    i32 129, label %31
    i32 132, label %31
    i32 131, label %36
    i32 130, label %242
    i32 133, label %417
    i32 128, label %417
    i32 137, label %423
    i32 135, label %480
    i32 134, label %488
  ]

31:                                               ; preds = %3, %3, %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %4, align 4
  br label %543

36:                                               ; preds = %3
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %14, align 8
  store i32 0, i32* %8, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %14, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %12, align 8
  %50 = and i64 %49, 1
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %14, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %52, %36
  %65 = load i64, i64* %12, align 8
  %66 = and i64 %65, 2
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %14, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %14, align 8
  br label %80

80:                                               ; preds = %68, %64
  %81 = load i64, i64* %12, align 8
  %82 = and i64 %81, 4
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %85, i64 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %14, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %14, align 8
  br label %96

96:                                               ; preds = %84, %80
  %97 = load i64, i64* %12, align 8
  %98 = and i64 %97, 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %101, i64 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %14, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %14, align 8
  br label %112

112:                                              ; preds = %100, %96
  %113 = load i64, i64* %12, align 8
  %114 = and i64 %113, 16
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %117, i64 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %14, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %14, align 8
  br label %128

128:                                              ; preds = %116, %112
  %129 = load i64, i64* %12, align 8
  %130 = and i64 %129, 32
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %133, i64 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i8*, i8** %6, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %14, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %132, %128
  %145 = load i64, i64* %12, align 8
  %146 = and i64 %145, 64
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load i8*, i8** %6, align 8
  %150 = load i64, i64* %7, align 8
  %151 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %149, i64 %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %14, align 8
  %159 = sub i64 %158, %157
  store i64 %159, i64* %14, align 8
  br label %160

160:                                              ; preds = %148, %144
  %161 = load i64, i64* %12, align 8
  %162 = and i64 %161, 128
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = load i8*, i8** %6, align 8
  %166 = load i64, i64* %7, align 8
  %167 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %165, i64 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %6, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %14, align 8
  %175 = sub i64 %174, %173
  store i64 %175, i64* %14, align 8
  br label %176

176:                                              ; preds = %164, %160
  %177 = load i32, i32* %11, align 4
  %178 = icmp sgt i32 %177, 1
  br i1 %178, label %179, label %228

179:                                              ; preds = %176
  %180 = load i64, i64* %12, align 8
  %181 = and i64 %180, 256
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %179
  %184 = load i8*, i8** %6, align 8
  %185 = load i64, i64* %7, align 8
  %186 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %184, i64 %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i8*, i8** %6, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %6, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %14, align 8
  %194 = sub i64 %193, %192
  store i64 %194, i64* %14, align 8
  br label %195

195:                                              ; preds = %183, %179
  %196 = load i64, i64* %12, align 8
  %197 = and i64 %196, 512
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %195
  %200 = load i8*, i8** %6, align 8
  %201 = load i64, i64* %7, align 8
  %202 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %200, i64 %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i8*, i8** %6, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %6, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %14, align 8
  %210 = sub i64 %209, %208
  store i64 %210, i64* %14, align 8
  br label %211

211:                                              ; preds = %199, %195
  %212 = load i64, i64* %12, align 8
  %213 = and i64 %212, 1024
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %211
  %216 = load i8*, i8** %6, align 8
  %217 = load i64, i64* %7, align 8
  %218 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %216, i64 %217, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load i8*, i8** %6, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %6, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* %14, align 8
  %226 = sub i64 %225, %224
  store i64 %226, i64* %14, align 8
  br label %227

227:                                              ; preds = %215, %211
  br label %228

228:                                              ; preds = %227, %176
  %229 = load i32, i32* %8, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %4, align 4
  br label %543

233:                                              ; preds = %228
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* %14, align 8
  %237 = sub i64 %236, %235
  store i64 %237, i64* %14, align 8
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* %14, align 8
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %4, align 4
  br label %543

242:                                              ; preds = %3
  %243 = load i32, i32* %11, align 4
  switch i32 %243, label %416 [
    i32 0, label %244
    i32 1, label %253
    i32 2, label %358
  ]

244:                                              ; preds = %242
  %245 = load i8*, i8** %6, align 8
  %246 = load i64, i64* %7, align 8
  %247 = load i64, i64* %12, align 8
  %248 = and i64 %247, 1
  %249 = icmp ne i64 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0)
  %252 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %245, i64 %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %251)
  store i32 %252, i32* %4, align 4
  br label %543

253:                                              ; preds = %242
  %254 = load i64, i64* %7, align 8
  store i64 %254, i64* %15, align 8
  %255 = load i64, i64* %12, align 8
  %256 = and i64 %255, 1
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i8*, i8** %6, align 8
  %260 = load i64, i64* %7, align 8
  %261 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %259, i64 %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32 %261, i32* %8, align 4
  br label %266

262:                                              ; preds = %253
  %263 = load i8*, i8** %6, align 8
  %264 = load i64, i64* %7, align 8
  %265 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %263, i64 %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  store i32 %265, i32* %8, align 4
  br label %266

266:                                              ; preds = %262, %258
  %267 = load i32, i32* %8, align 4
  %268 = load i8*, i8** %6, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %6, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = load i64, i64* %15, align 8
  %274 = sub i64 %273, %272
  store i64 %274, i64* %15, align 8
  %275 = load i64, i64* %12, align 8
  %276 = and i64 %275, 2
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %327

278:                                              ; preds = %266
  %279 = load i64, i64* %12, align 8
  %280 = and i64 %279, 4
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %278
  %283 = load i8*, i8** %6, align 8
  %284 = load i64, i64* %7, align 8
  %285 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %283, i64 %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* %8, align 4
  %287 = load i8*, i8** %6, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %6, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = load i64, i64* %15, align 8
  %293 = sub i64 %292, %291
  store i64 %293, i64* %15, align 8
  br label %294

294:                                              ; preds = %282, %278
  %295 = load i64, i64* %12, align 8
  %296 = and i64 %295, 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %310

298:                                              ; preds = %294
  %299 = load i8*, i8** %6, align 8
  %300 = load i64, i64* %7, align 8
  %301 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %299, i64 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = load i8*, i8** %6, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8* %305, i8** %6, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* %15, align 8
  %309 = sub i64 %308, %307
  store i64 %309, i64* %15, align 8
  br label %310

310:                                              ; preds = %298, %294
  %311 = load i64, i64* %12, align 8
  %312 = and i64 %311, 16
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %310
  %315 = load i8*, i8** %6, align 8
  %316 = load i64, i64* %7, align 8
  %317 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %315, i64 %316, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i8*, i8** %6, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8* %321, i8** %6, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* %15, align 8
  %325 = sub i64 %324, %323
  store i64 %325, i64* %15, align 8
  br label %326

326:                                              ; preds = %314, %310
  br label %344

327:                                              ; preds = %266
  %328 = load i64, i64* %12, align 8
  %329 = and i64 %328, 4
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %327
  %332 = load i8*, i8** %6, align 8
  %333 = load i64, i64* %7, align 8
  %334 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %332, i64 %333, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  store i32 %334, i32* %8, align 4
  %335 = load i32, i32* %8, align 4
  %336 = load i8*, i8** %6, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i8, i8* %336, i64 %337
  store i8* %338, i8** %6, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* %15, align 8
  %342 = sub i64 %341, %340
  store i64 %342, i64* %15, align 8
  br label %343

343:                                              ; preds = %331, %327
  br label %344

344:                                              ; preds = %343, %326
  %345 = load i32, i32* %8, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %4, align 4
  br label %543

349:                                              ; preds = %344
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = load i64, i64* %15, align 8
  %353 = sub i64 %352, %351
  store i64 %353, i64* %15, align 8
  %354 = load i64, i64* %7, align 8
  %355 = load i64, i64* %15, align 8
  %356 = sub i64 %354, %355
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %4, align 4
  br label %543

358:                                              ; preds = %242
  %359 = load i64, i64* %7, align 8
  store i64 %359, i64* %16, align 8
  %360 = load i8*, i8** %6, align 8
  %361 = load i64, i64* %7, align 8
  %362 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %360, i64 %361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  store i32 %362, i32* %8, align 4
  %363 = load i32, i32* %8, align 4
  %364 = load i8*, i8** %6, align 8
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds i8, i8* %364, i64 %365
  store i8* %366, i8** %6, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = load i64, i64* %16, align 8
  %370 = sub i64 %369, %368
  store i64 %370, i64* %16, align 8
  %371 = load i64, i64* %12, align 8
  %372 = and i64 %371, 1
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %386

374:                                              ; preds = %358
  %375 = load i8*, i8** %6, align 8
  %376 = load i64, i64* %7, align 8
  %377 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %375, i64 %376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  store i32 %377, i32* %8, align 4
  %378 = load i32, i32* %8, align 4
  %379 = load i8*, i8** %6, align 8
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds i8, i8* %379, i64 %380
  store i8* %381, i8** %6, align 8
  %382 = load i32, i32* %8, align 4
  %383 = sext i32 %382 to i64
  %384 = load i64, i64* %16, align 8
  %385 = sub i64 %384, %383
  store i64 %385, i64* %16, align 8
  br label %386

386:                                              ; preds = %374, %358
  %387 = load i64, i64* %12, align 8
  %388 = and i64 %387, 2
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %402

390:                                              ; preds = %386
  %391 = load i8*, i8** %6, align 8
  %392 = load i64, i64* %7, align 8
  %393 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %391, i64 %392, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  store i32 %393, i32* %8, align 4
  %394 = load i32, i32* %8, align 4
  %395 = load i8*, i8** %6, align 8
  %396 = sext i32 %394 to i64
  %397 = getelementptr inbounds i8, i8* %395, i64 %396
  store i8* %397, i8** %6, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = load i64, i64* %16, align 8
  %401 = sub i64 %400, %399
  store i64 %401, i64* %16, align 8
  br label %402

402:                                              ; preds = %390, %386
  %403 = load i32, i32* %8, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %402
  %406 = load i32, i32* %8, align 4
  store i32 %406, i32* %4, align 4
  br label %543

407:                                              ; preds = %402
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = load i64, i64* %16, align 8
  %411 = sub i64 %410, %409
  store i64 %411, i64* %16, align 8
  %412 = load i64, i64* %7, align 8
  %413 = load i64, i64* %16, align 8
  %414 = sub i64 %412, %413
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %4, align 4
  br label %543

416:                                              ; preds = %242
  store i32 0, i32* %4, align 4
  br label %543

417:                                              ; preds = %3, %3
  %418 = load i8*, i8** %6, align 8
  %419 = load i64, i64* %7, align 8
  %420 = load i8*, i8** %13, align 8
  %421 = load i64, i64* %12, align 8
  %422 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %418, i64 %419, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* %420, i64 %421)
  store i32 %422, i32* %4, align 4
  br label %543

423:                                              ; preds = %3
  %424 = load i32, i32* %11, align 4
  switch i32 %424, label %479 [
    i32 0, label %425
    i32 1, label %425
    i32 2, label %456
    i32 3, label %461
  ]

425:                                              ; preds = %423, %423
  %426 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %427 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load i32, i32* @NS_FLAG, align 4
  %430 = sext i32 %429 to i64
  %431 = and i64 %428, %430
  %432 = icmp ne i64 %431, 0
  %433 = xor i1 %432, true
  %434 = xor i1 %433, true
  %435 = zext i1 %434 to i32
  store i32 %435, i32* %9, align 4
  %436 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %437 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load i32, i32* @EL_FLAG, align 4
  %440 = sext i32 %439 to i64
  %441 = and i64 %438, %440
  %442 = lshr i64 %441, 61
  %443 = trunc i64 %442 to i32
  store i32 %443, i32* %10, align 4
  %444 = load i64, i64* %12, align 8
  %445 = and i64 %444, 72057594037927935
  store i64 %445, i64* %12, align 8
  %446 = load i8*, i8** %6, align 8
  %447 = load i64, i64* %7, align 8
  %448 = load i32, i32* %11, align 4
  %449 = icmp eq i32 %448, 1
  %450 = zext i1 %449 to i64
  %451 = select i1 %449, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)
  %452 = load i64, i64* %12, align 8
  %453 = load i32, i32* %10, align 4
  %454 = load i32, i32* %9, align 4
  %455 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %446, i64 %447, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %451, i64 %452, i32 %453, i32 %454)
  store i32 %455, i32* %4, align 4
  br label %543

456:                                              ; preds = %423
  %457 = load i8*, i8** %6, align 8
  %458 = load i64, i64* %7, align 8
  %459 = load i64, i64* %12, align 8
  %460 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %457, i64 %458, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i64 %459)
  store i32 %460, i32* %4, align 4
  br label %543

461:                                              ; preds = %423
  %462 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %463 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = load i32, i32* @NS_FLAG, align 4
  %466 = sext i32 %465 to i64
  %467 = and i64 %464, %466
  %468 = icmp ne i64 %467, 0
  %469 = xor i1 %468, true
  %470 = xor i1 %469, true
  %471 = zext i1 %470 to i32
  store i32 %471, i32* %9, align 4
  %472 = load i64, i64* %12, align 8
  %473 = and i64 %472, 72057594037927935
  store i64 %473, i64* %12, align 8
  %474 = load i8*, i8** %6, align 8
  %475 = load i64, i64* %7, align 8
  %476 = load i64, i64* %12, align 8
  %477 = load i32, i32* %9, align 4
  %478 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %474, i64 %475, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i64 %476, i32 %477)
  store i32 %478, i32* %4, align 4
  br label %543

479:                                              ; preds = %423
  store i32 0, i32* %4, align 4
  br label %543

480:                                              ; preds = %3
  %481 = load i8*, i8** %6, align 8
  %482 = load i64, i64* %7, align 8
  %483 = load i8*, i8** %13, align 8
  %484 = load i64, i64* %12, align 8
  %485 = load i32, i32* %11, align 4
  %486 = add nsw i32 %485, 1
  %487 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %481, i64 %482, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* %483, i64 %484, i32 %486)
  store i32 %487, i32* %4, align 4
  br label %543

488:                                              ; preds = %3
  %489 = load i64, i64* %7, align 8
  store i64 %489, i64* %17, align 8
  %490 = load i8*, i8** %6, align 8
  %491 = load i64, i64* %7, align 8
  %492 = load i8*, i8** %13, align 8
  %493 = load i64, i64* %12, align 8
  %494 = trunc i64 %493 to i16
  %495 = zext i16 %494 to i32
  %496 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %490, i64 %491, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %492, i32 %495)
  store i32 %496, i32* %8, align 4
  %497 = load i32, i32* %8, align 4
  %498 = load i8*, i8** %6, align 8
  %499 = sext i32 %497 to i64
  %500 = getelementptr inbounds i8, i8* %498, i64 %499
  store i8* %500, i8** %6, align 8
  %501 = load i32, i32* %8, align 4
  %502 = sext i32 %501 to i64
  %503 = load i64, i64* %17, align 8
  %504 = sub i64 %503, %502
  store i64 %504, i64* %17, align 8
  %505 = load i32, i32* %11, align 4
  switch i32 %505, label %518 [
    i32 0, label %506
    i32 1, label %510
    i32 2, label %514
  ]

506:                                              ; preds = %488
  %507 = load i8*, i8** %6, align 8
  %508 = load i64, i64* %7, align 8
  %509 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %507, i64 %508, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  store i32 %509, i32* %8, align 4
  br label %519

510:                                              ; preds = %488
  %511 = load i8*, i8** %6, align 8
  %512 = load i64, i64* %7, align 8
  %513 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %511, i64 %512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  store i32 %513, i32* %8, align 4
  br label %519

514:                                              ; preds = %488
  %515 = load i8*, i8** %6, align 8
  %516 = load i64, i64* %7, align 8
  %517 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %515, i64 %516, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  store i32 %517, i32* %8, align 4
  br label %519

518:                                              ; preds = %488
  store i32 0, i32* %8, align 4
  br label %519

519:                                              ; preds = %518, %514, %510, %506
  %520 = load i32, i32* %8, align 4
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  %523 = load i32, i32* %8, align 4
  store i32 %523, i32* %4, align 4
  br label %543

524:                                              ; preds = %519
  %525 = load i32, i32* %8, align 4
  %526 = sext i32 %525 to i64
  %527 = load i64, i64* %17, align 8
  %528 = sub i64 %527, %526
  store i64 %528, i64* %17, align 8
  %529 = load i64, i64* %7, align 8
  %530 = load i64, i64* %17, align 8
  %531 = sub i64 %529, %530
  %532 = trunc i64 %531 to i32
  store i32 %532, i32* %4, align 4
  br label %543

533:                                              ; preds = %3
  br label %534

534:                                              ; preds = %533
  %535 = load i8*, i8** %6, align 8
  %536 = load i64, i64* %7, align 8
  %537 = load i8*, i8** %13, align 8
  %538 = load i64, i64* %12, align 8
  %539 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %5, align 8
  %540 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %535, i64 %536, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* %537, i64 %538, i32 %541)
  store i32 %542, i32* %4, align 4
  br label %543

543:                                              ; preds = %534, %524, %522, %480, %479, %461, %456, %425, %417, %416, %407, %405, %349, %347, %244, %233, %231, %31
  %544 = load i32, i32* %4, align 4
  ret i32 %544
}

declare dso_local i8* @arm_spe_pkt_name(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

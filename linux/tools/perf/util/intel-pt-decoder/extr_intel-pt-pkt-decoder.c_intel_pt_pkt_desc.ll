; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_pkt_desc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_pkt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@BIT63 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s no ip\00", align 1
@__fallthrough = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"%s 0x%llx\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s CTC 0x%x FC 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s %lld\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%s TXAbort:%u InTX:%u\00", align 1
@NR_FLAG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"%s 0x%llx (NR=%d)\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%s 0x%llx IP:0\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%s 0x%llx IP:1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s IP:0\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%s IP:1\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"%s 0x%llx Hints 0x%x Extensions 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"%s 0x%llx HW:%u CState:%u Sub-CState:%u\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"%s 0x%llx Last CState:%u Deepest CState:%u Wake Reason 0x%x\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"%s SZ %s-byte Type 0x%llx\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s ID 0x%02x Value 0x%llx\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%s 0x%llx (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pt_pkt_desc(%struct.intel_pt_pkt* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_pt_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.intel_pt_pkt* %0, %struct.intel_pt_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %15 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %18 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @intel_pt_pkt_name(i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %22 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %265 [
    i32 159, label %24
    i32 143, label %24
    i32 141, label %24
    i32 140, label %24
    i32 130, label %24
    i32 144, label %24
    i32 131, label %29
    i32 134, label %106
    i32 133, label %106
    i32 135, label %106
    i32 150, label %106
    i32 153, label %118
    i32 128, label %118
    i32 146, label %118
    i32 149, label %118
    i32 154, label %118
    i32 129, label %118
    i32 132, label %124
    i32 148, label %134
    i32 147, label %140
    i32 142, label %152
    i32 139, label %172
    i32 138, label %178
    i32 157, label %184
    i32 152, label %184
    i32 156, label %189
    i32 151, label %189
    i32 145, label %194
    i32 137, label %207
    i32 136, label %227
    i32 158, label %244
    i32 155, label %256
  ]

24:                                               ; preds = %3, %3, %3, %3, %3, %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %4, align 4
  br label %275

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %275

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %13, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %83, %39
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %51 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %48
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @BIT63, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %60, i64 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* %8, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %64, i64 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %275

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %11, align 8
  %82 = shl i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %48

86:                                               ; preds = %48
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %90 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %87, i64 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %275

97:                                               ; preds = %86
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %13, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %13, align 8
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %275

106:                                              ; preds = %3, %3, %3, %3
  %107 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %108 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %112, i64 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  store i32 %115, i32* %4, align 4
  br label %275

116:                                              ; preds = %106
  %117 = load i32, i32* @__fallthrough, align 4
  br label %118

118:                                              ; preds = %3, %3, %3, %3, %3, %3, %116
  %119 = load i8*, i8** %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %119, i64 %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %121, i64 %122)
  store i32 %123, i32* %4, align 4
  br label %275

124:                                              ; preds = %3
  %125 = load i8*, i8** %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i64, i64* %11, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %131 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %125, i64 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %127, i32 %129, i32 %132)
  store i32 %133, i32* %4, align 4
  br label %275

134:                                              ; preds = %3
  %135 = load i8*, i8** %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %135, i64 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %137, i64 %138)
  store i32 %139, i32* %4, align 4
  br label %275

140:                                              ; preds = %3
  %141 = load i8*, i8** %6, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load i64, i64* %11, align 8
  %145 = lshr i64 %144, 1
  %146 = trunc i64 %145 to i32
  %147 = and i32 %146, 1
  %148 = load i64, i64* %11, align 8
  %149 = trunc i64 %148 to i32
  %150 = and i32 %149, 1
  %151 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %141, i64 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %143, i32 %147, i32 %150)
  store i32 %151, i32* %4, align 4
  br label %275

152:                                              ; preds = %3
  %153 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %154 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NR_FLAG, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  store i32 %160, i32* %10, align 4
  %161 = load i64, i64* @NR_FLAG, align 8
  %162 = xor i64 %161, -1
  %163 = load i64, i64* %11, align 8
  %164 = and i64 %163, %162
  store i64 %164, i64* %11, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %165, i64 %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %167, i64 %168, i32 %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %275

172:                                              ; preds = %3
  %173 = load i8*, i8** %6, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %173, i64 %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %175, i64 %176)
  store i32 %177, i32* %4, align 4
  br label %275

178:                                              ; preds = %3
  %179 = load i8*, i8** %6, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = load i64, i64* %11, align 8
  %183 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %179, i64 %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %181, i64 %182)
  store i32 %183, i32* %4, align 4
  br label %275

184:                                              ; preds = %3, %3
  %185 = load i8*, i8** %6, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %185, i64 %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %187)
  store i32 %188, i32* %4, align 4
  br label %275

189:                                              ; preds = %3, %3
  %190 = load i8*, i8** %6, align 8
  %191 = load i64, i64* %7, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %190, i64 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %192)
  store i32 %193, i32* %4, align 4
  br label %275

194:                                              ; preds = %3
  %195 = load i8*, i8** %6, align 8
  %196 = load i64, i64* %7, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = load i64, i64* %11, align 8
  %199 = load i64, i64* %11, align 8
  %200 = and i64 %199, 255
  %201 = trunc i64 %200 to i32
  %202 = load i64, i64* %11, align 8
  %203 = lshr i64 %202, 32
  %204 = and i64 %203, 3
  %205 = trunc i64 %204 to i32
  %206 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %195, i64 %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i8* %197, i64 %198, i32 %201, i32 %205)
  store i32 %206, i32* %4, align 4
  br label %275

207:                                              ; preds = %3
  %208 = load i8*, i8** %6, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load i8*, i8** %12, align 8
  %211 = load i64, i64* %11, align 8
  %212 = load i64, i64* %11, align 8
  %213 = and i64 %212, 128
  %214 = icmp ne i64 %213, 0
  %215 = xor i1 %214, true
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = load i64, i64* %11, align 8
  %219 = lshr i64 %218, 12
  %220 = and i64 %219, 15
  %221 = trunc i64 %220 to i32
  %222 = load i64, i64* %11, align 8
  %223 = lshr i64 %222, 8
  %224 = and i64 %223, 15
  %225 = trunc i64 %224 to i32
  %226 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %208, i64 %209, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* %210, i64 %211, i32 %217, i32 %221, i32 %225)
  store i32 %226, i32* %4, align 4
  br label %275

227:                                              ; preds = %3
  %228 = load i8*, i8** %6, align 8
  %229 = load i64, i64* %7, align 8
  %230 = load i8*, i8** %12, align 8
  %231 = load i64, i64* %11, align 8
  %232 = load i64, i64* %11, align 8
  %233 = lshr i64 %232, 4
  %234 = and i64 %233, 15
  %235 = trunc i64 %234 to i32
  %236 = load i64, i64* %11, align 8
  %237 = and i64 %236, 15
  %238 = trunc i64 %237 to i32
  %239 = load i64, i64* %11, align 8
  %240 = lshr i64 %239, 8
  %241 = and i64 %240, 15
  %242 = trunc i64 %241 to i32
  %243 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %228, i64 %229, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0), i8* %230, i64 %231, i32 %235, i32 %238, i32 %242)
  store i32 %243, i32* %4, align 4
  br label %275

244:                                              ; preds = %3
  %245 = load i8*, i8** %6, align 8
  %246 = load i64, i64* %7, align 8
  %247 = load i8*, i8** %12, align 8
  %248 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %249 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)
  %254 = load i64, i64* %11, align 8
  %255 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %245, i64 %246, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %247, i8* %253, i64 %254)
  store i32 %255, i32* %4, align 4
  br label %275

256:                                              ; preds = %3
  %257 = load i8*, i8** %6, align 8
  %258 = load i64, i64* %7, align 8
  %259 = load i8*, i8** %12, align 8
  %260 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %261 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i64, i64* %11, align 8
  %264 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %257, i64 %258, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %259, i32 %262, i64 %263)
  store i32 %264, i32* %4, align 4
  br label %275

265:                                              ; preds = %3
  br label %266

266:                                              ; preds = %265
  %267 = load i8*, i8** %6, align 8
  %268 = load i64, i64* %7, align 8
  %269 = load i8*, i8** %12, align 8
  %270 = load i64, i64* %11, align 8
  %271 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %272 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %267, i64 %268, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* %269, i64 %270, i32 %273)
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %266, %256, %244, %227, %207, %194, %189, %184, %178, %172, %152, %140, %134, %124, %118, %111, %97, %95, %70, %37, %24
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i8* @intel_pt_pkt_name(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

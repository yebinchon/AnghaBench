; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_cpuid.c_get_cpu_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_cpuid.c_get_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpupower_cpu_info = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@X86_VENDOR_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"processor\09: \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"processor\09: %u\00", align 1
@base_cpu = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"vendor_id\00", align 1
@X86_VENDOR_MAX = common dso_local global i32 0, align 4
@cpu_vendor_table = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"cpu family\09: \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"cpu family\09: %u\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"model\09\09: \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"model\09\09: %u\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"stepping\09: \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"stepping\09: %u\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@X86_VENDOR_AMD = common dso_local global i32 0, align 4
@X86_VENDOR_HYGON = common dso_local global i32 0, align 4
@X86_VENDOR_INTEL = common dso_local global i32 0, align 4
@CPUPOWER_CAP_INV_TSC = common dso_local global i32 0, align 4
@CPUPOWER_CAP_APERF = common dso_local global i32 0, align 4
@CPUPOWER_CAP_AMD_CBP = common dso_local global i32 0, align 4
@CPUPOWER_CAP_INTEL_IDA = common dso_local global i32 0, align 4
@CPUPOWER_CAP_PERF_BIAS = common dso_local global i32 0, align 4
@CPUPOWER_CAP_HAS_TURBO_RATIO = common dso_local global i32 0, align 4
@CPUPOWER_CAP_IS_SNB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cpu_info(%struct.cpupower_cpu_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpupower_cpu_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpupower_cpu_info* %0, %struct.cpupower_cpu_info** %3, align 8
  store i32 16777215, i32* %8, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @X86_VENDOR_UNKNOWN, align 4
  %15 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %16 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %19 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %22 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %25 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %27 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %26, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %295

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %144, %59, %45, %34
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @feof(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %145

40:                                               ; preds = %35
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @fgets(i8* %41, i32 64, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %35

46:                                               ; preds = %40
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 62
  store i8 0, i8* %47, align 2
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %53 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* @base_cpu, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %35

60:                                               ; preds = %54
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %62 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @X86_VENDOR_MAX, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %71 = load i32*, i32** @cpu_vendor_table, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @strstr(i8* %70, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %81 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %65

86:                                               ; preds = %65
  br label %144

87:                                               ; preds = %60
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %89 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 13)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %93 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %94 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %93, i32 0, i32 1
  %95 = call i32 @sscanf(i8* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %94)
  br label %143

96:                                               ; preds = %87
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %98 = call i32 @strncmp(i8* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %102 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %103 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %102, i32 0, i32 2
  %104 = call i32 @sscanf(i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %103)
  br label %142

105:                                              ; preds = %96
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %107 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 10)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %141, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %111 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %112 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %111, i32 0, i32 3
  %113 = call i32 @sscanf(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32* %112)
  %114 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %115 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @X86_VENDOR_UNKNOWN, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %137, label %119

119:                                              ; preds = %109
  %120 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %121 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %119
  %126 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %127 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %133 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131, %125, %119, %109
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %11, align 4
  br label %148

140:                                              ; preds = %131
  store i32 0, i32* %11, align 4
  br label %148

141:                                              ; preds = %105
  br label %142

142:                                              ; preds = %141, %100
  br label %143

143:                                              ; preds = %142, %91
  br label %144

144:                                              ; preds = %143, %86
  br label %35

145:                                              ; preds = %35
  %146 = load i32, i32* @ENODEV, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %145, %140, %137
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @fclose(i32* %149)
  %151 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %152 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @X86_VENDOR_AMD, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %148
  %157 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %158 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @X86_VENDOR_HYGON, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %164 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @X86_VENDOR_INTEL, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %2, align 4
  br label %295

170:                                              ; preds = %162, %156, %148
  %171 = call i32 @cpuid_eax(i32 0)
  store i32 %171, i32* %9, align 4
  %172 = call i32 @cpuid_eax(i32 -2147483648)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp uge i32 %173, -2147483641
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = call i32 @cpuid_edx(i32 -2147483641)
  %177 = and i32 %176, 256
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i32, i32* @CPUPOWER_CAP_INV_TSC, align 4
  %181 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %182 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %175, %170
  %186 = load i32, i32* %9, align 4
  %187 = icmp uge i32 %186, 6
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = call i32 @cpuid_ecx(i32 6)
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i32, i32* @CPUPOWER_CAP_APERF, align 4
  %194 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %195 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %188, %185
  %199 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %200 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @X86_VENDOR_AMD, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %210, label %204

204:                                              ; preds = %198
  %205 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %206 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @X86_VENDOR_HYGON, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %204, %198
  %211 = load i32, i32* %10, align 4
  %212 = icmp uge i32 %211, -2147483641
  br i1 %212, label %213, label %223

213:                                              ; preds = %210
  %214 = call i32 @cpuid_edx(i32 -2147483641)
  %215 = and i32 %214, 512
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, i32* @CPUPOWER_CAP_AMD_CBP, align 4
  %219 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %220 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %213, %210
  br label %224

224:                                              ; preds = %223, %204
  %225 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %226 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @X86_VENDOR_INTEL, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %224
  %231 = load i32, i32* %9, align 4
  %232 = icmp uge i32 %231, 6
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = call i32 @cpuid_eax(i32 6)
  %235 = and i32 %234, 2
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32, i32* @CPUPOWER_CAP_INTEL_IDA, align 4
  %239 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %240 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %237, %233, %230
  br label %244

244:                                              ; preds = %243, %224
  %245 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %246 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @X86_VENDOR_INTEL, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %293

250:                                              ; preds = %244
  %251 = load i32, i32* %9, align 4
  %252 = icmp uge i32 %251, 6
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  %254 = call i32 @cpuid_ecx(i32 6)
  %255 = and i32 %254, 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i32, i32* @CPUPOWER_CAP_PERF_BIAS, align 4
  %259 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %260 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %253, %250
  %264 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %265 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 6
  br i1 %267, label %268, label %292

268:                                              ; preds = %263
  %269 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %270 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  switch i32 %271, label %290 [
    i32 26, label %272
    i32 30, label %272
    i32 31, label %272
    i32 37, label %272
    i32 44, label %272
    i32 42, label %278
    i32 45, label %278
    i32 58, label %278
    i32 62, label %278
    i32 46, label %289
    i32 47, label %289
  ]

272:                                              ; preds = %268, %268, %268, %268, %268
  %273 = load i32, i32* @CPUPOWER_CAP_HAS_TURBO_RATIO, align 4
  %274 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %275 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %291

278:                                              ; preds = %268, %268, %268, %268
  %279 = load i32, i32* @CPUPOWER_CAP_HAS_TURBO_RATIO, align 4
  %280 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %281 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load i32, i32* @CPUPOWER_CAP_IS_SNB, align 4
  %285 = load %struct.cpupower_cpu_info*, %struct.cpupower_cpu_info** %3, align 8
  %286 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4
  br label %291

289:                                              ; preds = %268, %268
  br label %290

290:                                              ; preds = %268, %289
  br label %291

291:                                              ; preds = %290, %278, %272
  br label %292

292:                                              ; preds = %291, %263
  br label %293

293:                                              ; preds = %292, %244
  %294 = load i32, i32* %11, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %293, %168, %31
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @cpuid_edx(i32) #1

declare dso_local i32 @cpuid_ecx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

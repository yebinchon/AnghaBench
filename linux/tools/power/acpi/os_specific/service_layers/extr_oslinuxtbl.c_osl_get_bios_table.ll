; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_get_bios_table.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_get_bios_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.acpi_table_header = type { i32, i8* }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_RSDP_NAME = common dso_local global i8* null, align 8
@ACPI_SIG_RSDT = common dso_local global i8* null, align 8
@ACPI_SIG_XSDT = common dso_local global i8* null, align 8
@ACPI_SIG_DSDT = common dso_local global i8* null, align 8
@ACPI_SIG_FACS = common dso_local global i8* null, align 8
@gbl_fadt = common dso_local global %struct.TYPE_12__* null, align 8
@MIN_FADT_FOR_XDSDT = common dso_local global i64 0, align 8
@MIN_FADT_FOR_DSDT = common dso_local global i64 0, align 8
@MIN_FADT_FOR_XFACS = common dso_local global i64 0, align 8
@MIN_FADT_FOR_FACS = common dso_local global i64 0, align 8
@gbl_revision = common dso_local global i32 0, align 4
@AE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@gbl_rsdp = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@gbl_rsdp_address = common dso_local global i64 0, align 8
@ACPI_SIG_RSDP = common dso_local global i8* null, align 8
@gbl_xsdt = common dso_local global %struct.TYPE_10__* null, align 8
@gbl_rsdt = common dso_local global %struct.TYPE_10__* null, align 8
@AE_LIMIT = common dso_local global i32 0, align 4
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.acpi_table_header**, i64*)* @osl_get_bios_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osl_get_bios_table(i8* %0, i32 %1, %struct.acpi_table_header** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_table_header**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.acpi_table_header*, align 8
  %11 = alloca %struct.acpi_table_header*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.acpi_table_header** %2, %struct.acpi_table_header*** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %10, align 8
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %11, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %19, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** @ACPI_RSDP_NAME, align 8
  %24 = call i64 @ACPI_COMPARE_NAMESEG(i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** @ACPI_SIG_RSDT, align 8
  %29 = call i64 @ACPI_COMPARE_NAMESEG(i8* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** @ACPI_SIG_XSDT, align 8
  %34 = call i64 @ACPI_COMPARE_NAMESEG(i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** @ACPI_SIG_DSDT, align 8
  %39 = call i64 @ACPI_COMPARE_NAMESEG(i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** @ACPI_SIG_FACS, align 8
  %44 = call i64 @ACPI_COMPARE_NAMESEG(i8* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %208

46:                                               ; preds = %41, %36, %31, %26, %4
  br label %47

47:                                               ; preds = %202, %46
  store i64 0, i64* %16, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** @ACPI_SIG_DSDT, align 8
  %50 = call i64 @ACPI_COMPARE_NAMESEG(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %47
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %93

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MIN_FADT_FOR_XDSDT, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %16, align 8
  br label %92

74:                                               ; preds = %67, %62, %55
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MIN_FADT_FOR_DSDT, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %17, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %16, align 8
  br label %91

91:                                               ; preds = %87, %81, %74
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %52
  br label %178

94:                                               ; preds = %47
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** @ACPI_SIG_FACS, align 8
  %97 = call i64 @ACPI_COMPARE_NAMESEG(i8* %95, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %141

99:                                               ; preds = %94
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %140

102:                                              ; preds = %99
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MIN_FADT_FOR_XFACS, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %102
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* %15, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %16, align 8
  br label %139

121:                                              ; preds = %114, %109, %102
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MIN_FADT_FOR_FACS, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %17, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gbl_fadt, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %16, align 8
  br label %138

138:                                              ; preds = %134, %128, %121
  br label %139

139:                                              ; preds = %138, %117
  br label %140

140:                                              ; preds = %139, %99
  br label %177

141:                                              ; preds = %94
  %142 = load i8*, i8** %6, align 8
  %143 = load i8*, i8** @ACPI_SIG_XSDT, align 8
  %144 = call i64 @ACPI_COMPARE_NAMESEG(i8* %142, i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load i32, i32* @gbl_revision, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %150, i32* %5, align 4
  br label %329

151:                                              ; preds = %146
  %152 = load i32, i32* %15, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gbl_rsdp, i32 0, i32 1), align 8
  store i64 %155, i64* %16, align 8
  br label %156

156:                                              ; preds = %154, %151
  br label %176

157:                                              ; preds = %141
  %158 = load i8*, i8** %6, align 8
  %159 = load i8*, i8** @ACPI_SIG_RSDT, align 8
  %160 = call i64 @ACPI_COMPARE_NAMESEG(i8* %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gbl_rsdp, i32 0, i32 0), align 8
  store i64 %166, i64* %16, align 8
  br label %167

167:                                              ; preds = %165, %162
  br label %175

168:                                              ; preds = %157
  %169 = load i32, i32* %15, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, i64* @gbl_rsdp_address, align 8
  store i64 %172, i64* %16, align 8
  %173 = load i8*, i8** @ACPI_SIG_RSDP, align 8
  store i8* %173, i8** %6, align 8
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %167
  br label %176

176:                                              ; preds = %175, %156
  br label %177

177:                                              ; preds = %176, %140
  br label %178

178:                                              ; preds = %177, %93
  %179 = load i64, i64* %16, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %299

182:                                              ; preds = %178
  %183 = load i64, i64* %16, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = call i32 @osl_map_table(i64 %183, i8* %184, %struct.acpi_table_header** %11)
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = call i64 @ACPI_FAILURE(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = load i32, i32* %19, align 4
  store i32 %190, i32* %5, align 4
  br label %329

191:                                              ; preds = %182
  %192 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %193 = call i32 @ap_get_table_length(%struct.acpi_table_header* %192)
  store i32 %193, i32* %18, align 4
  %194 = load i64, i64* %17, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i64, i64* %16, align 8
  store i64 %197, i64* %17, align 8
  br label %198

198:                                              ; preds = %196, %191
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %204 = call i32 @osl_unmap_table(%struct.acpi_table_header* %203)
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %11, align 8
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %47

207:                                              ; preds = %198
  br label %298

208:                                              ; preds = %41
  %209 = call i64 (...) @osl_can_use_xsdt()
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %208
  store i32 4, i32* %14, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbl_xsdt, align 8
  %213 = call i32* @ACPI_CAST8(%struct.TYPE_10__* %212)
  %214 = getelementptr inbounds i32, i32* %213, i64 16
  store i32* %214, i32** %12, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbl_xsdt, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = sub i64 %219, 16
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = udiv i64 %220, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %13, align 4
  br label %239

225:                                              ; preds = %208
  store i32 4, i32* %14, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbl_rsdt, align 8
  %227 = call i32* @ACPI_CAST8(%struct.TYPE_10__* %226)
  %228 = getelementptr inbounds i32, i32* %227, i64 16
  store i32* %228, i32** %12, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbl_rsdt, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = sub i64 %233, 16
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = udiv i64 %234, %236
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %13, align 4
  br label %239

239:                                              ; preds = %225, %211
  store i32 0, i32* %20, align 4
  br label %240

240:                                              ; preds = %290, %239
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %297

244:                                              ; preds = %240
  %245 = call i64 (...) @osl_can_use_xsdt()
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i32*, i32** %12, align 8
  %249 = call i64* @ACPI_CAST64(i32* %248)
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %16, align 8
  br label %255

251:                                              ; preds = %244
  %252 = load i32*, i32** %12, align 8
  %253 = call i64* @ACPI_CAST32(i32* %252)
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %16, align 8
  br label %255

255:                                              ; preds = %251, %247
  %256 = load i64, i64* %16, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %290

259:                                              ; preds = %255
  %260 = load i64, i64* %16, align 8
  %261 = call i32 @osl_map_table(i64 %260, i8* null, %struct.acpi_table_header** %11)
  store i32 %261, i32* %19, align 4
  %262 = load i32, i32* %19, align 4
  %263 = call i64 @ACPI_FAILURE(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i32, i32* %19, align 4
  store i32 %266, i32* %5, align 4
  br label %329

267:                                              ; preds = %259
  %268 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %269 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  store i32 %270, i32* %18, align 4
  %271 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %272 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = load i8*, i8** %6, align 8
  %275 = call i64 @ACPI_COMPARE_NAMESEG(i8* %273, i8* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %267
  %278 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %279 = call i32 @osl_unmap_table(%struct.acpi_table_header* %278)
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %11, align 8
  br label %290

280:                                              ; preds = %267
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %286 = call i32 @osl_unmap_table(%struct.acpi_table_header* %285)
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %11, align 8
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %15, align 4
  br label %290

289:                                              ; preds = %280
  br label %297

290:                                              ; preds = %284, %277, %258
  %291 = load i32, i32* %20, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %20, align 4
  %293 = load i32, i32* %14, align 4
  %294 = load i32*, i32** %12, align 8
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  store i32* %296, i32** %12, align 8
  br label %240

297:                                              ; preds = %289, %240
  br label %298

298:                                              ; preds = %297, %207
  br label %299

299:                                              ; preds = %298, %181
  %300 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %301 = icmp ne %struct.acpi_table_header* %300, null
  br i1 %301, label %304, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* @AE_LIMIT, align 4
  store i32 %303, i32* %5, align 4
  br label %329

304:                                              ; preds = %299
  %305 = load i32, i32* %18, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = load i32, i32* @AE_BAD_HEADER, align 4
  store i32 %308, i32* %19, align 4
  br label %325

309:                                              ; preds = %304
  %310 = load i32, i32* %18, align 4
  %311 = call %struct.acpi_table_header* @calloc(i32 1, i32 %310)
  store %struct.acpi_table_header* %311, %struct.acpi_table_header** %10, align 8
  %312 = load %struct.acpi_table_header*, %struct.acpi_table_header** %10, align 8
  %313 = icmp ne %struct.acpi_table_header* %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %309
  %315 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %315, i32* %19, align 4
  br label %325

316:                                              ; preds = %309
  %317 = load %struct.acpi_table_header*, %struct.acpi_table_header** %10, align 8
  %318 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %319 = load i32, i32* %18, align 4
  %320 = call i32 @memcpy(%struct.acpi_table_header* %317, %struct.acpi_table_header* %318, i32 %319)
  %321 = load i64, i64* %16, align 8
  %322 = load i64*, i64** %9, align 8
  store i64 %321, i64* %322, align 8
  %323 = load %struct.acpi_table_header*, %struct.acpi_table_header** %10, align 8
  %324 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %8, align 8
  store %struct.acpi_table_header* %323, %struct.acpi_table_header** %324, align 8
  br label %325

325:                                              ; preds = %316, %314, %307
  %326 = load %struct.acpi_table_header*, %struct.acpi_table_header** %11, align 8
  %327 = call i32 @osl_unmap_table(%struct.acpi_table_header* %326)
  %328 = load i32, i32* %19, align 4
  store i32 %328, i32* %5, align 4
  br label %329

329:                                              ; preds = %325, %302, %265, %189, %149
  %330 = load i32, i32* %5, align 4
  ret i32 %330
}

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i8*, i8*) #1

declare dso_local i32 @osl_map_table(i64, i8*, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ap_get_table_length(%struct.acpi_table_header*) #1

declare dso_local i32 @osl_unmap_table(%struct.acpi_table_header*) #1

declare dso_local i64 @osl_can_use_xsdt(...) #1

declare dso_local i32* @ACPI_CAST8(%struct.TYPE_10__*) #1

declare dso_local i64* @ACPI_CAST64(i32*) #1

declare dso_local i64* @ACPI_CAST32(i32*) #1

declare dso_local %struct.acpi_table_header* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.acpi_table_header*, %struct.acpi_table_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

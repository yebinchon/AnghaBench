; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.msr_counter*, %struct.msr_counter*, %struct.msr_counter* }
%struct.msr_counter = type { i64, i32, i64, i32, %struct.msr_counter* }

@BIC_USEC = common dso_local global i32 0, align 4
@outp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%susec\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BIC_TOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%sTime_Of_Day_Seconds\00", align 1
@BIC_Package = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%sPackage\00", align 1
@BIC_Die = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%sDie\00", align 1
@BIC_Node = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%sNode\00", align 1
@BIC_Core = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%sCore\00", align 1
@BIC_CPU = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%sCPU\00", align 1
@BIC_APIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%sAPIC\00", align 1
@BIC_X2APIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"%sX2APIC\00", align 1
@BIC_Avg_MHz = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"%sAvg_MHz\00", align 1
@BIC_Busy = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"%sBusy%%\00", align 1
@BIC_Bzy_MHz = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"%sBzy_MHz\00", align 1
@BIC_TSC_MHz = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"%sTSC_MHz\00", align 1
@BIC_IRQ = common dso_local global i32 0, align 4
@sums_need_wide_columns = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"%s     IRQ\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%sIRQ\00", align 1
@BIC_SMI = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"%sSMI\00", align 1
@sys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"%s%18.18s\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%s%10.10s\00", align 1
@COUNTER_ITEMS = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"%s%8s\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@BIC_CPU_c1 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"%sCPU%%c1\00", align 1
@BIC_CPU_c3 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"%sCPU%%c3\00", align 1
@BIC_CPU_c6 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"%sCPU%%c6\00", align 1
@BIC_CPU_c7 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"%sCPU%%c7\00", align 1
@BIC_Mod_c6 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"%sMod%%c6\00", align 1
@BIC_CoreTmp = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"%sCoreTmp\00", align 1
@do_rapl = common dso_local global i32 0, align 4
@rapl_joules = common dso_local global i64 0, align 8
@BIC_CorWatt = common dso_local global i32 0, align 4
@RAPL_PER_CORE_ENERGY = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"%sCorWatt\00", align 1
@BIC_Cor_J = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"%sCor_J\00", align 1
@BIC_PkgTmp = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"%sPkgTmp\00", align 1
@BIC_GFX_rc6 = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [11 x i8] c"%sGFX%%rc6\00", align 1
@BIC_GFXMHz = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"%sGFXMHz\00", align 1
@BIC_Totl_c0 = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"%sTotl%%C0\00", align 1
@BIC_Any_c0 = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"%sAny%%C0\00", align 1
@BIC_GFX_c0 = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"%sGFX%%C0\00", align 1
@BIC_CPUGFX = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [11 x i8] c"%sCPUGFX%%\00", align 1
@BIC_Pkgpc2 = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"%sPkg%%pc2\00", align 1
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"%sPkg%%pc3\00", align 1
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"%sPkg%%pc6\00", align 1
@BIC_Pkgpc7 = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [11 x i8] c"%sPkg%%pc7\00", align 1
@BIC_Pkgpc8 = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [11 x i8] c"%sPkg%%pc8\00", align 1
@BIC_Pkgpc9 = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [11 x i8] c"%sPkg%%pc9\00", align 1
@BIC_Pkgpc10 = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [11 x i8] c"%sPk%%pc10\00", align 1
@BIC_CPU_LPI = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [11 x i8] c"%sCPU%%LPI\00", align 1
@BIC_SYS_LPI = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [11 x i8] c"%sSYS%%LPI\00", align 1
@BIC_PkgWatt = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [10 x i8] c"%sPkgWatt\00", align 1
@BIC_GFXWatt = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"%sGFXWatt\00", align 1
@BIC_RAMWatt = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"%sRAMWatt\00", align 1
@BIC_PKG__ = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [9 x i8] c"%sPKG_%%\00", align 1
@BIC_RAM__ = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"%sRAM_%%\00", align 1
@BIC_Pkg_J = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [8 x i8] c"%sPkg_J\00", align 1
@BIC_GFX_J = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [8 x i8] c"%sGFX_J\00", align 1
@BIC_RAM_J = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"%sRAM_J\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msr_counter*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @BIC_USEC, align 4
  %6 = call i64 @DO_BIC(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @outp, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  br label %16

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = call i64 (i32, i8*, ...) @sprintf(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @outp, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @outp, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @BIC_TOD, align 4
  %25 = call i64 @DO_BIC(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* @outp, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** %2, align 8
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = call i64 (i32, i8*, ...) @sprintf(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @outp, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @outp, align 4
  br label %42

42:                                               ; preds = %35, %23
  %43 = load i32, i32* @BIC_Package, align 4
  %44 = call i64 @DO_BIC(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i32, i32* @outp, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %2, align 8
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i8* [ %52, %51 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = call i64 (i32, i8*, ...) @sprintf(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @outp, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @outp, align 4
  br label %61

61:                                               ; preds = %54, %42
  %62 = load i32, i32* @BIC_Die, align 4
  %63 = call i64 @DO_BIC(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32, i32* @outp, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i8*, i8** %2, align 8
  br label %73

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i8* [ %71, %70 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %72 ]
  %75 = call i64 (i32, i8*, ...) @sprintf(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @outp, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @outp, align 4
  br label %80

80:                                               ; preds = %73, %61
  %81 = load i32, i32* @BIC_Node, align 4
  %82 = call i64 @DO_BIC(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i32, i32* @outp, align 4
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i8*, i8** %2, align 8
  br label %92

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i8* [ %90, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %91 ]
  %94 = call i64 (i32, i8*, ...) @sprintf(i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @outp, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* @outp, align 4
  br label %99

99:                                               ; preds = %92, %80
  %100 = load i32, i32* @BIC_Core, align 4
  %101 = call i64 @DO_BIC(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load i32, i32* @outp, align 4
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  %107 = icmp ne i32 %105, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i8*, i8** %2, align 8
  br label %111

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i8* [ %109, %108 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %110 ]
  %113 = call i64 (i32, i8*, ...) @sprintf(i32 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @outp, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* @outp, align 4
  br label %118

118:                                              ; preds = %111, %99
  %119 = load i32, i32* @BIC_CPU, align 4
  %120 = call i64 @DO_BIC(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load i32, i32* @outp, align 4
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i8*, i8** %2, align 8
  br label %130

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i8* [ %128, %127 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %129 ]
  %132 = call i64 (i32, i8*, ...) @sprintf(i32 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* @outp, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* @outp, align 4
  br label %137

137:                                              ; preds = %130, %118
  %138 = load i32, i32* @BIC_APIC, align 4
  %139 = call i64 @DO_BIC(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i32, i32* @outp, align 4
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i8*, i8** %2, align 8
  br label %149

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i8* [ %147, %146 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %148 ]
  %151 = call i64 (i32, i8*, ...) @sprintf(i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %150)
  %152 = load i32, i32* @outp, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* @outp, align 4
  br label %156

156:                                              ; preds = %149, %137
  %157 = load i32, i32* @BIC_X2APIC, align 4
  %158 = call i64 @DO_BIC(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load i32, i32* @outp, align 4
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %2, align 8
  br label %168

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i8* [ %166, %165 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %167 ]
  %170 = call i64 (i32, i8*, ...) @sprintf(i32 %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %169)
  %171 = load i32, i32* @outp, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* @outp, align 4
  br label %175

175:                                              ; preds = %168, %156
  %176 = load i32, i32* @BIC_Avg_MHz, align 4
  %177 = call i64 @DO_BIC(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %175
  %180 = load i32, i32* @outp, align 4
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %4, align 4
  %183 = icmp ne i32 %181, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i8*, i8** %2, align 8
  br label %187

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %184
  %188 = phi i8* [ %185, %184 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %186 ]
  %189 = call i64 (i32, i8*, ...) @sprintf(i32 %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %188)
  %190 = load i32, i32* @outp, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* @outp, align 4
  br label %194

194:                                              ; preds = %187, %175
  %195 = load i32, i32* @BIC_Busy, align 4
  %196 = call i64 @DO_BIC(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load i32, i32* @outp, align 4
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %4, align 4
  %202 = icmp ne i32 %200, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i8*, i8** %2, align 8
  br label %206

205:                                              ; preds = %198
  br label %206

206:                                              ; preds = %205, %203
  %207 = phi i8* [ %204, %203 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %205 ]
  %208 = call i64 (i32, i8*, ...) @sprintf(i32 %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %207)
  %209 = load i32, i32* @outp, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* @outp, align 4
  br label %213

213:                                              ; preds = %206, %194
  %214 = load i32, i32* @BIC_Bzy_MHz, align 4
  %215 = call i64 @DO_BIC(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %213
  %218 = load i32, i32* @outp, align 4
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %4, align 4
  %221 = icmp ne i32 %219, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i8*, i8** %2, align 8
  br label %225

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %222
  %226 = phi i8* [ %223, %222 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %224 ]
  %227 = call i64 (i32, i8*, ...) @sprintf(i32 %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %226)
  %228 = load i32, i32* @outp, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* @outp, align 4
  br label %232

232:                                              ; preds = %225, %213
  %233 = load i32, i32* @BIC_TSC_MHz, align 4
  %234 = call i64 @DO_BIC(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %232
  %237 = load i32, i32* @outp, align 4
  %238 = load i32, i32* %4, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %4, align 4
  %240 = icmp ne i32 %238, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i8*, i8** %2, align 8
  br label %244

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %241
  %245 = phi i8* [ %242, %241 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %243 ]
  %246 = call i64 (i32, i8*, ...) @sprintf(i32 %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %245)
  %247 = load i32, i32* @outp, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* @outp, align 4
  br label %251

251:                                              ; preds = %244, %232
  %252 = load i32, i32* @BIC_IRQ, align 4
  %253 = call i64 @DO_BIC(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %289

255:                                              ; preds = %251
  %256 = load i64, i64* @sums_need_wide_columns, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %273

258:                                              ; preds = %255
  %259 = load i32, i32* @outp, align 4
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  %262 = icmp ne i32 %260, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %258
  %264 = load i8*, i8** %2, align 8
  br label %266

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %265, %263
  %267 = phi i8* [ %264, %263 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %265 ]
  %268 = call i64 (i32, i8*, ...) @sprintf(i32 %259, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %267)
  %269 = load i32, i32* @outp, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* @outp, align 4
  br label %288

273:                                              ; preds = %255
  %274 = load i32, i32* @outp, align 4
  %275 = load i32, i32* %4, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %4, align 4
  %277 = icmp ne i32 %275, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i8*, i8** %2, align 8
  br label %281

280:                                              ; preds = %273
  br label %281

281:                                              ; preds = %280, %278
  %282 = phi i8* [ %279, %278 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %280 ]
  %283 = call i64 (i32, i8*, ...) @sprintf(i32 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %282)
  %284 = load i32, i32* @outp, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %283
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* @outp, align 4
  br label %288

288:                                              ; preds = %281, %266
  br label %289

289:                                              ; preds = %288, %251
  %290 = load i32, i32* @BIC_SMI, align 4
  %291 = call i64 @DO_BIC(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %289
  %294 = load i32, i32* @outp, align 4
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  %297 = icmp ne i32 %295, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = load i8*, i8** %2, align 8
  br label %301

300:                                              ; preds = %293
  br label %301

301:                                              ; preds = %300, %298
  %302 = phi i8* [ %299, %298 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %300 ]
  %303 = call i64 (i32, i8*, ...) @sprintf(i32 %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %302)
  %304 = load i32, i32* @outp, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %303
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* @outp, align 4
  br label %308

308:                                              ; preds = %301, %289
  %309 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 2), align 8
  store %struct.msr_counter* %309, %struct.msr_counter** %3, align 8
  br label %310

310:                                              ; preds = %408, %308
  %311 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %312 = icmp ne %struct.msr_counter* %311, null
  br i1 %312, label %313, label %412

313:                                              ; preds = %310
  %314 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %315 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @FORMAT_RAW, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %361

319:                                              ; preds = %313
  %320 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %321 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = icmp eq i32 %322, 64
  br i1 %323, label %324, label %342

324:                                              ; preds = %319
  %325 = load i32, i32* @outp, align 4
  %326 = load i32, i32* %4, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %4, align 4
  %328 = icmp ne i32 %326, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i8*, i8** %2, align 8
  br label %332

331:                                              ; preds = %324
  br label %332

332:                                              ; preds = %331, %329
  %333 = phi i8* [ %330, %329 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %331 ]
  %334 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %335 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = call i64 (i32, i8*, ...) @sprintf(i32 %325, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %333, i32 %336)
  %338 = load i32, i32* @outp, align 4
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %339, %337
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* @outp, align 4
  br label %360

342:                                              ; preds = %319
  %343 = load i32, i32* @outp, align 4
  %344 = load i32, i32* %4, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %4, align 4
  %346 = icmp ne i32 %344, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = load i8*, i8** %2, align 8
  br label %350

349:                                              ; preds = %342
  br label %350

350:                                              ; preds = %349, %347
  %351 = phi i8* [ %348, %347 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %349 ]
  %352 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %353 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = call i64 (i32, i8*, ...) @sprintf(i32 %343, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %351, i32 %354)
  %356 = load i32, i32* @outp, align 4
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %357, %355
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* @outp, align 4
  br label %360

360:                                              ; preds = %350, %332
  br label %407

361:                                              ; preds = %313
  %362 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %363 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @COUNTER_ITEMS, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %388

367:                                              ; preds = %361
  %368 = load i64, i64* @sums_need_wide_columns, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %388

370:                                              ; preds = %367
  %371 = load i32, i32* @outp, align 4
  %372 = load i32, i32* %4, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %4, align 4
  %374 = icmp ne i32 %372, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = load i8*, i8** %2, align 8
  br label %378

377:                                              ; preds = %370
  br label %378

378:                                              ; preds = %377, %375
  %379 = phi i8* [ %376, %375 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %377 ]
  %380 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %381 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = call i64 (i32, i8*, ...) @sprintf(i32 %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %379, i32 %382)
  %384 = load i32, i32* @outp, align 4
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %385, %383
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* @outp, align 4
  br label %406

388:                                              ; preds = %367, %361
  %389 = load i32, i32* @outp, align 4
  %390 = load i32, i32* %4, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %4, align 4
  %392 = icmp ne i32 %390, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = load i8*, i8** %2, align 8
  br label %396

395:                                              ; preds = %388
  br label %396

396:                                              ; preds = %395, %393
  %397 = phi i8* [ %394, %393 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %395 ]
  %398 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %399 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 8
  %401 = call i64 (i32, i8*, ...) @sprintf(i32 %389, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %397, i32 %400)
  %402 = load i32, i32* @outp, align 4
  %403 = sext i32 %402 to i64
  %404 = add nsw i64 %403, %401
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* @outp, align 4
  br label %406

406:                                              ; preds = %396, %378
  br label %407

407:                                              ; preds = %406, %360
  br label %408

408:                                              ; preds = %407
  %409 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %410 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %409, i32 0, i32 4
  %411 = load %struct.msr_counter*, %struct.msr_counter** %410, align 8
  store %struct.msr_counter* %411, %struct.msr_counter** %3, align 8
  br label %310

412:                                              ; preds = %310
  %413 = load i32, i32* @BIC_CPU_c1, align 4
  %414 = call i64 @DO_BIC(i32 %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %412
  %417 = load i32, i32* @outp, align 4
  %418 = load i32, i32* %4, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %4, align 4
  %420 = icmp ne i32 %418, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %416
  %422 = load i8*, i8** %2, align 8
  br label %424

423:                                              ; preds = %416
  br label %424

424:                                              ; preds = %423, %421
  %425 = phi i8* [ %422, %421 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %423 ]
  %426 = call i64 (i32, i8*, ...) @sprintf(i32 %417, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %425)
  %427 = load i32, i32* @outp, align 4
  %428 = sext i32 %427 to i64
  %429 = add nsw i64 %428, %426
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* @outp, align 4
  br label %431

431:                                              ; preds = %424, %412
  %432 = load i32, i32* @BIC_CPU_c3, align 4
  %433 = call i64 @DO_BIC(i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %450

435:                                              ; preds = %431
  %436 = load i32, i32* @outp, align 4
  %437 = load i32, i32* %4, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %4, align 4
  %439 = icmp ne i32 %437, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %435
  %441 = load i8*, i8** %2, align 8
  br label %443

442:                                              ; preds = %435
  br label %443

443:                                              ; preds = %442, %440
  %444 = phi i8* [ %441, %440 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %442 ]
  %445 = call i64 (i32, i8*, ...) @sprintf(i32 %436, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %444)
  %446 = load i32, i32* @outp, align 4
  %447 = sext i32 %446 to i64
  %448 = add nsw i64 %447, %445
  %449 = trunc i64 %448 to i32
  store i32 %449, i32* @outp, align 4
  br label %450

450:                                              ; preds = %443, %431
  %451 = load i32, i32* @BIC_CPU_c6, align 4
  %452 = call i64 @DO_BIC(i32 %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %469

454:                                              ; preds = %450
  %455 = load i32, i32* @outp, align 4
  %456 = load i32, i32* %4, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %4, align 4
  %458 = icmp ne i32 %456, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %454
  %460 = load i8*, i8** %2, align 8
  br label %462

461:                                              ; preds = %454
  br label %462

462:                                              ; preds = %461, %459
  %463 = phi i8* [ %460, %459 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %461 ]
  %464 = call i64 (i32, i8*, ...) @sprintf(i32 %455, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* %463)
  %465 = load i32, i32* @outp, align 4
  %466 = sext i32 %465 to i64
  %467 = add nsw i64 %466, %464
  %468 = trunc i64 %467 to i32
  store i32 %468, i32* @outp, align 4
  br label %469

469:                                              ; preds = %462, %450
  %470 = load i32, i32* @BIC_CPU_c7, align 4
  %471 = call i64 @DO_BIC(i32 %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %488

473:                                              ; preds = %469
  %474 = load i32, i32* @outp, align 4
  %475 = load i32, i32* %4, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %4, align 4
  %477 = icmp ne i32 %475, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %473
  %479 = load i8*, i8** %2, align 8
  br label %481

480:                                              ; preds = %473
  br label %481

481:                                              ; preds = %480, %478
  %482 = phi i8* [ %479, %478 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %480 ]
  %483 = call i64 (i32, i8*, ...) @sprintf(i32 %474, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* %482)
  %484 = load i32, i32* @outp, align 4
  %485 = sext i32 %484 to i64
  %486 = add nsw i64 %485, %483
  %487 = trunc i64 %486 to i32
  store i32 %487, i32* @outp, align 4
  br label %488

488:                                              ; preds = %481, %469
  %489 = load i32, i32* @BIC_Mod_c6, align 4
  %490 = call i64 @DO_BIC(i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %507

492:                                              ; preds = %488
  %493 = load i32, i32* @outp, align 4
  %494 = load i32, i32* %4, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %4, align 4
  %496 = icmp ne i32 %494, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %492
  %498 = load i8*, i8** %2, align 8
  br label %500

499:                                              ; preds = %492
  br label %500

500:                                              ; preds = %499, %497
  %501 = phi i8* [ %498, %497 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %499 ]
  %502 = call i64 (i32, i8*, ...) @sprintf(i32 %493, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* %501)
  %503 = load i32, i32* @outp, align 4
  %504 = sext i32 %503 to i64
  %505 = add nsw i64 %504, %502
  %506 = trunc i64 %505 to i32
  store i32 %506, i32* @outp, align 4
  br label %507

507:                                              ; preds = %500, %488
  %508 = load i32, i32* @BIC_CoreTmp, align 4
  %509 = call i64 @DO_BIC(i32 %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %526

511:                                              ; preds = %507
  %512 = load i32, i32* @outp, align 4
  %513 = load i32, i32* %4, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %4, align 4
  %515 = icmp ne i32 %513, 0
  br i1 %515, label %516, label %518

516:                                              ; preds = %511
  %517 = load i8*, i8** %2, align 8
  br label %519

518:                                              ; preds = %511
  br label %519

519:                                              ; preds = %518, %516
  %520 = phi i8* [ %517, %516 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %518 ]
  %521 = call i64 (i32, i8*, ...) @sprintf(i32 %512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* %520)
  %522 = load i32, i32* @outp, align 4
  %523 = sext i32 %522 to i64
  %524 = add nsw i64 %523, %521
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* @outp, align 4
  br label %526

526:                                              ; preds = %519, %507
  %527 = load i32, i32* @do_rapl, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %557

529:                                              ; preds = %526
  %530 = load i64, i64* @rapl_joules, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %557, label %532

532:                                              ; preds = %529
  %533 = load i32, i32* @BIC_CorWatt, align 4
  %534 = call i64 @DO_BIC(i32 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %556

536:                                              ; preds = %532
  %537 = load i32, i32* @do_rapl, align 4
  %538 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %539 = and i32 %537, %538
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %556

541:                                              ; preds = %536
  %542 = load i32, i32* @outp, align 4
  %543 = load i32, i32* %4, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %4, align 4
  %545 = icmp ne i32 %543, 0
  br i1 %545, label %546, label %548

546:                                              ; preds = %541
  %547 = load i8*, i8** %2, align 8
  br label %549

548:                                              ; preds = %541
  br label %549

549:                                              ; preds = %548, %546
  %550 = phi i8* [ %547, %546 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %548 ]
  %551 = call i64 (i32, i8*, ...) @sprintf(i32 %542, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* %550)
  %552 = load i32, i32* @outp, align 4
  %553 = sext i32 %552 to i64
  %554 = add nsw i64 %553, %551
  %555 = trunc i64 %554 to i32
  store i32 %555, i32* @outp, align 4
  br label %556

556:                                              ; preds = %549, %536, %532
  br label %589

557:                                              ; preds = %529, %526
  %558 = load i32, i32* @do_rapl, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %588

560:                                              ; preds = %557
  %561 = load i64, i64* @rapl_joules, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %588

563:                                              ; preds = %560
  %564 = load i32, i32* @BIC_Cor_J, align 4
  %565 = call i64 @DO_BIC(i32 %564)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %587

567:                                              ; preds = %563
  %568 = load i32, i32* @do_rapl, align 4
  %569 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %587

572:                                              ; preds = %567
  %573 = load i32, i32* @outp, align 4
  %574 = load i32, i32* %4, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %4, align 4
  %576 = icmp ne i32 %574, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %572
  %578 = load i8*, i8** %2, align 8
  br label %580

579:                                              ; preds = %572
  br label %580

580:                                              ; preds = %579, %577
  %581 = phi i8* [ %578, %577 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %579 ]
  %582 = call i64 (i32, i8*, ...) @sprintf(i32 %573, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %581)
  %583 = load i32, i32* @outp, align 4
  %584 = sext i32 %583 to i64
  %585 = add nsw i64 %584, %582
  %586 = trunc i64 %585 to i32
  store i32 %586, i32* @outp, align 4
  br label %587

587:                                              ; preds = %580, %567, %563
  br label %588

588:                                              ; preds = %587, %560, %557
  br label %589

589:                                              ; preds = %588, %556
  %590 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 1), align 8
  store %struct.msr_counter* %590, %struct.msr_counter** %3, align 8
  br label %591

591:                                              ; preds = %661, %589
  %592 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %593 = icmp ne %struct.msr_counter* %592, null
  br i1 %593, label %594, label %665

594:                                              ; preds = %591
  %595 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %596 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = load i64, i64* @FORMAT_RAW, align 8
  %599 = icmp eq i64 %597, %598
  br i1 %599, label %600, label %628

600:                                              ; preds = %594
  %601 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %602 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 8
  %604 = icmp eq i32 %603, 64
  br i1 %604, label %605, label %616

605:                                              ; preds = %600
  %606 = load i32, i32* @outp, align 4
  %607 = load i8*, i8** %2, align 8
  %608 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %609 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %608, i32 0, i32 3
  %610 = load i32, i32* %609, align 8
  %611 = call i64 (i32, i8*, ...) @sprintf(i32 %606, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %607, i32 %610)
  %612 = load i32, i32* @outp, align 4
  %613 = sext i32 %612 to i64
  %614 = add nsw i64 %613, %611
  %615 = trunc i64 %614 to i32
  store i32 %615, i32* @outp, align 4
  br label %627

616:                                              ; preds = %600
  %617 = load i32, i32* @outp, align 4
  %618 = load i8*, i8** %2, align 8
  %619 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %620 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 8
  %622 = call i64 (i32, i8*, ...) @sprintf(i32 %617, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %618, i32 %621)
  %623 = load i32, i32* @outp, align 4
  %624 = sext i32 %623 to i64
  %625 = add nsw i64 %624, %622
  %626 = trunc i64 %625 to i32
  store i32 %626, i32* @outp, align 4
  br label %627

627:                                              ; preds = %616, %605
  br label %660

628:                                              ; preds = %594
  %629 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %630 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %629, i32 0, i32 2
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @COUNTER_ITEMS, align 8
  %633 = icmp eq i64 %631, %632
  br i1 %633, label %634, label %648

634:                                              ; preds = %628
  %635 = load i64, i64* @sums_need_wide_columns, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %648

637:                                              ; preds = %634
  %638 = load i32, i32* @outp, align 4
  %639 = load i8*, i8** %2, align 8
  %640 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %641 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %640, i32 0, i32 3
  %642 = load i32, i32* %641, align 8
  %643 = call i64 (i32, i8*, ...) @sprintf(i32 %638, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %639, i32 %642)
  %644 = load i32, i32* @outp, align 4
  %645 = sext i32 %644 to i64
  %646 = add nsw i64 %645, %643
  %647 = trunc i64 %646 to i32
  store i32 %647, i32* @outp, align 4
  br label %659

648:                                              ; preds = %634, %628
  %649 = load i32, i32* @outp, align 4
  %650 = load i8*, i8** %2, align 8
  %651 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %652 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %651, i32 0, i32 3
  %653 = load i32, i32* %652, align 8
  %654 = call i64 (i32, i8*, ...) @sprintf(i32 %649, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %650, i32 %653)
  %655 = load i32, i32* @outp, align 4
  %656 = sext i32 %655 to i64
  %657 = add nsw i64 %656, %654
  %658 = trunc i64 %657 to i32
  store i32 %658, i32* @outp, align 4
  br label %659

659:                                              ; preds = %648, %637
  br label %660

660:                                              ; preds = %659, %627
  br label %661

661:                                              ; preds = %660
  %662 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %663 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %662, i32 0, i32 4
  %664 = load %struct.msr_counter*, %struct.msr_counter** %663, align 8
  store %struct.msr_counter* %664, %struct.msr_counter** %3, align 8
  br label %591

665:                                              ; preds = %591
  %666 = load i32, i32* @BIC_PkgTmp, align 4
  %667 = call i64 @DO_BIC(i32 %666)
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %684

669:                                              ; preds = %665
  %670 = load i32, i32* @outp, align 4
  %671 = load i32, i32* %4, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %4, align 4
  %673 = icmp ne i32 %671, 0
  br i1 %673, label %674, label %676

674:                                              ; preds = %669
  %675 = load i8*, i8** %2, align 8
  br label %677

676:                                              ; preds = %669
  br label %677

677:                                              ; preds = %676, %674
  %678 = phi i8* [ %675, %674 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %676 ]
  %679 = call i64 (i32, i8*, ...) @sprintf(i32 %670, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* %678)
  %680 = load i32, i32* @outp, align 4
  %681 = sext i32 %680 to i64
  %682 = add nsw i64 %681, %679
  %683 = trunc i64 %682 to i32
  store i32 %683, i32* @outp, align 4
  br label %684

684:                                              ; preds = %677, %665
  %685 = load i32, i32* @BIC_GFX_rc6, align 4
  %686 = call i64 @DO_BIC(i32 %685)
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %688, label %703

688:                                              ; preds = %684
  %689 = load i32, i32* @outp, align 4
  %690 = load i32, i32* %4, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %4, align 4
  %692 = icmp ne i32 %690, 0
  br i1 %692, label %693, label %695

693:                                              ; preds = %688
  %694 = load i8*, i8** %2, align 8
  br label %696

695:                                              ; preds = %688
  br label %696

696:                                              ; preds = %695, %693
  %697 = phi i8* [ %694, %693 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %695 ]
  %698 = call i64 (i32, i8*, ...) @sprintf(i32 %689, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* %697)
  %699 = load i32, i32* @outp, align 4
  %700 = sext i32 %699 to i64
  %701 = add nsw i64 %700, %698
  %702 = trunc i64 %701 to i32
  store i32 %702, i32* @outp, align 4
  br label %703

703:                                              ; preds = %696, %684
  %704 = load i32, i32* @BIC_GFXMHz, align 4
  %705 = call i64 @DO_BIC(i32 %704)
  %706 = icmp ne i64 %705, 0
  br i1 %706, label %707, label %722

707:                                              ; preds = %703
  %708 = load i32, i32* @outp, align 4
  %709 = load i32, i32* %4, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %4, align 4
  %711 = icmp ne i32 %709, 0
  br i1 %711, label %712, label %714

712:                                              ; preds = %707
  %713 = load i8*, i8** %2, align 8
  br label %715

714:                                              ; preds = %707
  br label %715

715:                                              ; preds = %714, %712
  %716 = phi i8* [ %713, %712 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %714 ]
  %717 = call i64 (i32, i8*, ...) @sprintf(i32 %708, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* %716)
  %718 = load i32, i32* @outp, align 4
  %719 = sext i32 %718 to i64
  %720 = add nsw i64 %719, %717
  %721 = trunc i64 %720 to i32
  store i32 %721, i32* @outp, align 4
  br label %722

722:                                              ; preds = %715, %703
  %723 = load i32, i32* @BIC_Totl_c0, align 4
  %724 = call i64 @DO_BIC(i32 %723)
  %725 = icmp ne i64 %724, 0
  br i1 %725, label %726, label %741

726:                                              ; preds = %722
  %727 = load i32, i32* @outp, align 4
  %728 = load i32, i32* %4, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %4, align 4
  %730 = icmp ne i32 %728, 0
  br i1 %730, label %731, label %733

731:                                              ; preds = %726
  %732 = load i8*, i8** %2, align 8
  br label %734

733:                                              ; preds = %726
  br label %734

734:                                              ; preds = %733, %731
  %735 = phi i8* [ %732, %731 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %733 ]
  %736 = call i64 (i32, i8*, ...) @sprintf(i32 %727, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* %735)
  %737 = load i32, i32* @outp, align 4
  %738 = sext i32 %737 to i64
  %739 = add nsw i64 %738, %736
  %740 = trunc i64 %739 to i32
  store i32 %740, i32* @outp, align 4
  br label %741

741:                                              ; preds = %734, %722
  %742 = load i32, i32* @BIC_Any_c0, align 4
  %743 = call i64 @DO_BIC(i32 %742)
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %760

745:                                              ; preds = %741
  %746 = load i32, i32* @outp, align 4
  %747 = load i32, i32* %4, align 4
  %748 = add nsw i32 %747, 1
  store i32 %748, i32* %4, align 4
  %749 = icmp ne i32 %747, 0
  br i1 %749, label %750, label %752

750:                                              ; preds = %745
  %751 = load i8*, i8** %2, align 8
  br label %753

752:                                              ; preds = %745
  br label %753

753:                                              ; preds = %752, %750
  %754 = phi i8* [ %751, %750 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %752 ]
  %755 = call i64 (i32, i8*, ...) @sprintf(i32 %746, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* %754)
  %756 = load i32, i32* @outp, align 4
  %757 = sext i32 %756 to i64
  %758 = add nsw i64 %757, %755
  %759 = trunc i64 %758 to i32
  store i32 %759, i32* @outp, align 4
  br label %760

760:                                              ; preds = %753, %741
  %761 = load i32, i32* @BIC_GFX_c0, align 4
  %762 = call i64 @DO_BIC(i32 %761)
  %763 = icmp ne i64 %762, 0
  br i1 %763, label %764, label %779

764:                                              ; preds = %760
  %765 = load i32, i32* @outp, align 4
  %766 = load i32, i32* %4, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %4, align 4
  %768 = icmp ne i32 %766, 0
  br i1 %768, label %769, label %771

769:                                              ; preds = %764
  %770 = load i8*, i8** %2, align 8
  br label %772

771:                                              ; preds = %764
  br label %772

772:                                              ; preds = %771, %769
  %773 = phi i8* [ %770, %769 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %771 ]
  %774 = call i64 (i32, i8*, ...) @sprintf(i32 %765, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %773)
  %775 = load i32, i32* @outp, align 4
  %776 = sext i32 %775 to i64
  %777 = add nsw i64 %776, %774
  %778 = trunc i64 %777 to i32
  store i32 %778, i32* @outp, align 4
  br label %779

779:                                              ; preds = %772, %760
  %780 = load i32, i32* @BIC_CPUGFX, align 4
  %781 = call i64 @DO_BIC(i32 %780)
  %782 = icmp ne i64 %781, 0
  br i1 %782, label %783, label %798

783:                                              ; preds = %779
  %784 = load i32, i32* @outp, align 4
  %785 = load i32, i32* %4, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %4, align 4
  %787 = icmp ne i32 %785, 0
  br i1 %787, label %788, label %790

788:                                              ; preds = %783
  %789 = load i8*, i8** %2, align 8
  br label %791

790:                                              ; preds = %783
  br label %791

791:                                              ; preds = %790, %788
  %792 = phi i8* [ %789, %788 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %790 ]
  %793 = call i64 (i32, i8*, ...) @sprintf(i32 %784, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8* %792)
  %794 = load i32, i32* @outp, align 4
  %795 = sext i32 %794 to i64
  %796 = add nsw i64 %795, %793
  %797 = trunc i64 %796 to i32
  store i32 %797, i32* @outp, align 4
  br label %798

798:                                              ; preds = %791, %779
  %799 = load i32, i32* @BIC_Pkgpc2, align 4
  %800 = call i64 @DO_BIC(i32 %799)
  %801 = icmp ne i64 %800, 0
  br i1 %801, label %802, label %817

802:                                              ; preds = %798
  %803 = load i32, i32* @outp, align 4
  %804 = load i32, i32* %4, align 4
  %805 = add nsw i32 %804, 1
  store i32 %805, i32* %4, align 4
  %806 = icmp ne i32 %804, 0
  br i1 %806, label %807, label %809

807:                                              ; preds = %802
  %808 = load i8*, i8** %2, align 8
  br label %810

809:                                              ; preds = %802
  br label %810

810:                                              ; preds = %809, %807
  %811 = phi i8* [ %808, %807 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %809 ]
  %812 = call i64 (i32, i8*, ...) @sprintf(i32 %803, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %811)
  %813 = load i32, i32* @outp, align 4
  %814 = sext i32 %813 to i64
  %815 = add nsw i64 %814, %812
  %816 = trunc i64 %815 to i32
  store i32 %816, i32* @outp, align 4
  br label %817

817:                                              ; preds = %810, %798
  %818 = load i32, i32* @BIC_Pkgpc3, align 4
  %819 = call i64 @DO_BIC(i32 %818)
  %820 = icmp ne i64 %819, 0
  br i1 %820, label %821, label %836

821:                                              ; preds = %817
  %822 = load i32, i32* @outp, align 4
  %823 = load i32, i32* %4, align 4
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %4, align 4
  %825 = icmp ne i32 %823, 0
  br i1 %825, label %826, label %828

826:                                              ; preds = %821
  %827 = load i8*, i8** %2, align 8
  br label %829

828:                                              ; preds = %821
  br label %829

829:                                              ; preds = %828, %826
  %830 = phi i8* [ %827, %826 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %828 ]
  %831 = call i64 (i32, i8*, ...) @sprintf(i32 %822, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* %830)
  %832 = load i32, i32* @outp, align 4
  %833 = sext i32 %832 to i64
  %834 = add nsw i64 %833, %831
  %835 = trunc i64 %834 to i32
  store i32 %835, i32* @outp, align 4
  br label %836

836:                                              ; preds = %829, %817
  %837 = load i32, i32* @BIC_Pkgpc6, align 4
  %838 = call i64 @DO_BIC(i32 %837)
  %839 = icmp ne i64 %838, 0
  br i1 %839, label %840, label %855

840:                                              ; preds = %836
  %841 = load i32, i32* @outp, align 4
  %842 = load i32, i32* %4, align 4
  %843 = add nsw i32 %842, 1
  store i32 %843, i32* %4, align 4
  %844 = icmp ne i32 %842, 0
  br i1 %844, label %845, label %847

845:                                              ; preds = %840
  %846 = load i8*, i8** %2, align 8
  br label %848

847:                                              ; preds = %840
  br label %848

848:                                              ; preds = %847, %845
  %849 = phi i8* [ %846, %845 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %847 ]
  %850 = call i64 (i32, i8*, ...) @sprintf(i32 %841, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* %849)
  %851 = load i32, i32* @outp, align 4
  %852 = sext i32 %851 to i64
  %853 = add nsw i64 %852, %850
  %854 = trunc i64 %853 to i32
  store i32 %854, i32* @outp, align 4
  br label %855

855:                                              ; preds = %848, %836
  %856 = load i32, i32* @BIC_Pkgpc7, align 4
  %857 = call i64 @DO_BIC(i32 %856)
  %858 = icmp ne i64 %857, 0
  br i1 %858, label %859, label %874

859:                                              ; preds = %855
  %860 = load i32, i32* @outp, align 4
  %861 = load i32, i32* %4, align 4
  %862 = add nsw i32 %861, 1
  store i32 %862, i32* %4, align 4
  %863 = icmp ne i32 %861, 0
  br i1 %863, label %864, label %866

864:                                              ; preds = %859
  %865 = load i8*, i8** %2, align 8
  br label %867

866:                                              ; preds = %859
  br label %867

867:                                              ; preds = %866, %864
  %868 = phi i8* [ %865, %864 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %866 ]
  %869 = call i64 (i32, i8*, ...) @sprintf(i32 %860, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8* %868)
  %870 = load i32, i32* @outp, align 4
  %871 = sext i32 %870 to i64
  %872 = add nsw i64 %871, %869
  %873 = trunc i64 %872 to i32
  store i32 %873, i32* @outp, align 4
  br label %874

874:                                              ; preds = %867, %855
  %875 = load i32, i32* @BIC_Pkgpc8, align 4
  %876 = call i64 @DO_BIC(i32 %875)
  %877 = icmp ne i64 %876, 0
  br i1 %877, label %878, label %893

878:                                              ; preds = %874
  %879 = load i32, i32* @outp, align 4
  %880 = load i32, i32* %4, align 4
  %881 = add nsw i32 %880, 1
  store i32 %881, i32* %4, align 4
  %882 = icmp ne i32 %880, 0
  br i1 %882, label %883, label %885

883:                                              ; preds = %878
  %884 = load i8*, i8** %2, align 8
  br label %886

885:                                              ; preds = %878
  br label %886

886:                                              ; preds = %885, %883
  %887 = phi i8* [ %884, %883 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %885 ]
  %888 = call i64 (i32, i8*, ...) @sprintf(i32 %879, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* %887)
  %889 = load i32, i32* @outp, align 4
  %890 = sext i32 %889 to i64
  %891 = add nsw i64 %890, %888
  %892 = trunc i64 %891 to i32
  store i32 %892, i32* @outp, align 4
  br label %893

893:                                              ; preds = %886, %874
  %894 = load i32, i32* @BIC_Pkgpc9, align 4
  %895 = call i64 @DO_BIC(i32 %894)
  %896 = icmp ne i64 %895, 0
  br i1 %896, label %897, label %912

897:                                              ; preds = %893
  %898 = load i32, i32* @outp, align 4
  %899 = load i32, i32* %4, align 4
  %900 = add nsw i32 %899, 1
  store i32 %900, i32* %4, align 4
  %901 = icmp ne i32 %899, 0
  br i1 %901, label %902, label %904

902:                                              ; preds = %897
  %903 = load i8*, i8** %2, align 8
  br label %905

904:                                              ; preds = %897
  br label %905

905:                                              ; preds = %904, %902
  %906 = phi i8* [ %903, %902 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %904 ]
  %907 = call i64 (i32, i8*, ...) @sprintf(i32 %898, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* %906)
  %908 = load i32, i32* @outp, align 4
  %909 = sext i32 %908 to i64
  %910 = add nsw i64 %909, %907
  %911 = trunc i64 %910 to i32
  store i32 %911, i32* @outp, align 4
  br label %912

912:                                              ; preds = %905, %893
  %913 = load i32, i32* @BIC_Pkgpc10, align 4
  %914 = call i64 @DO_BIC(i32 %913)
  %915 = icmp ne i64 %914, 0
  br i1 %915, label %916, label %931

916:                                              ; preds = %912
  %917 = load i32, i32* @outp, align 4
  %918 = load i32, i32* %4, align 4
  %919 = add nsw i32 %918, 1
  store i32 %919, i32* %4, align 4
  %920 = icmp ne i32 %918, 0
  br i1 %920, label %921, label %923

921:                                              ; preds = %916
  %922 = load i8*, i8** %2, align 8
  br label %924

923:                                              ; preds = %916
  br label %924

924:                                              ; preds = %923, %921
  %925 = phi i8* [ %922, %921 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %923 ]
  %926 = call i64 (i32, i8*, ...) @sprintf(i32 %917, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* %925)
  %927 = load i32, i32* @outp, align 4
  %928 = sext i32 %927 to i64
  %929 = add nsw i64 %928, %926
  %930 = trunc i64 %929 to i32
  store i32 %930, i32* @outp, align 4
  br label %931

931:                                              ; preds = %924, %912
  %932 = load i32, i32* @BIC_CPU_LPI, align 4
  %933 = call i64 @DO_BIC(i32 %932)
  %934 = icmp ne i64 %933, 0
  br i1 %934, label %935, label %950

935:                                              ; preds = %931
  %936 = load i32, i32* @outp, align 4
  %937 = load i32, i32* %4, align 4
  %938 = add nsw i32 %937, 1
  store i32 %938, i32* %4, align 4
  %939 = icmp ne i32 %937, 0
  br i1 %939, label %940, label %942

940:                                              ; preds = %935
  %941 = load i8*, i8** %2, align 8
  br label %943

942:                                              ; preds = %935
  br label %943

943:                                              ; preds = %942, %940
  %944 = phi i8* [ %941, %940 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %942 ]
  %945 = call i64 (i32, i8*, ...) @sprintf(i32 %936, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* %944)
  %946 = load i32, i32* @outp, align 4
  %947 = sext i32 %946 to i64
  %948 = add nsw i64 %947, %945
  %949 = trunc i64 %948 to i32
  store i32 %949, i32* @outp, align 4
  br label %950

950:                                              ; preds = %943, %931
  %951 = load i32, i32* @BIC_SYS_LPI, align 4
  %952 = call i64 @DO_BIC(i32 %951)
  %953 = icmp ne i64 %952, 0
  br i1 %953, label %954, label %969

954:                                              ; preds = %950
  %955 = load i32, i32* @outp, align 4
  %956 = load i32, i32* %4, align 4
  %957 = add nsw i32 %956, 1
  store i32 %957, i32* %4, align 4
  %958 = icmp ne i32 %956, 0
  br i1 %958, label %959, label %961

959:                                              ; preds = %954
  %960 = load i8*, i8** %2, align 8
  br label %962

961:                                              ; preds = %954
  br label %962

962:                                              ; preds = %961, %959
  %963 = phi i8* [ %960, %959 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %961 ]
  %964 = call i64 (i32, i8*, ...) @sprintf(i32 %955, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i8* %963)
  %965 = load i32, i32* @outp, align 4
  %966 = sext i32 %965 to i64
  %967 = add nsw i64 %966, %964
  %968 = trunc i64 %967 to i32
  store i32 %968, i32* @outp, align 4
  br label %969

969:                                              ; preds = %962, %950
  %970 = load i32, i32* @do_rapl, align 4
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %972, label %1095

972:                                              ; preds = %969
  %973 = load i64, i64* @rapl_joules, align 8
  %974 = icmp ne i64 %973, 0
  br i1 %974, label %1095, label %975

975:                                              ; preds = %972
  %976 = load i32, i32* @BIC_PkgWatt, align 4
  %977 = call i64 @DO_BIC(i32 %976)
  %978 = icmp ne i64 %977, 0
  br i1 %978, label %979, label %994

979:                                              ; preds = %975
  %980 = load i32, i32* @outp, align 4
  %981 = load i32, i32* %4, align 4
  %982 = add nsw i32 %981, 1
  store i32 %982, i32* %4, align 4
  %983 = icmp ne i32 %981, 0
  br i1 %983, label %984, label %986

984:                                              ; preds = %979
  %985 = load i8*, i8** %2, align 8
  br label %987

986:                                              ; preds = %979
  br label %987

987:                                              ; preds = %986, %984
  %988 = phi i8* [ %985, %984 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %986 ]
  %989 = call i64 (i32, i8*, ...) @sprintf(i32 %980, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i8* %988)
  %990 = load i32, i32* @outp, align 4
  %991 = sext i32 %990 to i64
  %992 = add nsw i64 %991, %989
  %993 = trunc i64 %992 to i32
  store i32 %993, i32* @outp, align 4
  br label %994

994:                                              ; preds = %987, %975
  %995 = load i32, i32* @BIC_CorWatt, align 4
  %996 = call i64 @DO_BIC(i32 %995)
  %997 = icmp ne i64 %996, 0
  br i1 %997, label %998, label %1018

998:                                              ; preds = %994
  %999 = load i32, i32* @do_rapl, align 4
  %1000 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %1001 = and i32 %999, %1000
  %1002 = icmp ne i32 %1001, 0
  br i1 %1002, label %1018, label %1003

1003:                                             ; preds = %998
  %1004 = load i32, i32* @outp, align 4
  %1005 = load i32, i32* %4, align 4
  %1006 = add nsw i32 %1005, 1
  store i32 %1006, i32* %4, align 4
  %1007 = icmp ne i32 %1005, 0
  br i1 %1007, label %1008, label %1010

1008:                                             ; preds = %1003
  %1009 = load i8*, i8** %2, align 8
  br label %1011

1010:                                             ; preds = %1003
  br label %1011

1011:                                             ; preds = %1010, %1008
  %1012 = phi i8* [ %1009, %1008 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1010 ]
  %1013 = call i64 (i32, i8*, ...) @sprintf(i32 %1004, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* %1012)
  %1014 = load i32, i32* @outp, align 4
  %1015 = sext i32 %1014 to i64
  %1016 = add nsw i64 %1015, %1013
  %1017 = trunc i64 %1016 to i32
  store i32 %1017, i32* @outp, align 4
  br label %1018

1018:                                             ; preds = %1011, %998, %994
  %1019 = load i32, i32* @BIC_GFXWatt, align 4
  %1020 = call i64 @DO_BIC(i32 %1019)
  %1021 = icmp ne i64 %1020, 0
  br i1 %1021, label %1022, label %1037

1022:                                             ; preds = %1018
  %1023 = load i32, i32* @outp, align 4
  %1024 = load i32, i32* %4, align 4
  %1025 = add nsw i32 %1024, 1
  store i32 %1025, i32* %4, align 4
  %1026 = icmp ne i32 %1024, 0
  br i1 %1026, label %1027, label %1029

1027:                                             ; preds = %1022
  %1028 = load i8*, i8** %2, align 8
  br label %1030

1029:                                             ; preds = %1022
  br label %1030

1030:                                             ; preds = %1029, %1027
  %1031 = phi i8* [ %1028, %1027 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1029 ]
  %1032 = call i64 (i32, i8*, ...) @sprintf(i32 %1023, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8* %1031)
  %1033 = load i32, i32* @outp, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = add nsw i64 %1034, %1032
  %1036 = trunc i64 %1035 to i32
  store i32 %1036, i32* @outp, align 4
  br label %1037

1037:                                             ; preds = %1030, %1018
  %1038 = load i32, i32* @BIC_RAMWatt, align 4
  %1039 = call i64 @DO_BIC(i32 %1038)
  %1040 = icmp ne i64 %1039, 0
  br i1 %1040, label %1041, label %1056

1041:                                             ; preds = %1037
  %1042 = load i32, i32* @outp, align 4
  %1043 = load i32, i32* %4, align 4
  %1044 = add nsw i32 %1043, 1
  store i32 %1044, i32* %4, align 4
  %1045 = icmp ne i32 %1043, 0
  br i1 %1045, label %1046, label %1048

1046:                                             ; preds = %1041
  %1047 = load i8*, i8** %2, align 8
  br label %1049

1048:                                             ; preds = %1041
  br label %1049

1049:                                             ; preds = %1048, %1046
  %1050 = phi i8* [ %1047, %1046 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1048 ]
  %1051 = call i64 (i32, i8*, ...) @sprintf(i32 %1042, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i8* %1050)
  %1052 = load i32, i32* @outp, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = add nsw i64 %1053, %1051
  %1055 = trunc i64 %1054 to i32
  store i32 %1055, i32* @outp, align 4
  br label %1056

1056:                                             ; preds = %1049, %1037
  %1057 = load i32, i32* @BIC_PKG__, align 4
  %1058 = call i64 @DO_BIC(i32 %1057)
  %1059 = icmp ne i64 %1058, 0
  br i1 %1059, label %1060, label %1075

1060:                                             ; preds = %1056
  %1061 = load i32, i32* @outp, align 4
  %1062 = load i32, i32* %4, align 4
  %1063 = add nsw i32 %1062, 1
  store i32 %1063, i32* %4, align 4
  %1064 = icmp ne i32 %1062, 0
  br i1 %1064, label %1065, label %1067

1065:                                             ; preds = %1060
  %1066 = load i8*, i8** %2, align 8
  br label %1068

1067:                                             ; preds = %1060
  br label %1068

1068:                                             ; preds = %1067, %1065
  %1069 = phi i8* [ %1066, %1065 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1067 ]
  %1070 = call i64 (i32, i8*, ...) @sprintf(i32 %1061, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8* %1069)
  %1071 = load i32, i32* @outp, align 4
  %1072 = sext i32 %1071 to i64
  %1073 = add nsw i64 %1072, %1070
  %1074 = trunc i64 %1073 to i32
  store i32 %1074, i32* @outp, align 4
  br label %1075

1075:                                             ; preds = %1068, %1056
  %1076 = load i32, i32* @BIC_RAM__, align 4
  %1077 = call i64 @DO_BIC(i32 %1076)
  %1078 = icmp ne i64 %1077, 0
  br i1 %1078, label %1079, label %1094

1079:                                             ; preds = %1075
  %1080 = load i32, i32* @outp, align 4
  %1081 = load i32, i32* %4, align 4
  %1082 = add nsw i32 %1081, 1
  store i32 %1082, i32* %4, align 4
  %1083 = icmp ne i32 %1081, 0
  br i1 %1083, label %1084, label %1086

1084:                                             ; preds = %1079
  %1085 = load i8*, i8** %2, align 8
  br label %1087

1086:                                             ; preds = %1079
  br label %1087

1087:                                             ; preds = %1086, %1084
  %1088 = phi i8* [ %1085, %1084 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1086 ]
  %1089 = call i64 (i32, i8*, ...) @sprintf(i32 %1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* %1088)
  %1090 = load i32, i32* @outp, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = add nsw i64 %1091, %1089
  %1093 = trunc i64 %1092 to i32
  store i32 %1093, i32* @outp, align 4
  br label %1094

1094:                                             ; preds = %1087, %1075
  br label %1222

1095:                                             ; preds = %972, %969
  %1096 = load i32, i32* @do_rapl, align 4
  %1097 = icmp ne i32 %1096, 0
  br i1 %1097, label %1098, label %1221

1098:                                             ; preds = %1095
  %1099 = load i64, i64* @rapl_joules, align 8
  %1100 = icmp ne i64 %1099, 0
  br i1 %1100, label %1101, label %1221

1101:                                             ; preds = %1098
  %1102 = load i32, i32* @BIC_Pkg_J, align 4
  %1103 = call i64 @DO_BIC(i32 %1102)
  %1104 = icmp ne i64 %1103, 0
  br i1 %1104, label %1105, label %1120

1105:                                             ; preds = %1101
  %1106 = load i32, i32* @outp, align 4
  %1107 = load i32, i32* %4, align 4
  %1108 = add nsw i32 %1107, 1
  store i32 %1108, i32* %4, align 4
  %1109 = icmp ne i32 %1107, 0
  br i1 %1109, label %1110, label %1112

1110:                                             ; preds = %1105
  %1111 = load i8*, i8** %2, align 8
  br label %1113

1112:                                             ; preds = %1105
  br label %1113

1113:                                             ; preds = %1112, %1110
  %1114 = phi i8* [ %1111, %1110 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1112 ]
  %1115 = call i64 (i32, i8*, ...) @sprintf(i32 %1106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8* %1114)
  %1116 = load i32, i32* @outp, align 4
  %1117 = sext i32 %1116 to i64
  %1118 = add nsw i64 %1117, %1115
  %1119 = trunc i64 %1118 to i32
  store i32 %1119, i32* @outp, align 4
  br label %1120

1120:                                             ; preds = %1113, %1101
  %1121 = load i32, i32* @BIC_Cor_J, align 4
  %1122 = call i64 @DO_BIC(i32 %1121)
  %1123 = icmp ne i64 %1122, 0
  br i1 %1123, label %1124, label %1144

1124:                                             ; preds = %1120
  %1125 = load i32, i32* @do_rapl, align 4
  %1126 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %1127 = and i32 %1125, %1126
  %1128 = icmp ne i32 %1127, 0
  br i1 %1128, label %1144, label %1129

1129:                                             ; preds = %1124
  %1130 = load i32, i32* @outp, align 4
  %1131 = load i32, i32* %4, align 4
  %1132 = add nsw i32 %1131, 1
  store i32 %1132, i32* %4, align 4
  %1133 = icmp ne i32 %1131, 0
  br i1 %1133, label %1134, label %1136

1134:                                             ; preds = %1129
  %1135 = load i8*, i8** %2, align 8
  br label %1137

1136:                                             ; preds = %1129
  br label %1137

1137:                                             ; preds = %1136, %1134
  %1138 = phi i8* [ %1135, %1134 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1136 ]
  %1139 = call i64 (i32, i8*, ...) @sprintf(i32 %1130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %1138)
  %1140 = load i32, i32* @outp, align 4
  %1141 = sext i32 %1140 to i64
  %1142 = add nsw i64 %1141, %1139
  %1143 = trunc i64 %1142 to i32
  store i32 %1143, i32* @outp, align 4
  br label %1144

1144:                                             ; preds = %1137, %1124, %1120
  %1145 = load i32, i32* @BIC_GFX_J, align 4
  %1146 = call i64 @DO_BIC(i32 %1145)
  %1147 = icmp ne i64 %1146, 0
  br i1 %1147, label %1148, label %1163

1148:                                             ; preds = %1144
  %1149 = load i32, i32* @outp, align 4
  %1150 = load i32, i32* %4, align 4
  %1151 = add nsw i32 %1150, 1
  store i32 %1151, i32* %4, align 4
  %1152 = icmp ne i32 %1150, 0
  br i1 %1152, label %1153, label %1155

1153:                                             ; preds = %1148
  %1154 = load i8*, i8** %2, align 8
  br label %1156

1155:                                             ; preds = %1148
  br label %1156

1156:                                             ; preds = %1155, %1153
  %1157 = phi i8* [ %1154, %1153 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1155 ]
  %1158 = call i64 (i32, i8*, ...) @sprintf(i32 %1149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* %1157)
  %1159 = load i32, i32* @outp, align 4
  %1160 = sext i32 %1159 to i64
  %1161 = add nsw i64 %1160, %1158
  %1162 = trunc i64 %1161 to i32
  store i32 %1162, i32* @outp, align 4
  br label %1163

1163:                                             ; preds = %1156, %1144
  %1164 = load i32, i32* @BIC_RAM_J, align 4
  %1165 = call i64 @DO_BIC(i32 %1164)
  %1166 = icmp ne i64 %1165, 0
  br i1 %1166, label %1167, label %1182

1167:                                             ; preds = %1163
  %1168 = load i32, i32* @outp, align 4
  %1169 = load i32, i32* %4, align 4
  %1170 = add nsw i32 %1169, 1
  store i32 %1170, i32* %4, align 4
  %1171 = icmp ne i32 %1169, 0
  br i1 %1171, label %1172, label %1174

1172:                                             ; preds = %1167
  %1173 = load i8*, i8** %2, align 8
  br label %1175

1174:                                             ; preds = %1167
  br label %1175

1175:                                             ; preds = %1174, %1172
  %1176 = phi i8* [ %1173, %1172 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1174 ]
  %1177 = call i64 (i32, i8*, ...) @sprintf(i32 %1168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* %1176)
  %1178 = load i32, i32* @outp, align 4
  %1179 = sext i32 %1178 to i64
  %1180 = add nsw i64 %1179, %1177
  %1181 = trunc i64 %1180 to i32
  store i32 %1181, i32* @outp, align 4
  br label %1182

1182:                                             ; preds = %1175, %1163
  %1183 = load i32, i32* @BIC_PKG__, align 4
  %1184 = call i64 @DO_BIC(i32 %1183)
  %1185 = icmp ne i64 %1184, 0
  br i1 %1185, label %1186, label %1201

1186:                                             ; preds = %1182
  %1187 = load i32, i32* @outp, align 4
  %1188 = load i32, i32* %4, align 4
  %1189 = add nsw i32 %1188, 1
  store i32 %1189, i32* %4, align 4
  %1190 = icmp ne i32 %1188, 0
  br i1 %1190, label %1191, label %1193

1191:                                             ; preds = %1186
  %1192 = load i8*, i8** %2, align 8
  br label %1194

1193:                                             ; preds = %1186
  br label %1194

1194:                                             ; preds = %1193, %1191
  %1195 = phi i8* [ %1192, %1191 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1193 ]
  %1196 = call i64 (i32, i8*, ...) @sprintf(i32 %1187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8* %1195)
  %1197 = load i32, i32* @outp, align 4
  %1198 = sext i32 %1197 to i64
  %1199 = add nsw i64 %1198, %1196
  %1200 = trunc i64 %1199 to i32
  store i32 %1200, i32* @outp, align 4
  br label %1201

1201:                                             ; preds = %1194, %1182
  %1202 = load i32, i32* @BIC_RAM__, align 4
  %1203 = call i64 @DO_BIC(i32 %1202)
  %1204 = icmp ne i64 %1203, 0
  br i1 %1204, label %1205, label %1220

1205:                                             ; preds = %1201
  %1206 = load i32, i32* @outp, align 4
  %1207 = load i32, i32* %4, align 4
  %1208 = add nsw i32 %1207, 1
  store i32 %1208, i32* %4, align 4
  %1209 = icmp ne i32 %1207, 0
  br i1 %1209, label %1210, label %1212

1210:                                             ; preds = %1205
  %1211 = load i8*, i8** %2, align 8
  br label %1213

1212:                                             ; preds = %1205
  br label %1213

1213:                                             ; preds = %1212, %1210
  %1214 = phi i8* [ %1211, %1210 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %1212 ]
  %1215 = call i64 (i32, i8*, ...) @sprintf(i32 %1206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* %1214)
  %1216 = load i32, i32* @outp, align 4
  %1217 = sext i32 %1216 to i64
  %1218 = add nsw i64 %1217, %1215
  %1219 = trunc i64 %1218 to i32
  store i32 %1219, i32* @outp, align 4
  br label %1220

1220:                                             ; preds = %1213, %1201
  br label %1221

1221:                                             ; preds = %1220, %1098, %1095
  br label %1222

1222:                                             ; preds = %1221, %1094
  %1223 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %1223, %struct.msr_counter** %3, align 8
  br label %1224

1224:                                             ; preds = %1294, %1222
  %1225 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1226 = icmp ne %struct.msr_counter* %1225, null
  br i1 %1226, label %1227, label %1298

1227:                                             ; preds = %1224
  %1228 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1229 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1228, i32 0, i32 0
  %1230 = load i64, i64* %1229, align 8
  %1231 = load i64, i64* @FORMAT_RAW, align 8
  %1232 = icmp eq i64 %1230, %1231
  br i1 %1232, label %1233, label %1261

1233:                                             ; preds = %1227
  %1234 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1235 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1234, i32 0, i32 1
  %1236 = load i32, i32* %1235, align 8
  %1237 = icmp eq i32 %1236, 64
  br i1 %1237, label %1238, label %1249

1238:                                             ; preds = %1233
  %1239 = load i32, i32* @outp, align 4
  %1240 = load i8*, i8** %2, align 8
  %1241 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1242 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1241, i32 0, i32 3
  %1243 = load i32, i32* %1242, align 8
  %1244 = call i64 (i32, i8*, ...) @sprintf(i32 %1239, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %1240, i32 %1243)
  %1245 = load i32, i32* @outp, align 4
  %1246 = sext i32 %1245 to i64
  %1247 = add nsw i64 %1246, %1244
  %1248 = trunc i64 %1247 to i32
  store i32 %1248, i32* @outp, align 4
  br label %1260

1249:                                             ; preds = %1233
  %1250 = load i32, i32* @outp, align 4
  %1251 = load i8*, i8** %2, align 8
  %1252 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1253 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1252, i32 0, i32 3
  %1254 = load i32, i32* %1253, align 8
  %1255 = call i64 (i32, i8*, ...) @sprintf(i32 %1250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %1251, i32 %1254)
  %1256 = load i32, i32* @outp, align 4
  %1257 = sext i32 %1256 to i64
  %1258 = add nsw i64 %1257, %1255
  %1259 = trunc i64 %1258 to i32
  store i32 %1259, i32* @outp, align 4
  br label %1260

1260:                                             ; preds = %1249, %1238
  br label %1293

1261:                                             ; preds = %1227
  %1262 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1263 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1262, i32 0, i32 2
  %1264 = load i64, i64* %1263, align 8
  %1265 = load i64, i64* @COUNTER_ITEMS, align 8
  %1266 = icmp eq i64 %1264, %1265
  br i1 %1266, label %1267, label %1281

1267:                                             ; preds = %1261
  %1268 = load i64, i64* @sums_need_wide_columns, align 8
  %1269 = icmp ne i64 %1268, 0
  br i1 %1269, label %1270, label %1281

1270:                                             ; preds = %1267
  %1271 = load i32, i32* @outp, align 4
  %1272 = load i8*, i8** %2, align 8
  %1273 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1274 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1273, i32 0, i32 3
  %1275 = load i32, i32* %1274, align 8
  %1276 = call i64 (i32, i8*, ...) @sprintf(i32 %1271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %1272, i32 %1275)
  %1277 = load i32, i32* @outp, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = add nsw i64 %1278, %1276
  %1280 = trunc i64 %1279 to i32
  store i32 %1280, i32* @outp, align 4
  br label %1292

1281:                                             ; preds = %1267, %1261
  %1282 = load i32, i32* @outp, align 4
  %1283 = load i8*, i8** %2, align 8
  %1284 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1285 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1284, i32 0, i32 3
  %1286 = load i32, i32* %1285, align 8
  %1287 = call i64 (i32, i8*, ...) @sprintf(i32 %1282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %1283, i32 %1286)
  %1288 = load i32, i32* @outp, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = add nsw i64 %1289, %1287
  %1291 = trunc i64 %1290 to i32
  store i32 %1291, i32* @outp, align 4
  br label %1292

1292:                                             ; preds = %1281, %1270
  br label %1293

1293:                                             ; preds = %1292, %1260
  br label %1294

1294:                                             ; preds = %1293
  %1295 = load %struct.msr_counter*, %struct.msr_counter** %3, align 8
  %1296 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1295, i32 0, i32 4
  %1297 = load %struct.msr_counter*, %struct.msr_counter** %1296, align 8
  store %struct.msr_counter* %1297, %struct.msr_counter** %3, align 8
  br label %1224

1298:                                             ; preds = %1224
  %1299 = load i32, i32* @outp, align 4
  %1300 = call i64 (i32, i8*, ...) @sprintf(i32 %1299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  %1301 = load i32, i32* @outp, align 4
  %1302 = sext i32 %1301 to i64
  %1303 = add nsw i64 %1302, %1300
  %1304 = trunc i64 %1303 to i32
  store i32 %1304, i32* @outp, align 4
  ret void
}

declare dso_local i64 @DO_BIC(i32) #1

declare dso_local i64 @sprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

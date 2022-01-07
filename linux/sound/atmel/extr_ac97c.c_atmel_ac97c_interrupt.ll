; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ac97c = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@SR = common dso_local global i32 0, align 4
@CASR = common dso_local global i32 0, align 4
@COSR = common dso_local global i32 0, align 4
@CAMR = common dso_local global i32 0, align 4
@AC97C_SR_CAEVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"channel A event%s%s%s%s%s%s\0A\00", align 1
@AC97C_CSR_OVRUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" OVRUN\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AC97C_CSR_RXRDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" RXRDY\00", align 1
@AC97C_CSR_UNRUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" UNRUN\00", align 1
@AC97C_CSR_TXEMPTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c" TXEMPTY\00", align 1
@AC97C_CSR_TXRDY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" TXRDY\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" NONE\00", align 1
@AC97C_CSR_ENDTX = common dso_local global i32 0, align 4
@ATMEL_PDC_TNPR = common dso_local global i64 0, align 8
@ATMEL_PDC_TNCR = common dso_local global i64 0, align 8
@AC97C_CSR_ENDRX = common dso_local global i32 0, align 4
@ATMEL_PDC_RNPR = common dso_local global i64 0, align 8
@ATMEL_PDC_RNCR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@AC97C_SR_COEVT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"codec channel event%s%s%s%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"spurious interrupt sr 0x%08x casr 0x%08x cosr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @atmel_ac97c_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atmel_ac97c_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_ac97c*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.atmel_ac97c*
  store %struct.atmel_ac97c* %16, %struct.atmel_ac97c** %5, align 8
  %17 = load i64, i64* @IRQ_NONE, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %19 = load i32, i32* @SR, align 4
  %20 = call i32 @ac97c_readl(%struct.atmel_ac97c* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %22 = load i32, i32* @CASR, align 4
  %23 = call i32 @ac97c_readl(%struct.atmel_ac97c* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %25 = load i32, i32* @COSR, align 4
  %26 = call i32 @ac97c_readl(%struct.atmel_ac97c* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %28 = load i32, i32* @CAMR, align 4
  %29 = call i32 @ac97c_readl(%struct.atmel_ac97c* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AC97C_SR_CAEVT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %216

34:                                               ; preds = %2
  %35 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %36 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AC97C_CSR_OVRUN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @AC97C_CSR_RXRDY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @AC97C_CSR_UNRUN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @AC97C_CSR_TXEMPTY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @AC97C_CSR_TXRDY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %50, i8* %56, i8* %62, i8* %68, i8* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @AC97C_CSR_ENDTX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %144

81:                                               ; preds = %34
  %82 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %83 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %82, i32 0, i32 5
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %85, align 8
  store %struct.snd_pcm_runtime* %86, %struct.snd_pcm_runtime** %11, align 8
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %87, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %93 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %97 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %81
  %104 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %105 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %81
  %107 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %108 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %106
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = mul nsw i32 %118, %119
  store i32 %120, i32* %12, align 4
  %121 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %127 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ATMEL_PDC_TNPR, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load i32, i32* %14, align 4
  %133 = sdiv i32 %132, 2
  %134 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %135 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ATMEL_PDC_TNCR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  %140 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %141 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %140, i32 0, i32 5
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %142)
  br label %144

144:                                              ; preds = %117, %34
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @AC97C_CSR_ENDRX, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %214

151:                                              ; preds = %144
  %152 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %153 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %155, align 8
  store %struct.snd_pcm_runtime* %156, %struct.snd_pcm_runtime** %11, align 8
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %158 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %159 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %157, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %163 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %167 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %170 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %151
  %174 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %175 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %151
  %177 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %178 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %183 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %186, %176
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %13, align 4
  %190 = mul nsw i32 %188, %189
  store i32 %190, i32* %12, align 4
  %191 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %192 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %193, %194
  %196 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %197 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @ATMEL_PDC_RNPR, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel(i32 %195, i64 %200)
  %202 = load i32, i32* %14, align 4
  %203 = sdiv i32 %202, 2
  %204 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %205 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @ATMEL_PDC_RNCR, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @writel(i32 %203, i64 %208)
  %210 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %211 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %210, i32 0, i32 3
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %212)
  br label %214

214:                                              ; preds = %187, %144
  %215 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %215, i64* %6, align 8
  br label %216

216:                                              ; preds = %214, %2
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @AC97C_SR_COEVT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %257

221:                                              ; preds = %216
  %222 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %223 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %222, i32 0, i32 2
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @AC97C_CSR_OVRUN, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @AC97C_CSR_RXRDY, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @AC97C_CSR_TXEMPTY, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @AC97C_CSR_TXRDY, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %255 = call i32 @dev_info(i32* %225, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %231, i8* %237, i8* %243, i8* %249, i8* %254)
  %256 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %256, i64* %6, align 8
  br label %257

257:                                              ; preds = %221, %216
  %258 = load i64, i64* %6, align 8
  %259 = load i64, i64* @IRQ_NONE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %257
  %262 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %263 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %262, i32 0, i32 2
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @dev_err(i32* %265, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %261, %257
  %271 = load i64, i64* %6, align 8
  ret i64 %271
}

declare dso_local i32 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

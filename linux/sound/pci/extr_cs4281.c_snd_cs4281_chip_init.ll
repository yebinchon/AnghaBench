; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4281 = type { i32, i32, i32, i32, i32, i32, %struct.cs4281_dma*, %struct.TYPE_2__* }
%struct.cs4281_dma = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BA0_EPPMC = common dso_local global i64 0, align 8
@BA0_EPPMC_FPDN = common dso_local global i32 0, align 4
@BA0_CFLR = common dso_local global i64 0, align 8
@BA0_CFLR_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CFLR setup failed (0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BA0_CWPR = common dso_local global i64 0, align 8
@BA0_SERC1 = common dso_local global i64 0, align 8
@BA0_SERC1_SO1EN = common dso_local global i32 0, align 4
@BA0_SERC1_AC97 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SERC1 AC'97 check failed (0x%x)\0A\00", align 1
@BA0_SERC2 = common dso_local global i64 0, align 8
@BA0_SERC2_SI1EN = common dso_local global i32 0, align 4
@BA0_SERC2_AC97 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"SERC2 AC'97 check failed (0x%x)\0A\00", align 1
@BA0_SSPM = common dso_local global i64 0, align 8
@BA0_SSPM_MIXEN = common dso_local global i32 0, align 4
@BA0_SSPM_CSRCEN = common dso_local global i32 0, align 4
@BA0_SSPM_PSRCEN = common dso_local global i32 0, align 4
@BA0_SSPM_JSEN = common dso_local global i32 0, align 4
@BA0_SSPM_ACLEN = common dso_local global i32 0, align 4
@BA0_SSPM_FMEN = common dso_local global i32 0, align 4
@BA0_CLKCR1 = common dso_local global i64 0, align 8
@BA0_SERMC = common dso_local global i64 0, align 8
@BA0_ACCTL = common dso_local global i64 0, align 8
@BA0_SPMC = common dso_local global i64 0, align 8
@BA0_SPMC_RSTN = common dso_local global i32 0, align 4
@BA0_SPMC_ASDI2E = common dso_local global i32 0, align 4
@BA0_SERMC_PTC_AC97 = common dso_local global i32 0, align 4
@BA0_SERMC_MSPE = common dso_local global i32 0, align 4
@BA0_CLKCR1_DLLP = common dso_local global i32 0, align 4
@BA0_CLKCR1_SWCE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@BA0_CLKCR1_DLLRDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"DLLRDY not seen\0A\00", align 1
@BA0_ACCTL_ESYN = common dso_local global i32 0, align 4
@BA0_ACSTS = common dso_local global i64 0, align 8
@BA0_ACSTS_CRDY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"never read codec ready from AC'97 (0x%x)\0A\00", align 1
@BA0_ACSTS2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"secondary codec doesn't respond. disable it...\0A\00", align 1
@BA0_ACCTL_VFRM = common dso_local global i32 0, align 4
@BA0_ACISV = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"never read ISV3 and ISV4 from AC'97\0A\00", align 1
@BA0_ACOSV = common dso_local global i64 0, align 8
@BA0_DBA0 = common dso_local global i64 0, align 8
@BA0_DCA0 = common dso_local global i64 0, align 8
@BA0_DBC0 = common dso_local global i64 0, align 8
@BA0_DCC0 = common dso_local global i64 0, align 8
@BA0_DMR0 = common dso_local global i64 0, align 8
@BA0_DCR0 = common dso_local global i64 0, align 8
@BA0_HDSR0 = common dso_local global i64 0, align 8
@BA0_FCR0 = common dso_local global i64 0, align 8
@BA0_FSIC0 = common dso_local global i64 0, align 8
@CS4281_FIFO_SIZE = common dso_local global i32 0, align 4
@BA0_FCR_FEN = common dso_local global i32 0, align 4
@BA0_SRCSA = common dso_local global i64 0, align 8
@BA0_PPLVC = common dso_local global i64 0, align 8
@BA0_PPRVC = common dso_local global i64 0, align 8
@BA0_HICR = common dso_local global i64 0, align 8
@BA0_HICR_EOI = common dso_local global i32 0, align 4
@BA0_HIMR = common dso_local global i64 0, align 8
@BA0_HISR_MIDI = common dso_local global i32 0, align 4
@BA0_HISR_DMAI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs4281*)* @snd_cs4281_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4281_chip_init(%struct.cs4281* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs4281*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs4281_dma*, align 8
  store %struct.cs4281* %0, %struct.cs4281** %3, align 8
  store i32 2, i32* %6, align 4
  %8 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %9 = load i64, i64* @BA0_EPPMC, align 8
  %10 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %8, i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BA0_EPPMC_FPDN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %17 = load i64, i64* @BA0_EPPMC, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BA0_EPPMC_FPDN, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %16, i64 %17, i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  br label %24

24:                                               ; preds = %299, %23
  %25 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %26 = load i64, i64* @BA0_CFLR, align 8
  %27 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %25, i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BA0_CFLR_DEFAULT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %33 = load i64, i64* @BA0_CFLR, align 8
  %34 = load i32, i32* @BA0_CFLR_DEFAULT, align 4
  %35 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %32, i64 %33, i32 %34)
  %36 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %37 = load i64, i64* @BA0_CFLR, align 8
  %38 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %36, i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BA0_CFLR_DEFAULT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %44 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %43, i32 0, i32 7
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %509

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %55 = load i64, i64* @BA0_CWPR, align 8
  %56 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %54, i64 %55, i32 17025)
  %57 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %58 = load i64, i64* @BA0_SERC1, align 8
  %59 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %57, i64 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @BA0_SERC1_SO1EN, align 4
  %61 = load i32, i32* @BA0_SERC1_AC97, align 4
  %62 = or i32 %60, %61
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %66 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %65, i32 0, i32 7
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %509

74:                                               ; preds = %53
  %75 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %76 = load i64, i64* @BA0_SERC2, align 8
  %77 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %75, i64 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @BA0_SERC2_SI1EN, align 4
  %79 = load i32, i32* @BA0_SERC2_AC97, align 4
  %80 = or i32 %78, %79
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %84 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %83, i32 0, i32 7
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %509

92:                                               ; preds = %74
  %93 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %94 = load i64, i64* @BA0_SSPM, align 8
  %95 = load i32, i32* @BA0_SSPM_MIXEN, align 4
  %96 = load i32, i32* @BA0_SSPM_CSRCEN, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @BA0_SSPM_PSRCEN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @BA0_SSPM_JSEN, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @BA0_SSPM_ACLEN, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @BA0_SSPM_FMEN, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %93, i64 %94, i32 %105)
  %107 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %108 = load i64, i64* @BA0_CLKCR1, align 8
  %109 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %107, i64 %108, i32 0)
  %110 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %111 = load i64, i64* @BA0_SERMC, align 8
  %112 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %110, i64 %111, i32 0)
  %113 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %114 = load i64, i64* @BA0_ACCTL, align 8
  %115 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %113, i64 %114, i32 0)
  %116 = call i32 @udelay(i32 50)
  %117 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %118 = load i64, i64* @BA0_SPMC, align 8
  %119 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %117, i64 %118, i32 0)
  %120 = call i32 @udelay(i32 50)
  %121 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %122 = load i64, i64* @BA0_SPMC, align 8
  %123 = load i32, i32* @BA0_SPMC_RSTN, align 4
  %124 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %121, i64 %122, i32 %123)
  %125 = call i32 @msleep(i32 50)
  %126 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %127 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %92
  %131 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %132 = load i64, i64* @BA0_SPMC, align 8
  %133 = load i32, i32* @BA0_SPMC_RSTN, align 4
  %134 = load i32, i32* @BA0_SPMC_ASDI2E, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %131, i64 %132, i32 %135)
  br label %137

137:                                              ; preds = %130, %92
  %138 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %139 = load i64, i64* @BA0_SERMC, align 8
  %140 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %141 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %146 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @BA0_SERMC_TCID(i32 %147)
  br label %151

149:                                              ; preds = %137
  %150 = call i32 @BA0_SERMC_TCID(i32 1)
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi i32 [ %148, %144 ], [ %150, %149 ]
  %153 = load i32, i32* @BA0_SERMC_PTC_AC97, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @BA0_SERMC_MSPE, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %138, i64 %139, i32 %156)
  %158 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %159 = load i64, i64* @BA0_CLKCR1, align 8
  %160 = load i32, i32* @BA0_CLKCR1_DLLP, align 4
  %161 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %158, i64 %159, i32 %160)
  %162 = call i32 @msleep(i32 50)
  %163 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %164 = load i64, i64* @BA0_CLKCR1, align 8
  %165 = load i32, i32* @BA0_CLKCR1_SWCE, align 4
  %166 = load i32, i32* @BA0_CLKCR1_DLLP, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %163, i64 %164, i32 %167)
  %169 = load i64, i64* @jiffies, align 8
  %170 = load i64, i64* @HZ, align 8
  %171 = add i64 %169, %170
  store i64 %171, i64* %5, align 8
  br label %172

172:                                              ; preds = %182, %151
  %173 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %174 = load i64, i64* @BA0_CLKCR1, align 8
  %175 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %173, i64 %174)
  %176 = load i32, i32* @BA0_CLKCR1_DLLRDY, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %196

180:                                              ; preds = %172
  %181 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %182

182:                                              ; preds = %180
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* @jiffies, align 8
  %185 = call i64 @time_after_eq(i64 %183, i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %172, label %187

187:                                              ; preds = %182
  %188 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %189 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %188, i32 0, i32 7
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, ...) @dev_err(i32 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %509

196:                                              ; preds = %179
  %197 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %198 = load i64, i64* @BA0_ACCTL, align 8
  %199 = load i32, i32* @BA0_ACCTL_ESYN, align 4
  %200 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %197, i64 %198, i32 %199)
  %201 = load i64, i64* @jiffies, align 8
  %202 = load i64, i64* @HZ, align 8
  %203 = add i64 %201, %202
  store i64 %203, i64* %5, align 8
  br label %204

204:                                              ; preds = %214, %196
  %205 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %206 = load i64, i64* @BA0_ACSTS, align 8
  %207 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %205, i64 %206)
  %208 = load i32, i32* @BA0_ACSTS_CRDY, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %231

212:                                              ; preds = %204
  %213 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %214

214:                                              ; preds = %212
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* @jiffies, align 8
  %217 = call i64 @time_after_eq(i64 %215, i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %204, label %219

219:                                              ; preds = %214
  %220 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %221 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %220, i32 0, i32 7
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %226 = load i64, i64* @BA0_ACSTS, align 8
  %227 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %225, i64 %226)
  %228 = call i32 (i32, i8*, ...) @dev_err(i32 %224, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @EIO, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %2, align 4
  br label %509

231:                                              ; preds = %211
  %232 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %233 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %265

236:                                              ; preds = %231
  %237 = load i64, i64* @jiffies, align 8
  %238 = load i64, i64* @HZ, align 8
  %239 = add i64 %237, %238
  store i64 %239, i64* %5, align 8
  br label %240

240:                                              ; preds = %250, %236
  %241 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %242 = load i64, i64* @BA0_ACSTS2, align 8
  %243 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %241, i64 %242)
  %244 = load i32, i32* @BA0_ACSTS_CRDY, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  br label %264

248:                                              ; preds = %240
  %249 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %250

250:                                              ; preds = %248
  %251 = load i64, i64* %5, align 8
  %252 = load i64, i64* @jiffies, align 8
  %253 = call i64 @time_after_eq(i64 %251, i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %240, label %255

255:                                              ; preds = %250
  %256 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %257 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %256, i32 0, i32 7
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @dev_info(i32 %260, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %262 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %263 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %262, i32 0, i32 0
  store i32 0, i32* %263, align 8
  br label %264

264:                                              ; preds = %255, %247
  br label %265

265:                                              ; preds = %264, %231
  %266 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %267 = load i64, i64* @BA0_ACCTL, align 8
  %268 = load i32, i32* @BA0_ACCTL_VFRM, align 4
  %269 = load i32, i32* @BA0_ACCTL_ESYN, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %266, i64 %267, i32 %270)
  %272 = load i64, i64* @jiffies, align 8
  %273 = load i64, i64* @HZ, align 8
  %274 = add i64 %272, %273
  store i64 %274, i64* %5, align 8
  br label %275

275:                                              ; preds = %290, %265
  %276 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %277 = load i64, i64* @BA0_ACISV, align 8
  %278 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %276, i64 %277)
  %279 = call i32 @BA0_ACISV_SLV(i32 3)
  %280 = call i32 @BA0_ACISV_SLV(i32 4)
  %281 = or i32 %279, %280
  %282 = and i32 %278, %281
  %283 = call i32 @BA0_ACISV_SLV(i32 3)
  %284 = call i32 @BA0_ACISV_SLV(i32 4)
  %285 = or i32 %283, %284
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %275
  br label %309

288:                                              ; preds = %275
  %289 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %290

290:                                              ; preds = %288
  %291 = load i64, i64* %5, align 8
  %292 = load i64, i64* @jiffies, align 8
  %293 = call i64 @time_after_eq(i64 %291, i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %275, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %6, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %24

300:                                              ; preds = %295
  %301 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %302 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %301, i32 0, i32 7
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32, i8*, ...) @dev_err(i32 %305, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %307 = load i32, i32* @EIO, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %2, align 4
  br label %509

309:                                              ; preds = %287
  %310 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %311 = load i64, i64* @BA0_ACOSV, align 8
  %312 = call i32 @BA0_ACOSV_SLV(i32 3)
  %313 = call i32 @BA0_ACOSV_SLV(i32 4)
  %314 = or i32 %312, %313
  %315 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %310, i64 %311, i32 %314)
  store i32 0, i32* %4, align 4
  br label %316

316:                                              ; preds = %410, %309
  %317 = load i32, i32* %4, align 4
  %318 = icmp ult i32 %317, 4
  br i1 %318, label %319, label %413

319:                                              ; preds = %316
  %320 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %321 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %320, i32 0, i32 6
  %322 = load %struct.cs4281_dma*, %struct.cs4281_dma** %321, align 8
  %323 = load i32, i32* %4, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %322, i64 %324
  store %struct.cs4281_dma* %325, %struct.cs4281_dma** %7, align 8
  %326 = load i64, i64* @BA0_DBA0, align 8
  %327 = load i32, i32* %4, align 4
  %328 = mul i32 %327, 16
  %329 = zext i32 %328 to i64
  %330 = add nsw i64 %326, %329
  %331 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %332 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %331, i32 0, i32 10
  store i64 %330, i64* %332, align 8
  %333 = load i64, i64* @BA0_DCA0, align 8
  %334 = load i32, i32* %4, align 4
  %335 = mul i32 %334, 16
  %336 = zext i32 %335 to i64
  %337 = add nsw i64 %333, %336
  %338 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %339 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %338, i32 0, i32 9
  store i64 %337, i64* %339, align 8
  %340 = load i64, i64* @BA0_DBC0, align 8
  %341 = load i32, i32* %4, align 4
  %342 = mul i32 %341, 16
  %343 = zext i32 %342 to i64
  %344 = add nsw i64 %340, %343
  %345 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %346 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %345, i32 0, i32 8
  store i64 %344, i64* %346, align 8
  %347 = load i64, i64* @BA0_DCC0, align 8
  %348 = load i32, i32* %4, align 4
  %349 = mul i32 %348, 16
  %350 = zext i32 %349 to i64
  %351 = add nsw i64 %347, %350
  %352 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %353 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %352, i32 0, i32 7
  store i64 %351, i64* %353, align 8
  %354 = load i64, i64* @BA0_DMR0, align 8
  %355 = load i32, i32* %4, align 4
  %356 = mul i32 %355, 8
  %357 = zext i32 %356 to i64
  %358 = add nsw i64 %354, %357
  %359 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %360 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %359, i32 0, i32 6
  store i64 %358, i64* %360, align 8
  %361 = load i64, i64* @BA0_DCR0, align 8
  %362 = load i32, i32* %4, align 4
  %363 = mul i32 %362, 8
  %364 = zext i32 %363 to i64
  %365 = add nsw i64 %361, %364
  %366 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %367 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %366, i32 0, i32 5
  store i64 %365, i64* %367, align 8
  %368 = load i64, i64* @BA0_HDSR0, align 8
  %369 = load i32, i32* %4, align 4
  %370 = mul i32 %369, 4
  %371 = zext i32 %370 to i64
  %372 = add nsw i64 %368, %371
  %373 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %374 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %373, i32 0, i32 4
  store i64 %372, i64* %374, align 8
  %375 = load i64, i64* @BA0_FCR0, align 8
  %376 = load i32, i32* %4, align 4
  %377 = mul i32 %376, 4
  %378 = zext i32 %377 to i64
  %379 = add nsw i64 %375, %378
  %380 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %381 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %380, i32 0, i32 2
  store i64 %379, i64* %381, align 8
  %382 = load i64, i64* @BA0_FSIC0, align 8
  %383 = load i32, i32* %4, align 4
  %384 = mul i32 %383, 4
  %385 = zext i32 %384 to i64
  %386 = add nsw i64 %382, %385
  %387 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %388 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %387, i32 0, i32 3
  store i64 %386, i64* %388, align 8
  %389 = load i32, i32* %4, align 4
  %390 = load i32, i32* @CS4281_FIFO_SIZE, align 4
  %391 = mul i32 %389, %390
  %392 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %393 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 8
  %394 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %395 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %396 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = call i32 @BA0_FCR_LS(i32 31)
  %399 = call i32 @BA0_FCR_RS(i32 31)
  %400 = or i32 %398, %399
  %401 = load i32, i32* @CS4281_FIFO_SIZE, align 4
  %402 = call i32 @BA0_FCR_SZ(i32 %401)
  %403 = or i32 %400, %402
  %404 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %405 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @BA0_FCR_OF(i32 %406)
  %408 = or i32 %403, %407
  %409 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %394, i64 %397, i32 %408)
  br label %410

410:                                              ; preds = %319
  %411 = load i32, i32* %4, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %4, align 4
  br label %316

413:                                              ; preds = %316
  %414 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %415 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %414, i32 0, i32 1
  store i32 0, i32* %415, align 4
  %416 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %417 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %416, i32 0, i32 2
  store i32 1, i32* %417, align 8
  %418 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %419 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %418, i32 0, i32 3
  store i32 10, i32* %419, align 4
  %420 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %421 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %420, i32 0, i32 4
  store i32 11, i32* %421, align 8
  %422 = load i32, i32* @BA0_FCR_FEN, align 4
  %423 = call i32 @BA0_FCR_LS(i32 0)
  %424 = or i32 %422, %423
  %425 = call i32 @BA0_FCR_RS(i32 1)
  %426 = or i32 %424, %425
  %427 = load i32, i32* @CS4281_FIFO_SIZE, align 4
  %428 = call i32 @BA0_FCR_SZ(i32 %427)
  %429 = or i32 %426, %428
  %430 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %431 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %430, i32 0, i32 6
  %432 = load %struct.cs4281_dma*, %struct.cs4281_dma** %431, align 8
  %433 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %432, i64 0
  %434 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @BA0_FCR_OF(i32 %435)
  %437 = or i32 %429, %436
  %438 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %439 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %438, i32 0, i32 6
  %440 = load %struct.cs4281_dma*, %struct.cs4281_dma** %439, align 8
  %441 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %440, i64 0
  %442 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %441, i32 0, i32 1
  store i32 %437, i32* %442, align 4
  %443 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %444 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %445 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %444, i32 0, i32 6
  %446 = load %struct.cs4281_dma*, %struct.cs4281_dma** %445, align 8
  %447 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %446, i64 0
  %448 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %451 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %450, i32 0, i32 6
  %452 = load %struct.cs4281_dma*, %struct.cs4281_dma** %451, align 8
  %453 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %452, i64 0
  %454 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %443, i64 %449, i32 %455)
  %457 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %458 = load i64, i64* @BA0_SRCSA, align 8
  %459 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %460 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = shl i32 %461, 0
  %463 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %464 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = shl i32 %465, 8
  %467 = or i32 %462, %466
  %468 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %469 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = shl i32 %470, 16
  %472 = or i32 %467, %471
  %473 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %474 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 8
  %476 = shl i32 %475, 24
  %477 = or i32 %472, %476
  %478 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %457, i64 %458, i32 %477)
  %479 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %480 = load i64, i64* @BA0_PPLVC, align 8
  %481 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %479, i64 %480, i32 0)
  %482 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %483 = load i64, i64* @BA0_PPRVC, align 8
  %484 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %482, i64 %483, i32 0)
  %485 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %486 = load i64, i64* @BA0_HICR, align 8
  %487 = load i32, i32* @BA0_HICR_EOI, align 4
  %488 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %485, i64 %486, i32 %487)
  %489 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %490 = load i64, i64* @BA0_HIMR, align 8
  %491 = load i32, i32* @BA0_HISR_MIDI, align 4
  %492 = load i32, i32* @BA0_HISR_DMAI, align 4
  %493 = or i32 %491, %492
  %494 = call i32 @BA0_HISR_DMA(i32 0)
  %495 = or i32 %493, %494
  %496 = call i32 @BA0_HISR_DMA(i32 1)
  %497 = or i32 %495, %496
  %498 = call i32 @BA0_HISR_DMA(i32 2)
  %499 = or i32 %497, %498
  %500 = call i32 @BA0_HISR_DMA(i32 3)
  %501 = or i32 %499, %500
  %502 = xor i32 %501, -1
  %503 = and i32 2147483647, %502
  %504 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %489, i64 %490, i32 %503)
  %505 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %506 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %505, i32 0, i32 5
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @synchronize_irq(i32 %507)
  store i32 0, i32* %2, align 4
  br label %509

509:                                              ; preds = %413, %300, %219, %187, %82, %64, %42
  %510 = load i32, i32* %2, align 4
  ret i32 %510
}

declare dso_local i32 @snd_cs4281_peekBA0(%struct.cs4281*, i64) #1

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BA0_SERMC_TCID(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @BA0_ACISV_SLV(i32) #1

declare dso_local i32 @BA0_ACOSV_SLV(i32) #1

declare dso_local i32 @BA0_FCR_LS(i32) #1

declare dso_local i32 @BA0_FCR_RS(i32) #1

declare dso_local i32 @BA0_FCR_SZ(i32) #1

declare dso_local i32 @BA0_FCR_OF(i32) #1

declare dso_local i32 @BA0_HISR_DMA(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

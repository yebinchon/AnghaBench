; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16*, i32 }

@AC97_MASTER = common dso_local global i64 0, align 8
@AC97_HEADPHONE = common dso_local global i64 0, align 8
@AC97_EXTENDED_STATUS = common dso_local global i64 0, align 8
@AC97_SCAP_SURROUND_DAC = common dso_local global i32 0, align 4
@AC97_EA_PRJ = common dso_local global i16 0, align 2
@AC97_SCAP_CENTER_LFE_DAC = common dso_local global i32 0, align 4
@AC97_EA_PRI = common dso_local global i16 0, align 2
@AC97_EA_PRK = common dso_local global i16 0, align 2
@AC97_EA_PRL = common dso_local global i16 0, align 2
@AC97_SCAP_INV_EAPD = common dso_local global i32 0, align 4
@AC97_POWERDOWN = common dso_local global i64 0, align 8
@AC97_PD_EAPD = common dso_local global i16 0, align 2
@AC97_SCAP_EAPD_LED = common dso_local global i32 0, align 4
@AC97_PD_PR6 = common dso_local global i16 0, align 2
@AC97_PD_PR0 = common dso_local global i16 0, align 2
@AC97_PD_PR1 = common dso_local global i16 0, align 2
@AC97_PD_PR2 = common dso_local global i16 0, align 2
@AC97_PD_PR3 = common dso_local global i16 0, align 2
@AC97_PD_PR4 = common dso_local global i16 0, align 2
@AC97_PD_PR5 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @snd_ac97_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ac97_powerdown(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = call i64 @ac97_is_audio(%struct.snd_ac97* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %9 = load i64, i64* @AC97_MASTER, align 8
  %10 = call i32 @snd_ac97_write(%struct.snd_ac97* %8, i64 %9, i16 zeroext -24673)
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %12 = load i64, i64* @AC97_HEADPHONE, align 8
  %13 = call i32 @snd_ac97_write(%struct.snd_ac97* %11, i64 %12, i16 zeroext -24673)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %15, i32 0, i32 0
  %17 = load i16*, i16** %16, align 8
  %18 = load i64, i64* @AC97_EXTENDED_STATUS, align 8
  %19 = getelementptr inbounds i16, i16* %17, i64 %18
  %20 = load i16, i16* %19, align 2
  store i16 %20, i16* %3, align 2
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load i16, i16* @AC97_EA_PRJ, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %3, align 2
  br label %34

34:                                               ; preds = %27, %14
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i16, i16* @AC97_EA_PRI, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @AC97_EA_PRK, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %43, %45
  %47 = load i16, i16* %3, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %3, align 2
  br label %51

51:                                               ; preds = %41, %34
  %52 = load i16, i16* @AC97_EA_PRL, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* %3, align 2
  %55 = zext i16 %54 to i32
  %56 = or i32 %55, %53
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %3, align 2
  %58 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %59 = load i64, i64* @AC97_EXTENDED_STATUS, align 8
  %60 = load i16, i16* %3, align 2
  %61 = call i32 @snd_ac97_write(%struct.snd_ac97* %58, i64 %59, i16 zeroext %60)
  %62 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %63 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @AC97_SCAP_INV_EAPD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %51
  %69 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %70 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %69, i32 0, i32 0
  %71 = load i16*, i16** %70, align 8
  %72 = load i64, i64* @AC97_POWERDOWN, align 8
  %73 = getelementptr inbounds i16, i16* %71, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* @AC97_PD_EAPD, align 2
  %77 = zext i16 %76 to i32
  %78 = xor i32 %77, -1
  %79 = and i32 %75, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %3, align 2
  br label %101

81:                                               ; preds = %51
  %82 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %83 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @AC97_SCAP_EAPD_LED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %81
  %89 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %90 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %89, i32 0, i32 0
  %91 = load i16*, i16** %90, align 8
  %92 = load i64, i64* @AC97_POWERDOWN, align 8
  %93 = getelementptr inbounds i16, i16* %91, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* @AC97_PD_EAPD, align 2
  %97 = zext i16 %96 to i32
  %98 = or i32 %95, %97
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %3, align 2
  br label %100

100:                                              ; preds = %88, %81
  br label %101

101:                                              ; preds = %100, %68
  %102 = load i16, i16* @AC97_PD_PR6, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16, i16* %3, align 2
  %105 = zext i16 %104 to i32
  %106 = or i32 %105, %103
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %3, align 2
  %108 = load i16, i16* @AC97_PD_PR0, align 2
  %109 = zext i16 %108 to i32
  %110 = load i16, i16* @AC97_PD_PR1, align 2
  %111 = zext i16 %110 to i32
  %112 = or i32 %109, %111
  %113 = load i16, i16* %3, align 2
  %114 = zext i16 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i16
  store i16 %116, i16* %3, align 2
  %117 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %118 = load i64, i64* @AC97_POWERDOWN, align 8
  %119 = load i16, i16* %3, align 2
  %120 = call i32 @snd_ac97_write(%struct.snd_ac97* %117, i64 %118, i16 zeroext %119)
  %121 = call i32 @udelay(i32 100)
  %122 = load i16, i16* @AC97_PD_PR2, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16, i16* %3, align 2
  %125 = zext i16 %124 to i32
  %126 = or i32 %125, %123
  %127 = trunc i32 %126 to i16
  store i16 %127, i16* %3, align 2
  %128 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %129 = load i64, i64* @AC97_POWERDOWN, align 8
  %130 = load i16, i16* %3, align 2
  %131 = call i32 @snd_ac97_write(%struct.snd_ac97* %128, i64 %129, i16 zeroext %130)
  %132 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %133 = call i64 @ac97_is_power_save_mode(%struct.snd_ac97* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %101
  %136 = load i16, i16* @AC97_PD_PR3, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* %3, align 2
  %139 = zext i16 %138 to i32
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %3, align 2
  %142 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %143 = load i64, i64* @AC97_POWERDOWN, align 8
  %144 = load i16, i16* %3, align 2
  %145 = call i32 @snd_ac97_write(%struct.snd_ac97* %142, i64 %143, i16 zeroext %144)
  %146 = call i32 @udelay(i32 100)
  %147 = load i16, i16* @AC97_PD_PR4, align 2
  %148 = zext i16 %147 to i32
  %149 = load i16, i16* @AC97_PD_PR5, align 2
  %150 = zext i16 %149 to i32
  %151 = or i32 %148, %150
  %152 = load i16, i16* %3, align 2
  %153 = zext i16 %152 to i32
  %154 = or i32 %153, %151
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %3, align 2
  %156 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %157 = load i64, i64* @AC97_POWERDOWN, align 8
  %158 = load i16, i16* %3, align 2
  %159 = call i32 @snd_ac97_write(%struct.snd_ac97* %156, i64 %157, i16 zeroext %158)
  br label %160

160:                                              ; preds = %135, %101
  ret void
}

declare dso_local i64 @ac97_is_audio(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_write(%struct.snd_ac97*, i64, i16 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ac97_is_power_save_mode(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

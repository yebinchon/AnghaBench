; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_device_change_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_device_change_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.pmac_tumbler* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pmac_tumbler = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_6__, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.work_struct = type { i32 }

@device_change_chip = common dso_local global %struct.snd_pmac* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"headphone: %d, lineout: %d\0A\00", align 1
@IS_G4DA = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@PMAC_TUMBLER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @device_change_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_change_handler(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca %struct.pmac_tumbler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** @device_change_chip, align 8
  store %struct.snd_pmac* %7, %struct.snd_pmac** %3, align 8
  %8 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %9 = icmp ne %struct.snd_pmac* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %154

11:                                               ; preds = %1
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %12, i32 0, i32 7
  %14 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %13, align 8
  store %struct.pmac_tumbler* %14, %struct.pmac_tumbler** %4, align 8
  %15 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %16 = icmp ne %struct.pmac_tumbler* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %154

22:                                               ; preds = %11
  %23 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %24 = call i32 @tumbler_detect_headphone(%struct.snd_pmac* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %26 = call i32 @tumbler_detect_lineout(%struct.snd_pmac* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %91

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %40 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %41 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %40, i32 0, i32 3
  %42 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %43 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %46 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @check_mute(%struct.snd_pmac* %39, %struct.TYPE_6__* %41, i32 0, i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %35
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %54 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %60 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %61 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %60, i32 0, i32 2
  %62 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %63 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %66 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @check_mute(%struct.snd_pmac* %59, %struct.TYPE_6__* %61, i32 0, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %58, %52, %49
  %70 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %71 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @msleep(i32 10)
  br label %76

76:                                               ; preds = %74, %69
  %77 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %78 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %79 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %78, i32 0, i32 5
  %80 = load i32, i32* @IS_G4DA, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %85 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %88 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @check_mute(%struct.snd_pmac* %77, %struct.TYPE_6__* %79, i32 %83, i64 %86, i32 %89)
  br label %136

91:                                               ; preds = %32
  %92 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %93 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %94 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %93, i32 0, i32 5
  %95 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %96 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %99 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @check_mute(%struct.snd_pmac* %92, %struct.TYPE_6__* %94, i32 0, i64 %97, i32 %100)
  %102 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %103 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = call i32 @msleep(i32 10)
  br label %108

108:                                              ; preds = %106, %91
  %109 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %110 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %111 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %110, i32 0, i32 3
  %112 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %113 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %116 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @check_mute(%struct.snd_pmac* %109, %struct.TYPE_6__* %111, i32 1, i64 %114, i32 %117)
  %119 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %120 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %108
  %125 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %126 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %127 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %126, i32 0, i32 2
  %128 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %129 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %132 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @check_mute(%struct.snd_pmac* %125, %struct.TYPE_6__* %127, i32 1, i64 %130, i32 %133)
  br label %135

135:                                              ; preds = %124, %108
  br label %136

136:                                              ; preds = %135, %76
  %137 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %138 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %143 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %146 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %147 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = call i32 @snd_ctl_notify(i32 %144, i32 %145, i32* %149)
  br label %151

151:                                              ; preds = %141, %136
  %152 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %153 = call i32 @tumbler_set_master_volume(%struct.pmac_tumbler* %152)
  br label %154

154:                                              ; preds = %151, %21, %10
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @tumbler_detect_headphone(%struct.snd_pmac*) #1

declare dso_local i32 @tumbler_detect_lineout(%struct.snd_pmac*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @check_mute(%struct.snd_pmac*, %struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @tumbler_set_master_volume(%struct.pmac_tumbler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

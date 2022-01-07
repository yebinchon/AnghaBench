; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_ak4113_change.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_ak4113_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4113 = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }

@EXT_SPDIF_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4113*, i8, i8)* @qtet_ak4113_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtet_ak4113_change(%struct.ak4113* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ak4113*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i32, align 4
  store %struct.ak4113* %0, %struct.ak4113** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %10 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %9, i32 0, i32 0
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %10, align 8
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %7, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %13 = call i64 @qtet_get_spdif_master_type(%struct.snd_ice1712* %12)
  %14 = load i64, i64* @EXT_SPDIF_TYPE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %22 = call i32 @snd_ak4113_external_rate(%struct.ak4113* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @qtet_akm_set_rate_val(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %16, %3
  ret void
}

declare dso_local i64 @qtet_get_spdif_master_type(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ak4113_external_rate(%struct.ak4113*) #1

declare dso_local i32 @qtet_akm_set_rate_val(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

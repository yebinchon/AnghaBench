; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_controller.c_snd_hdac_ext_bus_ppcap_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_controller.c_snd_hdac_ext_bus_ppcap_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Address of PP capability is NULL\0A\00", align 1
@AZX_REG_PP_PPCTL = common dso_local global i32 0, align 4
@AZX_PPCTL_PIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_ext_bus_ppcap_int_enable(%struct.hdac_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %6 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %11 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %19 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AZX_REG_PP_PPCTL, align 4
  %22 = load i32, i32* @AZX_PPCTL_PIE, align 4
  %23 = load i32, i32* @AZX_PPCTL_PIE, align 4
  %24 = call i32 @snd_hdac_updatel(i32 %20, i32 %21, i32 %22, i32 %23)
  br label %32

25:                                               ; preds = %14
  %26 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %27 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AZX_REG_PP_PPCTL, align 4
  %30 = load i32, i32* @AZX_PPCTL_PIE, align 4
  %31 = call i32 @snd_hdac_updatel(i32 %28, i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %9, %25, %17
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_hdac_updatel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

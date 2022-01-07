; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, %struct.omap_mcbsp_st_data* }
%struct.omap_mcbsp_st_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mcbsp*)* @omap_mcbsp_st_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_st_enable(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mcbsp*, align 8
  %4 = alloca %struct.omap_mcbsp_st_data*, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %3, align 8
  %5 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %6 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %5, i32 0, i32 1
  %7 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %6, align 8
  store %struct.omap_mcbsp_st_data* %7, %struct.omap_mcbsp_st_data** %4, align 8
  %8 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %4, align 8
  %9 = icmp ne %struct.omap_mcbsp_st_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %15 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %4, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %20 = call i32 @omap_mcbsp_st_start(%struct.omap_mcbsp* %19)
  %21 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %22 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_irq(i32* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %13, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @omap_mcbsp_st_start(%struct.omap_mcbsp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

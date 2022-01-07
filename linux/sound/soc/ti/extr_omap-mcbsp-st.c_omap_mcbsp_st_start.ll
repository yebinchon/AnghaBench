; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, %struct.omap_mcbsp_st_data* }
%struct.omap_mcbsp_st_data = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_mcbsp_st_start(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca %struct.omap_mcbsp*, align 8
  %3 = alloca %struct.omap_mcbsp_st_data*, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %2, align 8
  %4 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %5 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %4, i32 0, i32 1
  %6 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  store %struct.omap_mcbsp_st_data* %6, %struct.omap_mcbsp_st_data** %3, align 8
  %7 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %3, align 8
  %8 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %3, align 8
  %13 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %18 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %3, align 8
  %19 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @omap_mcbsp_st_fir_write(%struct.omap_mcbsp* %17, i32 %20)
  %22 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %23 = call i32 @omap_mcbsp_st_chgain(%struct.omap_mcbsp* %22)
  %24 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %25 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %30 = call i32 @omap_mcbsp_st_on(%struct.omap_mcbsp* %29)
  %31 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %3, align 8
  %32 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %16
  br label %34

34:                                               ; preds = %33, %11, %1
  ret i32 0
}

declare dso_local i32 @omap_mcbsp_st_fir_write(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @omap_mcbsp_st_chgain(%struct.omap_mcbsp*) #1

declare dso_local i32 @omap_mcbsp_st_on(%struct.omap_mcbsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

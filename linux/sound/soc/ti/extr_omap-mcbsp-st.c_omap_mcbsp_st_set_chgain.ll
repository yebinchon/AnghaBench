; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_set_chgain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_set_chgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, %struct.omap_mcbsp_st_data* }
%struct.omap_mcbsp_st_data = type { i64, i8*, i8* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mcbsp*, i32, i8*)* @omap_mcbsp_st_set_chgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_st_set_chgain(%struct.omap_mcbsp* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_mcbsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.omap_mcbsp_st_data*, align 8
  %9 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %11 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %10, i32 0, i32 1
  %12 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %11, align 8
  store %struct.omap_mcbsp_st_data* %12, %struct.omap_mcbsp_st_data** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %8, align 8
  %14 = icmp ne %struct.omap_mcbsp_st_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %20 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %8, align 8
  %27 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  br label %39

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %8, align 8
  %34 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %8, align 8
  %41 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %46 = call i32 @omap_mcbsp_st_chgain(%struct.omap_mcbsp* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %49 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @omap_mcbsp_st_chgain(%struct.omap_mcbsp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

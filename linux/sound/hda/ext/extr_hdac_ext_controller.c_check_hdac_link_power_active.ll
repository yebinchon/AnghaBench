; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_controller.c_check_hdac_link_power_active.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_controller.c_check_hdac_link_power_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_ext_link = type { i64 }

@AZX_MLCTL_CPA_SHIFT = common dso_local global i32 0, align 4
@AZX_REG_ML_LCTL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_ext_link*, i32)* @check_hdac_link_power_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_hdac_link_power_active(%struct.hdac_ext_link* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_ext_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdac_ext_link* %0, %struct.hdac_ext_link** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @AZX_MLCTL_CPA_SHIFT, align 4
  %10 = shl i32 1, %9
  store i32 %10, i32* %8, align 4
  %11 = call i32 @udelay(i32 3)
  store i32 150, i32* %6, align 4
  br label %12

12:                                               ; preds = %41, %2
  %13 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %4, align 8
  %14 = getelementptr inbounds %struct.hdac_ext_link, %struct.hdac_ext_link* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AZX_REG_ML_LCTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @AZX_MLCTL_CPA_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %48

29:                                               ; preds = %21
  br label %39

30:                                               ; preds = %12
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @AZX_MLCTL_CPA_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %48

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %29
  %40 = call i32 @udelay(i32 3)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %12, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %37, %28
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

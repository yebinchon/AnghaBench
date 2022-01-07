; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_snapper_set_capture_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_snapper_set_capture_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_tumbler = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TAS_REG_ACS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_tumbler*)* @snapper_set_capture_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapper_set_capture_source(%struct.pmac_tumbler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmac_tumbler*, align 8
  store %struct.pmac_tumbler* %0, %struct.pmac_tumbler** %3, align 8
  %4 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %5 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %14 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %19 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, 2
  store i32 %21, i32* %19, align 8
  br label %27

22:                                               ; preds = %12
  %23 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %24 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -3
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %29 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TAS_REG_ACS, align 4
  %33 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %34 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @i2c_smbus_write_byte_data(i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

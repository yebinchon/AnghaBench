; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_atm_sysfs.c_show_link_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_atm_sysfs.c_show_link_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.atm_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_link_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_link_rate(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.atm_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.atm_dev* @to_atm_dev(%struct.device* %9)
  store %struct.atm_dev* %10, %struct.atm_dev** %7, align 8
  %11 = load %struct.atm_dev*, %struct.atm_dev** %7, align 8
  %12 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %17 [
    i32 128, label %14
    i32 129, label %15
    i32 130, label %16
  ]

14:                                               ; preds = %3
  store i32 155520000, i32* %8, align 4
  br label %23

15:                                               ; preds = %3
  store i32 622080000, i32* %8, align 4
  br label %23

16:                                               ; preds = %3
  store i32 25600000, i32* %8, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.atm_dev*, %struct.atm_dev** %7, align 8
  %19 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 8
  %22 = mul nsw i32 %21, 53
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %17, %16, %15, %14
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @scnprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  ret i32 %27
}

declare dso_local %struct.atm_dev* @to_atm_dev(%struct.device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

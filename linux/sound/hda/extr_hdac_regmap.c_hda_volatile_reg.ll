; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_volatile_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_volatile_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdac_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @hda_volatile_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_volatile_reg(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.hdac_device* @dev_to_hdac_dev(%struct.device* %8)
  store %struct.hdac_device* %9, %struct.hdac_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @get_verb(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 141, label %20
    i32 128, label %20
    i32 130, label %20
    i32 131, label %20
    i32 134, label %20
    i32 132, label %20
    i32 135, label %20
    i32 136, label %20
    i32 133, label %20
    i32 137, label %20
    i32 138, label %20
    i32 139, label %20
    i32 140, label %20
  ]

13:                                               ; preds = %2
  %14 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %15 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.hdac_device* @dev_to_hdac_dev(%struct.device*) #1

declare dso_local i32 @get_verb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

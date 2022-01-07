; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_bus.c_snd_hdac_bus_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_bus.c_snd_hdac_bus_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32, %struct.hdac_device**, i32, i32 }
%struct.hdac_device = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"address 0x%x is already occupied\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_bus_add_device(%struct.hdac_bus* %0, %struct.hdac_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.hdac_device*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store %struct.hdac_device* %1, %struct.hdac_device** %5, align 8
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %7 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %6, i32 0, i32 2
  %8 = load %struct.hdac_device**, %struct.hdac_device*** %7, align 8
  %9 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %10 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.hdac_device*, %struct.hdac_device** %8, i64 %11
  %13 = load %struct.hdac_device*, %struct.hdac_device** %12, align 8
  %14 = icmp ne %struct.hdac_device* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %20 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %27 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %26, i32 0, i32 1
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %29 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %28, i32 0, i32 3
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %32 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %33 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %32, i32 0, i32 2
  %34 = load %struct.hdac_device**, %struct.hdac_device*** %33, align 8
  %35 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %36 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.hdac_device*, %struct.hdac_device** %34, i64 %37
  store %struct.hdac_device* %31, %struct.hdac_device** %38, align 8
  %39 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %40 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %43 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %42, i32 0, i32 1
  %44 = call i32 @set_bit(i64 %41, i32* %43)
  %45 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %46 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %25, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

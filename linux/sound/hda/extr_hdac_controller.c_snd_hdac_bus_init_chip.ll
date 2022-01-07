; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@DPLBASE = common dso_local global i32 0, align 4
@DPUBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_bus_init_chip(%struct.hdac_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %7 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snd_hdac_bus_reset_link(%struct.hdac_bus* %12, i32 %13)
  %15 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %16 = call i32 @azx_int_clear(%struct.hdac_bus* %15)
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %18 = call i32 @snd_hdac_bus_init_cmd_io(%struct.hdac_bus* %17)
  %19 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %20 = call i32 @azx_int_enable(%struct.hdac_bus* %19)
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %22 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %11
  %26 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %27 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %33 = load i32, i32* @DPLBASE, align 4
  %34 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %35 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @snd_hdac_chip_writel(%struct.hdac_bus* %32, i32 %33, i32 %38)
  %40 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %41 = load i32, i32* @DPUBASE, align 4
  %42 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %43 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @upper_32_bits(i64 %45)
  %47 = call i32 @snd_hdac_chip_writel(%struct.hdac_bus* %40, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %31, %25, %11
  %49 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %50 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @snd_hdac_bus_reset_link(%struct.hdac_bus*, i32) #1

declare dso_local i32 @azx_int_clear(%struct.hdac_bus*) #1

declare dso_local i32 @snd_hdac_bus_init_cmd_io(%struct.hdac_bus*) #1

declare dso_local i32 @azx_int_enable(%struct.hdac_bus*) #1

declare dso_local i32 @snd_hdac_chip_writel(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

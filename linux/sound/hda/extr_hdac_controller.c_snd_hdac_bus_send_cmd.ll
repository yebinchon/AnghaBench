; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@CORBWP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AZX_MAX_CORB_ENTRIES = common dso_local global i32 0, align 4
@CORBRP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_bus_send_cmd(%struct.hdac_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @azx_command_addr(i32 %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %13 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @azx_command_addr(i32 %19)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %15, i32* %21, align 4
  %22 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %23 = load i32, i32* @CORBWP, align 4
  %24 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %29 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @AZX_MAX_CORB_ENTRIES, align 4
  %37 = load i32, i32* %7, align 4
  %38 = urem i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %40 = load i32, i32* @CORBRP, align 4
  %41 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %47 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %77

51:                                               ; preds = %33
  %52 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %53 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %64 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %71 = load i32, i32* @CORBWP, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %70, i32 %71, i32 %72)
  %74 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %75 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock_irq(i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %51, %45, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @azx_command_addr(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_hdac_chip_readw(%struct.hdac_bus*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_hdac_chip_writew(%struct.hdac_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

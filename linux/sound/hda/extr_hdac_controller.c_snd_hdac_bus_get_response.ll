; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_get_response.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_get_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32* }

@jiffies = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_bus_get_response(%struct.hdac_bus* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 1000)
  %12 = add i64 %10, %11
  store i64 %12, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %69, %3
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %15 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %18 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %23 = call i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus* %22)
  br label %24

24:                                               ; preds = %21, %13
  %25 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %26 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %24
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %39 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %34
  %48 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %49 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  store i32 0, i32* %4, align 4
  br label %75

51:                                               ; preds = %24
  %52 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %53 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @time_after(i64 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %72

60:                                               ; preds = %51
  %61 = load i64, i64* %9, align 8
  %62 = icmp ugt i64 %61, 3000
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @msleep(i32 2)
  br label %68

65:                                               ; preds = %60
  %66 = call i32 @udelay(i32 10)
  %67 = call i32 (...) @cond_resched()
  br label %68

68:                                               ; preds = %65, %63
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %13

72:                                               ; preds = %59
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %47
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

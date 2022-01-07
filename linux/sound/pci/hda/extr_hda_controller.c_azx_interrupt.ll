; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hdac_bus = type { i32 }

@INTSTS = common dso_local global i32 0, align 4
@stream_update = common dso_local global i32 0, align 4
@RIRBSTS = common dso_local global i32 0, align 4
@RIRB_INT_MASK = common dso_local global i32 0, align 4
@RIRB_INT_RESPONSE = common dso_local global i32 0, align 4
@AZX_DCAPS_CTX_WORKAROUND = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @azx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.azx*, align 8
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.azx*
  store %struct.azx* %12, %struct.azx** %5, align 8
  %13 = load %struct.azx*, %struct.azx** %5, align 8
  %14 = call %struct.hdac_bus* @azx_bus(%struct.azx* %13)
  store %struct.hdac_bus* %14, %struct.hdac_bus** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %16 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.azx*, %struct.azx** %5, align 8
  %19 = getelementptr inbounds %struct.azx, %struct.azx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %82

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %79, %23
  %25 = load %struct.azx*, %struct.azx** %5, align 8
  %26 = load i32, i32* @INTSTS, align 4
  %27 = call i32 @azx_readl(%struct.azx* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %24
  br label %81

34:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %35 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @stream_update, align 4
  %38 = call i64 @snd_hdac_bus_handle_stream_irq(%struct.hdac_bus* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.azx*, %struct.azx** %5, align 8
  %43 = load i32, i32* @RIRBSTS, align 4
  %44 = call i32 @azx_readb(%struct.azx* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @RIRB_INT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @RIRB_INT_RESPONSE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.azx*, %struct.azx** %5, align 8
  %56 = getelementptr inbounds %struct.azx, %struct.azx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AZX_DCAPS_CTX_WORKAROUND, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @udelay(i32 80)
  br label %63

63:                                               ; preds = %61, %54
  %64 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %65 = call i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus* %64)
  br label %66

66:                                               ; preds = %63, %49
  %67 = load %struct.azx*, %struct.azx** %5, align 8
  %68 = load i32, i32* @RIRBSTS, align 4
  %69 = load i32, i32* @RIRB_INT_MASK, align 4
  %70 = call i32 @azx_writeb(%struct.azx* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %41
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = icmp slt i32 %77, 10
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %24, label %81

81:                                               ; preds = %79, %33
  br label %82

82:                                               ; preds = %81, %22
  %83 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %84 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @IRQ_RETVAL(i32 %86)
  ret i32 %87
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @azx_readl(%struct.azx*, i32) #1

declare dso_local i64 @snd_hdac_bus_handle_stream_irq(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @azx_readb(%struct.azx*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus*) #1

declare dso_local i32 @azx_writeb(%struct.azx*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_update_d0i3c.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_update_d0i3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.hdac_bus = type { i32 }

@VS_D0I3C = common dso_local global i32 0, align 4
@AZX_REG_VS_D0I3C_CIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Before D0I3C update: D0I3C CIP timeout\0A\00", align 1
@AZX_REG_VS_D0I3C_I3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"After D0I3C update: D0I3C CIP timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"D0I3C register = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_update_d0i3c(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(%struct.device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call %struct.hdac_bus* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.hdac_bus* %12, %struct.hdac_bus** %6, align 8
  store i32 50, i32* %8, align 4
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %14 = load i32, i32* @VS_D0I3C, align 4
  %15 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %27, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AZX_REG_VS_D0I3C_CIP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = call i32 @udelay(i32 10)
  %29 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %30 = load i32, i32* @VS_D0I3C, align 4
  %31 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %16

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %37 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %92

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @AZX_REG_VS_D0I3C_I3, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @AZX_REG_VS_D0I3C_I3, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %54 = load i32, i32* @VS_D0I3C, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %53, i32 %54, i32 %55)
  store i32 50, i32* %8, align 4
  %57 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %58 = load i32, i32* @VS_D0I3C, align 4
  %59 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %71, %52
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @AZX_REG_VS_D0I3C_CIP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i1 [ false, %60 ], [ %68, %65 ]
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = call i32 @udelay(i32 10)
  %73 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %74 = load i32, i32* @VS_D0I3C, align 4
  %75 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %60

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %81 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %92

84:                                               ; preds = %76
  %85 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %86 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %89 = load i32, i32* @VS_D0I3C, align 4
  %90 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %88, i32 %89)
  %91 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %84, %79, %35
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.hdac_bus* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @snd_hdac_chip_readb(%struct.hdac_bus*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_hdac_chip_writeb(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

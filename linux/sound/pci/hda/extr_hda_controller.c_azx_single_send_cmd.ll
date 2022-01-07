; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_single_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_single_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32* }
%struct.azx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRS = common dso_local global i32 0, align 4
@AZX_IRS_BUSY = common dso_local global i32 0, align 4
@AZX_IRS_VALID = common dso_local global i32 0, align 4
@IC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"send_cmd timeout: IRS=0x%x, val=0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_bus*, i32)* @azx_single_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_single_send_cmd(%struct.hdac_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.azx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %10 = call %struct.azx* @bus_to_azx(%struct.hdac_bus* %9)
  store %struct.azx* %10, %struct.azx** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @azx_command_addr(i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  store i32 50, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %16 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @azx_command_addr(i32 %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %14, i32* %20, align 4
  br label %21

21:                                               ; preds = %56, %2
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.azx*, %struct.azx** %6, align 8
  %27 = load i32, i32* @IRS, align 4
  %28 = call i32 @azx_readw(%struct.azx* %26, i32 %27)
  %29 = load i32, i32* @AZX_IRS_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %25
  %33 = load %struct.azx*, %struct.azx** %6, align 8
  %34 = load i32, i32* @IRS, align 4
  %35 = load %struct.azx*, %struct.azx** %6, align 8
  %36 = load i32, i32* @IRS, align 4
  %37 = call i32 @azx_readw(%struct.azx* %35, i32 %36)
  %38 = load i32, i32* @AZX_IRS_VALID, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @azx_writew(%struct.azx* %33, i32 %34, i32 %39)
  %41 = load %struct.azx*, %struct.azx** %6, align 8
  %42 = load i32, i32* @IC, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @azx_writel(%struct.azx* %41, i32 %42, i32 %43)
  %45 = load %struct.azx*, %struct.azx** %6, align 8
  %46 = load i32, i32* @IRS, align 4
  %47 = load %struct.azx*, %struct.azx** %6, align 8
  %48 = load i32, i32* @IRS, align 4
  %49 = call i32 @azx_readw(%struct.azx* %47, i32 %48)
  %50 = load i32, i32* @AZX_IRS_BUSY, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @azx_writew(%struct.azx* %45, i32 %46, i32 %51)
  %53 = load %struct.azx*, %struct.azx** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @azx_single_wait_for_response(%struct.azx* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %75

56:                                               ; preds = %25
  %57 = call i32 @udelay(i32 1)
  br label %21

58:                                               ; preds = %21
  %59 = call i64 (...) @printk_ratelimit()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.azx*, %struct.azx** %6, align 8
  %63 = getelementptr inbounds %struct.azx, %struct.azx* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.azx*, %struct.azx** %6, align 8
  %68 = load i32, i32* @IRS, align 4
  %69 = call i32 @azx_readw(%struct.azx* %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %61, %58
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %32
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.azx* @bus_to_azx(%struct.hdac_bus*) #1

declare dso_local i64 @azx_command_addr(i32) #1

declare dso_local i32 @azx_readw(%struct.azx*, i32) #1

declare dso_local i32 @azx_writew(%struct.azx*, i32, i32) #1

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

declare dso_local i32 @azx_single_wait_for_response(%struct.azx*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

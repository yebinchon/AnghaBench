; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_dump_registers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"SSCR0 0x%08x SSCR1 0x%08x SSTO 0x%08x\0A\00", align 1
@SSCR0 = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SSPSP 0x%08x SSSR 0x%08x SSACD 0x%08x\0A\00", align 1
@SSPSP = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@SSACD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssp_device*)* @dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_registers(%struct.ssp_device* %0) #0 {
  %2 = alloca %struct.ssp_device*, align 8
  store %struct.ssp_device* %0, %struct.ssp_device** %2, align 8
  %3 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %4 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %8 = load i32, i32* @SSCR0, align 4
  %9 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %7, i32 %8)
  %10 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %11 = load i32, i32* @SSCR1, align 4
  %12 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %10, i32 %11)
  %13 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %14 = load i32, i32* @SSTO, align 4
  %15 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %13, i32 %14)
  %16 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %18 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %22 = load i32, i32* @SSPSP, align 4
  %23 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %21, i32 %22)
  %24 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %25 = load i32, i32* @SSSR, align 4
  %26 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %24, i32 %25)
  %27 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %28 = load i32, i32* @SSACD, align 4
  %29 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %27, i32 %28)
  %30 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ESS_CMD_READREG = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [22 x i8] c"Reg %02x now is %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.es1938*, i8)* @snd_es1938_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_es1938_read(%struct.es1938* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.es1938* %0, %struct.es1938** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.es1938*, %struct.es1938** %3, align 8
  %8 = getelementptr inbounds %struct.es1938, %struct.es1938* %7, i32 0, i32 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.es1938*, %struct.es1938** %3, align 8
  %12 = load i8, i8* @ESS_CMD_READREG, align 1
  %13 = call i32 @snd_es1938_write_cmd(%struct.es1938* %11, i8 zeroext %12)
  %14 = load %struct.es1938*, %struct.es1938** %3, align 8
  %15 = load i8, i8* %4, align 1
  %16 = call i32 @snd_es1938_write_cmd(%struct.es1938* %14, i8 zeroext %15)
  %17 = load %struct.es1938*, %struct.es1938** %3, align 8
  %18 = call zeroext i8 @snd_es1938_get_byte(%struct.es1938* %17)
  store i8 %18, i8* %5, align 1
  %19 = load %struct.es1938*, %struct.es1938** %3, align 8
  %20 = getelementptr inbounds %struct.es1938, %struct.es1938* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.es1938*, %struct.es1938** %3, align 8
  %24 = getelementptr inbounds %struct.es1938, %struct.es1938* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8, i8* %4, align 1
  %29 = load i8, i8* %5, align 1
  %30 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 zeroext %28, i8 zeroext %29)
  %31 = load i8, i8* %5, align 1
  ret i8 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_es1938_write_cmd(%struct.es1938*, i8 zeroext) #1

declare dso_local zeroext i8 @snd_es1938_get_byte(%struct.es1938*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ESS_CMD_READREG = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"Reg %02x was %02x, set to %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1938*, i8, i8, i8)* @snd_es1938_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_bits(%struct.es1938* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.es1938*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.es1938* %0, %struct.es1938** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %13 = load %struct.es1938*, %struct.es1938** %5, align 8
  %14 = getelementptr inbounds %struct.es1938, %struct.es1938* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.es1938*, %struct.es1938** %5, align 8
  %18 = load i8, i8* @ESS_CMD_READREG, align 1
  %19 = call i32 @snd_es1938_write_cmd(%struct.es1938* %17, i8 zeroext %18)
  %20 = load %struct.es1938*, %struct.es1938** %5, align 8
  %21 = load i8, i8* %6, align 1
  %22 = call i32 @snd_es1938_write_cmd(%struct.es1938* %20, i8 zeroext %21)
  %23 = load %struct.es1938*, %struct.es1938** %5, align 8
  %24 = call zeroext i8 @snd_es1938_get_byte(%struct.es1938* %23)
  store i8 %24, i8* %10, align 1
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %12, align 1
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %12, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %4
  %37 = load %struct.es1938*, %struct.es1938** %5, align 8
  %38 = load i8, i8* %6, align 1
  %39 = call i32 @snd_es1938_write_cmd(%struct.es1938* %37, i8 zeroext %38)
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = or i32 %45, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %11, align 1
  %53 = load %struct.es1938*, %struct.es1938** %5, align 8
  %54 = load i8, i8* %11, align 1
  %55 = call i32 @snd_es1938_write_cmd(%struct.es1938* %53, i8 zeroext %54)
  %56 = load %struct.es1938*, %struct.es1938** %5, align 8
  %57 = getelementptr inbounds %struct.es1938, %struct.es1938* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8, i8* %6, align 1
  %62 = load i8, i8* %10, align 1
  %63 = load i8, i8* %11, align 1
  %64 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 zeroext %61, i8 zeroext %62, i8 zeroext %63)
  br label %65

65:                                               ; preds = %36, %4
  %66 = load %struct.es1938*, %struct.es1938** %5, align 8
  %67 = getelementptr inbounds %struct.es1938, %struct.es1938* %66, i32 0, i32 0
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_es1938_write_cmd(%struct.es1938*, i8 zeroext) #1

declare dso_local zeroext i8 @snd_es1938_get_byte(%struct.es1938*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

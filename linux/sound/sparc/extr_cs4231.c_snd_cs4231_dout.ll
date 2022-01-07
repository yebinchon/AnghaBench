; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_dout.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_dout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i8 }

@REGSEL = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@CS4231_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*, i8, i8)* @snd_cs4231_dout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_dout(%struct.snd_cs4231* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %8 = call i32 @snd_cs4231_ready(%struct.snd_cs4231* %7)
  %9 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %10 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %11 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  %18 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %19 = load i32, i32* @REGSEL, align 4
  %20 = call i32 @CS4231U(%struct.snd_cs4231* %18, i32 %19)
  %21 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %9, i8 zeroext %17, i32 %20)
  %22 = call i32 (...) @wmb()
  %23 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %24 = load i8, i8* %6, align 1
  %25 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %26 = load i32, i32* @REG, align 4
  %27 = call i32 @CS4231U(%struct.snd_cs4231* %25, i32 %26)
  %28 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %23, i8 zeroext %24, i32 %27)
  %29 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @snd_cs4231_ready(%struct.snd_cs4231*) #1

declare dso_local i32 @__cs4231_writeb(%struct.snd_cs4231*, i8 zeroext, i32) #1

declare dso_local i32 @CS4231U(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

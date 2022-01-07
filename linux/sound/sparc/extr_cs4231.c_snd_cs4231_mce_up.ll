; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_mce_up.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_mce_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32, i32, i32 }

@CS4231_MCE = common dso_local global i32 0, align 4
@REGSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"mce_up [%p]: serious init problem - codec still busy\0A\00", align 1
@CS4231_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*)* @snd_cs4231_mce_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_mce_up(%struct.snd_cs4231* %0) #0 {
  %2 = alloca %struct.snd_cs4231*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %2, align 8
  %5 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %6 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %10 = call i32 @snd_cs4231_ready(%struct.snd_cs4231* %9)
  %11 = load i32, i32* @CS4231_MCE, align 4
  %12 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %13 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %17 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %18 = load i32, i32* @REGSEL, align 4
  %19 = call i32 @CS4231U(%struct.snd_cs4231* %17, i32 %18)
  %20 = call i32 @__cs4231_readb(%struct.snd_cs4231* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %25 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CS4231_MCE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %35 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %36 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 31
  %40 = or i32 %37, %39
  %41 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %42 = load i32, i32* @REGSEL, align 4
  %43 = call i32 @CS4231U(%struct.snd_cs4231* %41, i32 %42)
  %44 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %34, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %33, %28
  %46 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %47 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %46, i32 0, i32 1
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_ready(%struct.snd_cs4231*) #1

declare dso_local i32 @__cs4231_readb(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @CS4231U(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @snd_printdd(i8*, ...) #1

declare dso_local i32 @__cs4231_writeb(%struct.snd_cs4231*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

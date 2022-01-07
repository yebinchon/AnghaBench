; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_cs4215_setup_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_cs4215_setup_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbri = type { i32 }

@D_SDP_MEM = common dso_local global i32 0, align 4
@D_SDP_TO_SER = common dso_local global i32 0, align 4
@D_SDP_MSB = common dso_local global i32 0, align 4
@D_SDP_FIXED = common dso_local global i32 0, align 4
@D_SDP_FROM_SER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dbri*)* @cs4215_setup_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4215_setup_pipes(%struct.snd_dbri* %0) #0 {
  %2 = alloca %struct.snd_dbri*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_dbri* %0, %struct.snd_dbri** %2, align 8
  %4 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %5 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %9 = load i32, i32* @D_SDP_MEM, align 4
  %10 = load i32, i32* @D_SDP_TO_SER, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @D_SDP_MSB, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @setup_pipe(%struct.snd_dbri* %8, i32 4, i32 %13)
  %15 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %16 = load i32, i32* @D_SDP_FIXED, align 4
  %17 = load i32, i32* @D_SDP_TO_SER, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @D_SDP_MSB, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @setup_pipe(%struct.snd_dbri* %15, i32 20, i32 %20)
  %22 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %23 = load i32, i32* @D_SDP_MEM, align 4
  %24 = load i32, i32* @D_SDP_FROM_SER, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @D_SDP_MSB, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @setup_pipe(%struct.snd_dbri* %22, i32 6, i32 %27)
  %29 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %30 = load i32, i32* @D_SDP_FIXED, align 4
  %31 = load i32, i32* @D_SDP_FROM_SER, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @D_SDP_MSB, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @setup_pipe(%struct.snd_dbri* %29, i32 21, i32 %34)
  %36 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %37 = load i32, i32* @D_SDP_FIXED, align 4
  %38 = load i32, i32* @D_SDP_TO_SER, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @D_SDP_MSB, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @setup_pipe(%struct.snd_dbri* %36, i32 17, i32 %41)
  %43 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %44 = load i32, i32* @D_SDP_FIXED, align 4
  %45 = load i32, i32* @D_SDP_FROM_SER, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @D_SDP_MSB, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @setup_pipe(%struct.snd_dbri* %43, i32 18, i32 %48)
  %50 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %51 = load i32, i32* @D_SDP_FIXED, align 4
  %52 = load i32, i32* @D_SDP_FROM_SER, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @D_SDP_MSB, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @setup_pipe(%struct.snd_dbri* %50, i32 19, i32 %55)
  %57 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %58 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %57, i32 0, i32 0
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %62 = call i32 @dbri_cmdwait(%struct.snd_dbri* %61)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @setup_pipe(%struct.snd_dbri*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dbri_cmdwait(%struct.snd_dbri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_icode_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_icode_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_emu10k1_fx8010_code = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*)* @snd_emu10k1_icode_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_icode_peek(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_code* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_fx8010_code*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_fx8010_code* %1, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %6 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlcpy(i32 %12, i32 %16, i32 4)
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %19 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %20 = call i32 @snd_emu10k1_gpr_peek(%struct.snd_emu10k1* %18, %struct.snd_emu10k1_fx8010_code* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %25 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %26 = call i32 @snd_emu10k1_tram_peek(%struct.snd_emu10k1* %24, %struct.snd_emu10k1_fx8010_code* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %32 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %33 = call i32 @snd_emu10k1_code_peek(%struct.snd_emu10k1* %31, %struct.snd_emu10k1_fx8010_code* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %39 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %40 = call i32 @snd_emu10k1_list_controls(%struct.snd_emu10k1* %38, %struct.snd_emu10k1_fx8010_code* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_gpr_peek(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @snd_emu10k1_tram_peek(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @snd_emu10k1_code_peek(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @snd_emu10k1_list_controls(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_set_dac_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_set_dac_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i8*, i8*, %struct.dsp_scb_descriptor*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.dsp_scb_descriptor = type { %struct.dsp_scb_descriptor* }
%struct.TYPE_4__ = type { %struct.dsp_scb_descriptor* }
%struct.TYPE_3__ = type { %struct.dsp_scb_descriptor* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_set_dac_volume(%struct.snd_cs46xx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsp_spos_instance*, align 8
  %8 = alloca %struct.dsp_scb_descriptor*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %10 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %9, i32 0, i32 1
  %11 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  store %struct.dsp_spos_instance* %11, %struct.dsp_spos_instance** %7, align 8
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %13 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %16 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %18, align 8
  store %struct.dsp_scb_descriptor* %19, %struct.dsp_scb_descriptor** %8, align 8
  br label %20

20:                                               ; preds = %26, %3
  %21 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %23 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %22, i32 0, i32 2
  %24 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %23, align 8
  %25 = icmp ne %struct.dsp_scb_descriptor* %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %28 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx* %27, %struct.dsp_scb_descriptor* %28, i8* %29, i8* %30)
  %32 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %33 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %32, i32 0, i32 0
  %34 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %33, align 8
  store %struct.dsp_scb_descriptor* %34, %struct.dsp_scb_descriptor** %8, align 8
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %37 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %39, align 8
  store %struct.dsp_scb_descriptor* %40, %struct.dsp_scb_descriptor** %8, align 8
  br label %41

41:                                               ; preds = %47, %35
  %42 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %43 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %44 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %43, i32 0, i32 2
  %45 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %44, align 8
  %46 = icmp ne %struct.dsp_scb_descriptor* %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %49 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx* %48, %struct.dsp_scb_descriptor* %49, i8* %50, i8* %51)
  %53 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %54 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %53, i32 0, i32 0
  %55 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %54, align 8
  store %struct.dsp_scb_descriptor* %55, %struct.dsp_scb_descriptor** %8, align 8
  br label %41

56:                                               ; preds = %41
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %59 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %62 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %64 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

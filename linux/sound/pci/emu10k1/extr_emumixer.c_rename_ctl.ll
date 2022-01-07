; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_rename_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_rename_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*, i8*)* @rename_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_ctl(%struct.snd_card* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.snd_kcontrol* @ctl_find(%struct.snd_card* %9, i8* %10)
  store %struct.snd_kcontrol* %11, %struct.snd_kcontrol** %8, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %13 = icmp ne %struct.snd_kcontrol* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strcpy(i32 %18, i8* %19)
  store i32 0, i32* %4, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.snd_kcontrol* @ctl_find(%struct.snd_card*, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

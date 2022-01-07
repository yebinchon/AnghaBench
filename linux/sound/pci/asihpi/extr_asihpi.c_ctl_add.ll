; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_ctl_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_ctl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32 }
%struct.snd_card_asihpi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mixer_dump = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"added %s(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_kcontrol_new*, %struct.snd_card_asihpi*)* @ctl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_add(%struct.snd_card* %0, %struct.snd_kcontrol_new* %1, %struct.snd_card_asihpi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.snd_card_asihpi*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %6, align 8
  store %struct.snd_card_asihpi* %2, %struct.snd_card_asihpi** %7, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %10 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %11 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %7, align 8
  %12 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %10, %struct.snd_card_asihpi* %11)
  %13 = call i32 @snd_ctl_add(%struct.snd_card* %9, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i64, i64* @mixer_dump, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %7, align 8
  %23 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %21, %18
  br label %34

34:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_card_asihpi*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

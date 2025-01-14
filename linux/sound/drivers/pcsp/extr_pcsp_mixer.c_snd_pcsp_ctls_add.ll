; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/pcsp/extr_pcsp_mixer.c_snd_pcsp_ctls_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/pcsp/extr_pcsp_mixer.c_snd_pcsp_ctls_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcsp = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcsp*, %struct.snd_kcontrol_new*, i32)* @snd_pcsp_ctls_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcsp_ctls_add(%struct.snd_pcsp* %0, %struct.snd_kcontrol_new* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcsp*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_card*, align 8
  store %struct.snd_pcsp* %0, %struct.snd_pcsp** %5, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_pcsp*, %struct.snd_pcsp** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %11, i32 0, i32 0
  %13 = load %struct.snd_card*, %struct.snd_card** %12, align 8
  store %struct.snd_card* %13, %struct.snd_card** %10, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %20 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i64 %22
  %24 = load %struct.snd_pcsp*, %struct.snd_pcsp** %5, align 8
  %25 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %23, %struct.snd_pcsp* %24)
  %26 = call i32 @snd_ctl_add(%struct.snd_card* %19, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %14

35:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_pcsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

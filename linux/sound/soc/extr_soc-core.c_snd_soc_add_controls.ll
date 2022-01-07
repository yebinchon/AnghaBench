; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.device = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ASoC: Failed to add %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.device*, %struct.snd_kcontrol_new*, i32, i8*, i8*)* @snd_soc_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_add_controls(%struct.snd_card* %0, %struct.device* %1, %struct.snd_kcontrol_new* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %8, align 8
  store %struct.device* %1, %struct.device** %9, align 8
  store %struct.snd_kcontrol_new* %2, %struct.snd_kcontrol_new** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %46, %6
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %22, i64 %24
  store %struct.snd_kcontrol_new* %25, %struct.snd_kcontrol_new** %16, align 8
  %26 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %27 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %16, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %16, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @snd_soc_cnew(%struct.snd_kcontrol_new* %27, i8* %28, i32 %31, i8* %32)
  %34 = call i32 @snd_ctl_add(%struct.snd_card* %26, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %21
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %16, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  br label %17

49:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_soc_cnew(%struct.snd_kcontrol_new*, i8*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

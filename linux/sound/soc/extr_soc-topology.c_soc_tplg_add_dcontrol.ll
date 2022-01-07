; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_add_dcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_add_dcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.device = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.snd_kcontrol = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"ASoC: Failed to create new kcontrol %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ASoC: Failed to add %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.device*, %struct.snd_kcontrol_new*, i8*, i8*, %struct.snd_kcontrol**)* @soc_tplg_add_dcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_add_dcontrol(%struct.snd_card* %0, %struct.device* %1, %struct.snd_kcontrol_new* %2, i8* %3, i8* %4, %struct.snd_kcontrol** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.snd_kcontrol**, align 8
  %14 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %8, align 8
  store %struct.device* %1, %struct.device** %9, align 8
  store %struct.snd_kcontrol_new* %2, %struct.snd_kcontrol_new** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.snd_kcontrol** %5, %struct.snd_kcontrol*** %13, align 8
  %15 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call %struct.snd_kcontrol* @snd_soc_cnew(%struct.snd_kcontrol_new* %15, i8* %16, i32 %19, i8* %20)
  %22 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %13, align 8
  store %struct.snd_kcontrol* %21, %struct.snd_kcontrol** %22, align 8
  %23 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %13, align 8
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %23, align 8
  %25 = icmp eq %struct.snd_kcontrol* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %50

34:                                               ; preds = %6
  %35 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %36 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %13, align 8
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %36, align 8
  %38 = call i32 @snd_ctl_add(%struct.snd_card* %35, %struct.snd_kcontrol* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %7, align 4
  br label %50

49:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %41, %26
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.snd_kcontrol* @snd_soc_cnew(%struct.snd_kcontrol_new*, i8*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

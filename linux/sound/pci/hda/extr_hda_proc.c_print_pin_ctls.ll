; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_pin_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_pin_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@AC_VERB_GET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"  Pin-ctls: 0x%02x:\00", align 1
@AC_PINCTL_IN_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" IN\00", align 1
@AC_PINCTL_OUT_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" OUT\00", align 1
@AC_PINCTL_HP_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" HP\00", align 1
@AC_PINCTL_VREFEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" VREF_HIZ\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" VREF_50\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" VREF_GRD\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" VREF_80\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" VREF_100\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32)* @print_pin_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pin_ctls(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %14 = call i32 @snd_hda_codec_read(%struct.hda_codec* %11, i32 %12, i32 0, i32 %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @AC_PINCTL_IN_EN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %24 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @AC_PINCTL_OUT_EN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %32 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @AC_PINCTL_HP_EN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  switch i32 %48, label %64 [
    i32 128, label %49
    i32 131, label %52
    i32 129, label %55
    i32 130, label %58
    i32 132, label %61
  ]

49:                                               ; preds = %44
  %50 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %51 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %64

52:                                               ; preds = %44
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %54 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %64

55:                                               ; preds = %44
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %57 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %64

58:                                               ; preds = %44
  %59 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %64

61:                                               ; preds = %44
  %62 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %63 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %64

64:                                               ; preds = %44, %61, %58, %55, %52, %49
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %67 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

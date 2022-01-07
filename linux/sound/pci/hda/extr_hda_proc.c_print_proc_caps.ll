; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_proc_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_proc_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@AC_PAR_PROC_CAP = common dso_local global i32 0, align 4
@AC_PCAP_NUM_COEF = common dso_local global i32 0, align 4
@AC_PCAP_NUM_COEF_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"  Processing caps: benign=%d, ncoeff=%d\0A\00", align 1
@AC_PCAP_BENIGN = common dso_local global i32 0, align 4
@AC_VERB_GET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_SET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_GET_PROC_COEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"    Coeff 0x%02x: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* @print_proc_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_proc_caps(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AC_PAR_PROC_CAP, align 4
  %15 = call i32 @param_read(%struct.hda_codec* %12, i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @AC_PCAP_NUM_COEF, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @AC_PCAP_NUM_COEF_SHIFT, align 4
  %20 = lshr i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @AC_PCAP_BENIGN, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %28 = call i32 @can_dump_coef(%struct.hda_codec* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %63

31:                                               ; preds = %3
  %32 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @AC_VERB_GET_COEF_INDEX, align 4
  %35 = call i32 @snd_hda_codec_read(%struct.hda_codec* %32, i32 %33, i32 0, i32 %34, i32 0)
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %54, %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @snd_hda_codec_write(%struct.hda_codec* %41, i32 %42, i32 0, i32 %43, i32 %44)
  %46 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AC_VERB_GET_PROC_COEF, align 4
  %49 = call i32 @snd_hda_codec_read(%struct.hda_codec* %46, i32 %47, i32 0, i32 %48, i32 0)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @snd_iprintf(%struct.snd_info_buffer* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @snd_hda_codec_write(%struct.hda_codec* %58, i32 %59, i32 0, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %30
  ret void
}

declare dso_local i32 @param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

declare dso_local i32 @can_dump_coef(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

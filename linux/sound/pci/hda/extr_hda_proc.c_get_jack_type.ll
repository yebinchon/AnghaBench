; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_get_jack_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_get_jack_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_jack_type.jack_types = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HP Out\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SPDIF Out\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Digital Out\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Modem Line\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Modem Hand\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Telephony\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SPDIF In\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Digital In\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@AC_DEFCFG_DEVICE = common dso_local global i64 0, align 8
@AC_DEFCFG_DEVICE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_jack_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_jack_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @AC_DEFCFG_DEVICE, align 8
  %5 = and i64 %3, %4
  %6 = load i64, i64* @AC_DEFCFG_DEVICE_SHIFT, align 8
  %7 = lshr i64 %5, %6
  %8 = getelementptr inbounds [16 x i8*], [16 x i8*]* @get_jack_type.jack_types, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

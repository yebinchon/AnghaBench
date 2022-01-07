; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_init_iec958_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_init_iec958_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_sub_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i8 0, align 1
@IEC958_AES0_CON_EMPHASIS_NONE = common dso_local global i8 0, align 1
@IEC958_AES1_CON_GENERAL = common dso_local global i8 0, align 1
@IEC958_AES2_CON_SOURCE_UNSPEC = common dso_local global i8 0, align 1
@IEC958_AES2_CON_CHANNEL_UNSPEC = common dso_local global i8 0, align 1
@IEC958_AES3_CON_CLOCK_1000PPM = common dso_local global i8 0, align 1
@IEC958_AES3_CON_FS_NOTID = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_sai_sub_data*)* @stm32_sai_init_iec958_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_sai_init_iec958_status(%struct.stm32_sai_sub_data* %0) #0 {
  %2 = alloca %struct.stm32_sai_sub_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.stm32_sai_sub_data* %0, %struct.stm32_sai_sub_data** %2, align 8
  %4 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %2, align 8
  %5 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8, i8* @IEC958_AES0_CON_NOT_COPYRIGHT, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @IEC958_AES0_CON_EMPHASIS_NONE, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %13, i8* %15, align 1
  %16 = load i8, i8* @IEC958_AES1_CON_GENERAL, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %16, i8* %18, align 1
  %19 = load i8, i8* @IEC958_AES2_CON_SOURCE_UNSPEC, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @IEC958_AES2_CON_CHANNEL_UNSPEC, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %24, i8* %26, align 1
  %27 = load i8, i8* @IEC958_AES3_CON_CLOCK_1000PPM, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @IEC958_AES3_CON_FS_NOTID, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %32, i8* %34, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.intel8x0m* }
%struct.intel8x0m = type { i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Intel8x0m\0A\0A\00", align 1
@DEVICE_ALI = common dso_local global i64 0, align 8
@GLOB_STA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Global control        : 0x%08x\0A\00", align 1
@GLOB_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Global status         : 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"AC'97 codecs ready    :%s%s%s%s\0A\00", align 1
@ICH_PCR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" primary\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ICH_SCR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" secondary\00", align 1
@ICH_TCR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" tertiary\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_intel8x0m_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_intel8x0m_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.intel8x0m*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.intel8x0m*, %struct.intel8x0m** %8, align 8
  store %struct.intel8x0m* %9, %struct.intel8x0m** %5, align 8
  %10 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %11 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %13 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DEVICE_ALI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %20 = load i32, i32* @GLOB_STA, align 4
  %21 = call i32 @ICHREG(i32 %20)
  %22 = call i32 @igetdword(%struct.intel8x0m* %19, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %24 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %25 = load i32, i32* @GLOB_CNT, align 4
  %26 = call i32 @ICHREG(i32 %25)
  %27 = call i32 @igetdword(%struct.intel8x0m* %24, i32 %26)
  %28 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ICH_PCR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ICH_SCR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ICH_TCR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ICH_PCR, align 4
  %53 = load i32, i32* @ICH_SCR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ICH_TCR, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %61 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %44, i8* %50, i8* %60)
  br label %62

62:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @igetdword(%struct.intel8x0m*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

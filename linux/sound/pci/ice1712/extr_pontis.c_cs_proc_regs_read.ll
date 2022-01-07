; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_cs_proc_regs_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_cs_proc_regs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@CS_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%02x = %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @cs_proc_regs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_proc_regs_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %9, align 8
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %5, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %26, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 38
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %19 = load i32, i32* @CS_DEV, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @spi_read(%struct.snd_ice1712* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @snd_iprintf(%struct.snd_info_buffer* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %31 = load i32, i32* @CS_DEV, align 4
  %32 = call i32 @spi_read(%struct.snd_ice1712* %30, i32 %31, i32 127)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @snd_iprintf(%struct.snd_info_buffer* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 127, i32 %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_read(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_proc_regs_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_proc_regs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"SCR:\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MCR:\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CPLD:\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_regs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_regs_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca [36 x i8], align 16
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %8, align 8
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  %10 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %11 = getelementptr inbounds [36 x i8], [36 x i8]* %6, i64 0, i64 0
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %13 = call i32 @get_scr(%struct.snd_ice1712* %12)
  %14 = call i32 @get_binary(i8* %11, i32 %13)
  %15 = call i32 @snd_iprintf(%struct.snd_info_buffer* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %17 = getelementptr inbounds [36 x i8], [36 x i8]* %6, i64 0, i64 0
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %19 = call i32 @get_mcr(%struct.snd_ice1712* %18)
  %20 = call i32 @get_binary(i8* %17, i32 %19)
  %21 = call i32 @snd_iprintf(%struct.snd_info_buffer* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %23 = getelementptr inbounds [36 x i8], [36 x i8]* %6, i64 0, i64 0
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %25 = call i32 @get_cpld(%struct.snd_ice1712* %24)
  %26 = call i32 @get_binary(i8* %23, i32 %25)
  %27 = call i32 @snd_iprintf(%struct.snd_info_buffer* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32) #1

declare dso_local i32 @get_binary(i8*, i32) #1

declare dso_local i32 @get_scr(%struct.snd_ice1712*) #1

declare dso_local i32 @get_mcr(%struct.snd_ice1712*) #1

declare dso_local i32 @get_cpld(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_dbri_regs_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_dbri_regs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_dbri* }
%struct.snd_dbri = type { i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"REG0: 0x%x\0A\00", align 1
@REG0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"REG2: 0x%x\0A\00", align 1
@REG2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"REG8: 0x%x\0A\00", align 1
@REG8 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"REG9: 0x%x\0A\00", align 1
@REG9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @dbri_regs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbri_regs_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_dbri*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %6 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %7 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %6, i32 0, i32 0
  %8 = load %struct.snd_dbri*, %struct.snd_dbri** %7, align 8
  store %struct.snd_dbri* %8, %struct.snd_dbri** %5, align 8
  %9 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %10 = load %struct.snd_dbri*, %struct.snd_dbri** %5, align 8
  %11 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG0, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @sbus_readl(i64 %14)
  %16 = call i32 @snd_iprintf(%struct.snd_info_buffer* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %18 = load %struct.snd_dbri*, %struct.snd_dbri** %5, align 8
  %19 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @sbus_readl(i64 %22)
  %24 = call i32 @snd_iprintf(%struct.snd_info_buffer* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %26 = load %struct.snd_dbri*, %struct.snd_dbri** %5, align 8
  %27 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REG8, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @sbus_readl(i64 %30)
  %32 = call i32 @snd_iprintf(%struct.snd_info_buffer* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %34 = load %struct.snd_dbri*, %struct.snd_dbri** %5, align 8
  %35 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG9, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @sbus_readl(i64 %38)
  %40 = call i32 @snd_iprintf(%struct.snd_info_buffer* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32) #1

declare dso_local i32 @sbus_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

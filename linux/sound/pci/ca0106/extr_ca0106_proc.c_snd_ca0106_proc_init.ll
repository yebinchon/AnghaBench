; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"iec958\00", align 1
@snd_ca0106_proc_iec958 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ca0106_reg32\00", align 1
@snd_ca0106_proc_reg_read32 = common dso_local global i32* null, align 8
@snd_ca0106_proc_reg_write32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ca0106_reg16\00", align 1
@snd_ca0106_proc_reg_read16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ca0106_reg8\00", align 1
@snd_ca0106_proc_reg_read8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ca0106_regs1\00", align 1
@snd_ca0106_proc_reg_read1 = common dso_local global i32* null, align 8
@snd_ca0106_proc_reg_write = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"ca0106_i2c\00", align 1
@snd_ca0106_proc_i2c_write = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"ca0106_regs2\00", align 1
@snd_ca0106_proc_reg_read2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ca0106_proc_init(%struct.snd_ca0106* %0) #0 {
  %2 = alloca %struct.snd_ca0106*, align 8
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %2, align 8
  %3 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %7 = load i32, i32* @snd_ca0106_proc_iec958, align 4
  %8 = call i32 @snd_card_ro_proc_new(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.snd_ca0106* %6, i32 %7)
  %9 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %10 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %13 = load i32*, i32** @snd_ca0106_proc_reg_read32, align 8
  %14 = load i32, i32* @snd_ca0106_proc_reg_write32, align 4
  %15 = call i32 @snd_card_rw_proc_new(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.snd_ca0106* %12, i32* %13, i32 %14)
  %16 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %20 = load i32, i32* @snd_ca0106_proc_reg_read16, align 4
  %21 = call i32 @snd_card_ro_proc_new(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.snd_ca0106* %19, i32 %20)
  %22 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %23 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %26 = load i32, i32* @snd_ca0106_proc_reg_read8, align 4
  %27 = call i32 @snd_card_ro_proc_new(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.snd_ca0106* %25, i32 %26)
  %28 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %29 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %32 = load i32*, i32** @snd_ca0106_proc_reg_read1, align 8
  %33 = load i32, i32* @snd_ca0106_proc_reg_write, align 4
  %34 = call i32 @snd_card_rw_proc_new(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.snd_ca0106* %31, i32* %32, i32 %33)
  %35 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %36 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %39 = load i32, i32* @snd_ca0106_proc_i2c_write, align 4
  %40 = call i32 @snd_card_rw_proc_new(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.snd_ca0106* %38, i32* null, i32 %39)
  %41 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %42 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %45 = load i32, i32* @snd_ca0106_proc_reg_read2, align 4
  %46 = call i32 @snd_card_ro_proc_new(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.snd_ca0106* %44, i32 %45)
  ret i32 0
}

declare dso_local i32 @snd_card_ro_proc_new(i32, i8*, %struct.snd_ca0106*, i32) #1

declare dso_local i32 @snd_card_rw_proc_new(i32, i8*, %struct.snd_ca0106*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

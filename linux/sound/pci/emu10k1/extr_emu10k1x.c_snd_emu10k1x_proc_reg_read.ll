; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_proc_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_proc_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.emu10k1x* }
%struct.emu10k1x = type { i32, i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Registers:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Register %02X: %08lX\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\0ARegisters\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%02X: %08lX %08lX %08lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%02X: %08lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_emu10k1x_proc_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1x_proc_reg_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.emu10k1x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %12 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %11, i32 0, i32 0
  %13 = load %struct.emu10k1x*, %struct.emu10k1x** %12, align 8
  store %struct.emu10k1x* %13, %struct.emu10k1x** %5, align 8
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %15 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %21 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %25 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i64 @inl(i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %32 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %10, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %44 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %79, %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %46, 72
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %49, i32 %50, i32 0)
  store i64 %51, i64* %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %55, 32
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %73

60:                                               ; preds = %57, %48
  %61 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %61, i32 %62, i32 1)
  store i64 %63, i64* %7, align 8
  %64 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %64, i32 %65, i32 2)
  store i64 %66, i64* %8, align 8
  %67 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %68, i64 %69, i64 %70, i64 %71)
  br label %78

73:                                               ; preds = %57, %54
  %74 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i64, i64* %6, align 8
  %77 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %60
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %45

82:                                               ; preds = %45
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

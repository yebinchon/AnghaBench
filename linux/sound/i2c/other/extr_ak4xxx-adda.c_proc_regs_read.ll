; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_proc_regs_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_proc_regs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_akm4xxx* }
%struct.snd_akm4xxx = type { i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"chip %d: 0x%02x = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_regs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_regs_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %10, align 8
  store %struct.snd_akm4xxx* %11, %struct.snd_akm4xxx** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %15 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %22 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @snd_akm4xxx_get(%struct.snd_akm4xxx* %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %19

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %12

42:                                               ; preds = %12
  ret void
}

declare dso_local i32 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

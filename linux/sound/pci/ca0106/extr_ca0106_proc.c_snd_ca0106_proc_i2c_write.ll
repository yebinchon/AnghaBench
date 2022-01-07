; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ca0106* }
%struct.snd_ca0106 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%x %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ca0106_proc_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ca0106_proc_i2c_write(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ca0106*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load %struct.snd_ca0106*, %struct.snd_ca0106** %10, align 8
  store %struct.snd_ca0106* %11, %struct.snd_ca0106** %5, align 8
  br label %12

12:                                               ; preds = %34, %22, %2
  %13 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %15 = call i32 @snd_info_get_line(%struct.snd_info_buffer* %13, i8* %14, i32 64)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8)
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %12

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = icmp ule i32 %24, 127
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ule i32 %27, 511
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %23
  %30 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @snd_ca0106_i2c_write(%struct.snd_ca0106* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  br label %12

35:                                               ; preds = %12
  ret void
}

declare dso_local i32 @snd_info_get_line(%struct.snd_info_buffer*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @snd_ca0106_i2c_write(%struct.snd_ca0106*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

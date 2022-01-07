; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_proc_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_proc_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.emu10k1x* }
%struct.emu10k1x = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%x %x %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_emu10k1x_proc_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1x_proc_reg_write(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.emu10k1x*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %11 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %10, i32 0, i32 0
  %12 = load %struct.emu10k1x*, %struct.emu10k1x** %11, align 8
  store %struct.emu10k1x* %12, %struct.emu10k1x** %5, align 8
  br label %13

13:                                               ; preds = %39, %23, %2
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = call i32 @snd_info_get_line(%struct.snd_info_buffer* %14, i8* %15, i32 64)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9)
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %13

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %25, 73
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp ule i32 %28, -1
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ule i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %30, %27, %24
  br label %13

40:                                               ; preds = %13
  ret void
}

declare dso_local i32 @snd_info_get_line(%struct.snd_info_buffer*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

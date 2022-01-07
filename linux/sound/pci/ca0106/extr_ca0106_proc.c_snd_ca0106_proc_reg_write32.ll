; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_reg_write32.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_reg_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ca0106* }
%struct.snd_ca0106 = type { i32, i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%x %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ca0106_proc_reg_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ca0106_proc_reg_write32(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ca0106*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %11 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %10, i32 0, i32 0
  %12 = load %struct.snd_ca0106*, %struct.snd_ca0106** %11, align 8
  store %struct.snd_ca0106* %12, %struct.snd_ca0106** %5, align 8
  br label %13

13:                                               ; preds = %48, %23, %2
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %16 = call i32 @snd_info_get_line(%struct.snd_info_buffer* %14, i8* %15, i32 64)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %13

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp ule i32 %28, -1
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, -4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @outl(i32 %35, i64 %42)
  %44 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %30, %27, %24
  br label %13

49:                                               ; preds = %13
  ret void
}

declare dso_local i32 @snd_info_get_line(%struct.snd_info_buffer*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

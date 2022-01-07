; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.atiixp* }
%struct.atiixp = type { i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%02x: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_atiixp_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_atiixp_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.atiixp*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.atiixp*, %struct.atiixp** %8, align 8
  store %struct.atiixp* %9, %struct.atiixp** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %17 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @readl(i64 %21)
  %23 = call i32 @snd_iprintf(%struct.snd_info_buffer* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* %6, align 4
  br label %10

27:                                               ; preds = %10
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

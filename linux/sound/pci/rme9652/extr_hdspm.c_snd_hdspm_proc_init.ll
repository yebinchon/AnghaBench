; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i32 }
%struct.snd_info_entry = type opaque
%struct.snd_info_buffer = type opaque
%struct.snd_info_entry.6 = type opaque
%struct.snd_info_buffer.7 = type opaque
%struct.snd_info_entry.0 = type opaque
%struct.snd_info_buffer.1 = type opaque
%struct.snd_info_entry.2 = type opaque
%struct.snd_info_buffer.3 = type opaque
%struct.snd_info_entry.4 = type opaque
%struct.snd_info_buffer.5 = type opaque
%struct.snd_info_entry.8 = type opaque
%struct.snd_info_buffer.9 = type opaque
%struct.snd_info_entry.10 = type opaque
%struct.snd_info_buffer.11 = type opaque

@.str = private unnamed_addr constant [6 x i8] c"hdspm\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ports.in\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ports.out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdspm*)* @snd_hdspm_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_proc_init(%struct.hdspm* %0) #0 {
  %2 = alloca %struct.hdspm*, align 8
  %3 = alloca void (%struct.snd_info_entry*, %struct.snd_info_buffer*)*, align 8
  store %struct.hdspm* %0, %struct.hdspm** %2, align 8
  store void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* null, void (%struct.snd_info_entry*, %struct.snd_info_buffer*)** %3, align 8
  %4 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %5 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %12 [
    i32 132, label %7
    i32 130, label %8
    i32 129, label %9
    i32 128, label %10
    i32 131, label %11
  ]

7:                                                ; preds = %1
  store void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* bitcast (void (%struct.snd_info_entry.0*, %struct.snd_info_buffer.1*)* @snd_hdspm_proc_read_aes32 to void (%struct.snd_info_entry*, %struct.snd_info_buffer*)*), void (%struct.snd_info_entry*, %struct.snd_info_buffer*)** %3, align 8
  br label %12

8:                                                ; preds = %1
  store void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* bitcast (void (%struct.snd_info_entry.2*, %struct.snd_info_buffer.3*)* @snd_hdspm_proc_read_madi to void (%struct.snd_info_entry*, %struct.snd_info_buffer*)*), void (%struct.snd_info_entry*, %struct.snd_info_buffer*)** %3, align 8
  br label %12

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  store void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* bitcast (void (%struct.snd_info_entry.4*, %struct.snd_info_buffer.5*)* @snd_hdspm_proc_read_raydat to void (%struct.snd_info_entry*, %struct.snd_info_buffer*)*), void (%struct.snd_info_entry*, %struct.snd_info_buffer*)** %3, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11, %10, %9, %8, %7
  %13 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %14 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %17 = load void (%struct.snd_info_entry*, %struct.snd_info_buffer*)*, void (%struct.snd_info_entry*, %struct.snd_info_buffer*)** %3, align 8
  %18 = bitcast void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* %17 to void (%struct.snd_info_entry.6*, %struct.snd_info_buffer.7*)*
  %19 = call i32 @snd_card_ro_proc_new(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hdspm* %16, void (%struct.snd_info_entry.6*, %struct.snd_info_buffer.7*)* %18)
  %20 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %21 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %24 = call i32 @snd_card_ro_proc_new(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.hdspm* %23, void (%struct.snd_info_entry.6*, %struct.snd_info_buffer.7*)* bitcast (void (%struct.snd_info_entry.8*, %struct.snd_info_buffer.9*)* @snd_hdspm_proc_ports_in to void (%struct.snd_info_entry.6*, %struct.snd_info_buffer.7*)*))
  %25 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %26 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %29 = call i32 @snd_card_ro_proc_new(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.hdspm* %28, void (%struct.snd_info_entry.6*, %struct.snd_info_buffer.7*)* bitcast (void (%struct.snd_info_entry.10*, %struct.snd_info_buffer.11*)* @snd_hdspm_proc_ports_out to void (%struct.snd_info_entry.6*, %struct.snd_info_buffer.7*)*))
  ret void
}

declare dso_local void @snd_hdspm_proc_read_aes32(%struct.snd_info_entry.0*, %struct.snd_info_buffer.1*) #1

declare dso_local void @snd_hdspm_proc_read_madi(%struct.snd_info_entry.2*, %struct.snd_info_buffer.3*) #1

declare dso_local void @snd_hdspm_proc_read_raydat(%struct.snd_info_entry.4*, %struct.snd_info_buffer.5*) #1

declare dso_local i32 @snd_card_ro_proc_new(i32, i8*, %struct.hdspm*, void (%struct.snd_info_entry.6*, %struct.snd_info_buffer.7*)*) #1

declare dso_local void @snd_hdspm_proc_ports_in(%struct.snd_info_entry.8*, %struct.snd_info_buffer.9*) #1

declare dso_local void @snd_hdspm_proc_ports_out(%struct.snd_info_entry.10*, %struct.snd_info_buffer.11*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

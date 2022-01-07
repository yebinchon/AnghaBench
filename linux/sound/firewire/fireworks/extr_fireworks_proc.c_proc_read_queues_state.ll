; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_proc_read_queues_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_proc_read_queues_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_efw* }
%struct.snd_efw = type { i64, i64 }
%struct.snd_info_buffer = type { i32 }

@snd_efw_resp_buf_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_queues_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_queues_state(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_efw*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_efw*, %struct.snd_efw** %8, align 8
  store %struct.snd_efw* %9, %struct.snd_efw** %5, align 8
  %10 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %11 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %14 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i32, i32* @snd_efw_resp_buf_size, align 4
  %19 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %20 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %23 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = trunc i64 %25 to i32
  %27 = sub i32 %18, %26
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %30 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %33 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %17
  %38 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @snd_efw_resp_buf_size, align 4
  %41 = call i32 @snd_iprintf(%struct.snd_info_buffer* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_proc_read_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_proc_read_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_bebob* }
%struct.snd_bebob = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_bebob_clock_spec*, %struct.snd_bebob_rate_spec* }
%struct.snd_bebob_clock_spec = type { i32 }
%struct.snd_bebob_rate_spec = type { i64 (%struct.snd_bebob*, i32*)* }
%struct.snd_info_buffer = type { i32 }

@proc_read_clock.clk_labels = internal constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SYT-Match\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Sampling rate: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Clock Source: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Clock Source: %s (MSU-dest: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_clock(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_bebob*, align 8
  %6 = alloca %struct.snd_bebob_rate_spec*, align 8
  %7 = alloca %struct.snd_bebob_clock_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %11 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %10, i32 0, i32 0
  %12 = load %struct.snd_bebob*, %struct.snd_bebob** %11, align 8
  store %struct.snd_bebob* %12, %struct.snd_bebob** %5, align 8
  %13 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %14 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.snd_bebob_rate_spec*, %struct.snd_bebob_rate_spec** %16, align 8
  store %struct.snd_bebob_rate_spec* %17, %struct.snd_bebob_rate_spec** %6, align 8
  %18 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %19 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %21, align 8
  store %struct.snd_bebob_clock_spec* %22, %struct.snd_bebob_clock_spec** %7, align 8
  %23 = load %struct.snd_bebob_rate_spec*, %struct.snd_bebob_rate_spec** %6, align 8
  %24 = getelementptr inbounds %struct.snd_bebob_rate_spec, %struct.snd_bebob_rate_spec* %23, i32 0, i32 0
  %25 = load i64 (%struct.snd_bebob*, i32*)*, i64 (%struct.snd_bebob*, i32*)** %24, align 8
  %26 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %27 = call i64 %25(%struct.snd_bebob* %26, i32* %9)
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %35 = call i64 @snd_bebob_stream_get_clock_src(%struct.snd_bebob* %34, i32* %8)
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %7, align 8
  %39 = icmp ne %struct.snd_bebob_clock_spec* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* @proc_read_clock.clk_labels, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  br label %57

47:                                               ; preds = %37
  %48 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i8*], [3 x i8*]* @proc_read_clock.clk_labels, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %54 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %47, %40
  br label %58

58:                                               ; preds = %57, %33
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @snd_bebob_stream_get_clock_src(%struct.snd_bebob*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

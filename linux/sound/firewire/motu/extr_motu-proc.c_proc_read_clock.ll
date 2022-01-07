; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-proc.c_proc_read_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-proc.c_proc_read_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_motu* }
%struct.snd_motu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_motu_protocol* }
%struct.snd_motu_protocol = type { i64 (%struct.snd_motu.0*, i32*)*, i64 (%struct.snd_motu.1*, i32*)* }
%struct.snd_motu.0 = type opaque
%struct.snd_motu.1 = type opaque
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Rate:\09%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Source:\09%s\0A\00", align 1
@clock_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_clock(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_motu*, align 8
  %6 = alloca %struct.snd_motu_protocol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load %struct.snd_motu*, %struct.snd_motu** %10, align 8
  store %struct.snd_motu* %11, %struct.snd_motu** %5, align 8
  %12 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %13 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_motu_protocol*, %struct.snd_motu_protocol** %15, align 8
  store %struct.snd_motu_protocol* %16, %struct.snd_motu_protocol** %6, align 8
  %17 = load %struct.snd_motu_protocol*, %struct.snd_motu_protocol** %6, align 8
  %18 = getelementptr inbounds %struct.snd_motu_protocol, %struct.snd_motu_protocol* %17, i32 0, i32 0
  %19 = load i64 (%struct.snd_motu.0*, i32*)*, i64 (%struct.snd_motu.0*, i32*)** %18, align 8
  %20 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %21 = bitcast %struct.snd_motu* %20 to %struct.snd_motu.0*
  %22 = call i64 %19(%struct.snd_motu.0* %21, i32* %7)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.snd_motu_protocol*, %struct.snd_motu_protocol** %6, align 8
  %27 = getelementptr inbounds %struct.snd_motu_protocol, %struct.snd_motu_protocol* %26, i32 0, i32 1
  %28 = load i64 (%struct.snd_motu.1*, i32*)*, i64 (%struct.snd_motu.1*, i32*)** %27, align 8
  %29 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %30 = bitcast %struct.snd_motu* %29 to %struct.snd_motu.1*
  %31 = call i64 %28(%struct.snd_motu.1* %30, i32* %8)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %45

34:                                               ; preds = %25
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %39 = load i32*, i32** @clock_names, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_iprintf(%struct.snd_info_buffer* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %34, %33, %24
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_print_cable_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_print_cable_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i32*, %struct.loopback* }
%struct.loopback = type { i32 }
%struct.snd_info_buffer = type { i32 }

@MAX_PCM_SUBSTREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @print_cable_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cable_info(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.loopback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 1
  %10 = load %struct.loopback*, %struct.loopback** %9, align 8
  store %struct.loopback* %10, %struct.loopback** %5, align 8
  %11 = load %struct.loopback*, %struct.loopback** %5, align 8
  %12 = getelementptr inbounds %struct.loopback, %struct.loopback* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %15 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %18 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @strlen(i32* %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %16, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 48
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %39, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_PCM_SUBSTREAMS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %35 = load %struct.loopback*, %struct.loopback** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @print_substream_info(%struct.snd_info_buffer* %34, %struct.loopback* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %29

42:                                               ; preds = %29
  %43 = load %struct.loopback*, %struct.loopback** %5, align 8
  %44 = getelementptr inbounds %struct.loopback, %struct.loopback* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @print_substream_info(%struct.snd_info_buffer*, %struct.loopback*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

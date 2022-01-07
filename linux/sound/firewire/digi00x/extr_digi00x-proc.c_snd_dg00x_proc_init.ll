; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-proc.c_snd_dg00x_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-proc.c_snd_dg00x_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_info_entry* }
%struct.snd_info_entry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"firewire\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@proc_read_clock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_dg00x_proc_init(%struct.snd_dg00x* %0) #0 {
  %2 = alloca %struct.snd_dg00x*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %2, align 8
  %5 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %9 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %11, align 8
  %13 = call %struct.snd_info_entry* @snd_info_create_card_entry(%struct.TYPE_2__* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.snd_info_entry* %12)
  store %struct.snd_info_entry* %13, %struct.snd_info_entry** %3, align 8
  %14 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %15 = icmp eq %struct.snd_info_entry* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = or i32 %18, 365
  %20 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %21 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %23 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %26 = call %struct.snd_info_entry* @snd_info_create_card_entry(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.snd_info_entry* %25)
  store %struct.snd_info_entry* %26, %struct.snd_info_entry** %4, align 8
  %27 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  %28 = icmp ne %struct.snd_info_entry* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  %31 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %32 = load i32, i32* @proc_read_clock, align 4
  %33 = call i32 @snd_info_set_text_ops(%struct.snd_info_entry* %30, %struct.snd_dg00x* %31, i32 %32)
  br label %34

34:                                               ; preds = %16, %29, %17
  ret void
}

declare dso_local %struct.snd_info_entry* @snd_info_create_card_entry(%struct.TYPE_2__*, i8*, %struct.snd_info_entry*) #1

declare dso_local i32 @snd_info_set_text_ops(%struct.snd_info_entry*, %struct.snd_dg00x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

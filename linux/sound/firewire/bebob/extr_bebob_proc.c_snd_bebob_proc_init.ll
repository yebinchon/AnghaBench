; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_snd_bebob_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_snd_bebob_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_info_entry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"firewire\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@proc_read_clock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@proc_read_hw_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"formation\00", align 1
@proc_read_formation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"meter\00", align 1
@proc_read_meters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_bebob_proc_init(%struct.snd_bebob* %0) #0 {
  %2 = alloca %struct.snd_bebob*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %2, align 8
  %4 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %5 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %8 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_info_entry* @snd_info_create_card_entry(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.snd_info_entry* %12, %struct.snd_info_entry** %3, align 8
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %14 = icmp eq %struct.snd_info_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = or i32 %17, 365
  %19 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %20 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %22 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %23 = load i32, i32* @proc_read_clock, align 4
  %24 = call i32 @add_node(%struct.snd_bebob* %21, %struct.snd_info_entry* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %26 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %27 = load i32, i32* @proc_read_hw_info, align 4
  %28 = call i32 @add_node(%struct.snd_bebob* %25, %struct.snd_info_entry* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %30 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %31 = load i32, i32* @proc_read_formation, align 4
  %32 = call i32 @add_node(%struct.snd_bebob* %29, %struct.snd_info_entry* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %34 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %16
  %40 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %41 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %42 = load i32, i32* @proc_read_meters, align 4
  %43 = call i32 @add_node(%struct.snd_bebob* %40, %struct.snd_info_entry* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %15, %39, %16
  ret void
}

declare dso_local %struct.snd_info_entry* @snd_info_create_card_entry(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @add_node(%struct.snd_bebob*, %struct.snd_info_entry*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_create_module_entry.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_create_module_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i32 }
%struct.module = type { i32 }

@snd_proc_root = common dso_local global %struct.snd_info_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_info_entry* @snd_info_create_module_entry(%struct.module* %0, i8* %1, %struct.snd_info_entry* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_info_entry*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.snd_info_entry* %2, %struct.snd_info_entry** %6, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %8 = icmp ne %struct.snd_info_entry* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** @snd_proc_root, align 8
  store %struct.snd_info_entry* %10, %struct.snd_info_entry** %6, align 8
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %14 = load %struct.module*, %struct.module** %4, align 8
  %15 = call %struct.snd_info_entry* @snd_info_create_entry(i8* %12, %struct.snd_info_entry* %13, %struct.module* %14)
  ret %struct.snd_info_entry* %15
}

declare dso_local %struct.snd_info_entry* @snd_info_create_entry(i8*, %struct.snd_info_entry*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_text_entry_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_text_entry_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.snd_info_entry = type { i32, i64 }
%struct.snd_info_private_data = type { %struct.snd_info_private_data* }

@info_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_info_seq_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_info_text_entry_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_info_text_entry_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_info_entry*, align 8
  %7 = alloca %struct.snd_info_private_data*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.snd_info_entry* @PDE_DATA(%struct.inode* %9)
  store %struct.snd_info_entry* %10, %struct.snd_info_entry** %6, align 8
  %11 = call i32 @mutex_lock(i32* @info_mutex)
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %13 = call i32 @alloc_info_private(%struct.snd_info_entry* %12, %struct.snd_info_private_data** %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %64

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.snd_info_private_data* @kzalloc(i32 8, i32 %18)
  %20 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %21 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %20, i32 0, i32 0
  store %struct.snd_info_private_data* %19, %struct.snd_info_private_data** %21, align 8
  %22 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %23 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %22, i32 0, i32 0
  %24 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %23, align 8
  %25 = icmp ne %struct.snd_info_private_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %53

29:                                               ; preds = %17
  %30 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %31 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = load i32, i32* @snd_info_seq_show, align 4
  %37 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %38 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %39 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @single_open_size(%struct.file* %35, i32 %36, %struct.snd_info_private_data* %37, i64 %40)
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %29
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = load i32, i32* @snd_info_seq_show, align 4
  %45 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %46 = call i32 @single_open(%struct.file* %43, i32 %44, %struct.snd_info_private_data* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %53

51:                                               ; preds = %47
  %52 = call i32 @mutex_unlock(i32* @info_mutex)
  store i32 0, i32* %3, align 4
  br label %67

53:                                               ; preds = %50, %26
  %54 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %55 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %54, i32 0, i32 0
  %56 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %55, align 8
  %57 = call i32 @kfree(%struct.snd_info_private_data* %56)
  %58 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %59 = call i32 @kfree(%struct.snd_info_private_data* %58)
  %60 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %61 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @module_put(i32 %62)
  br label %64

64:                                               ; preds = %53, %16
  %65 = call i32 @mutex_unlock(i32* @info_mutex)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %51
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.snd_info_entry* @PDE_DATA(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @alloc_info_private(%struct.snd_info_entry*, %struct.snd_info_private_data**) #1

declare dso_local %struct.snd_info_private_data* @kzalloc(i32, i32) #1

declare dso_local i32 @single_open_size(%struct.file*, i32, %struct.snd_info_private_data*, i64) #1

declare dso_local i32 @single_open(%struct.file*, i32, %struct.snd_info_private_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.snd_info_private_data*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_text_entry_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_text_entry_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.snd_info_private_data* }
%struct.snd_info_private_data = type { %struct.snd_info_private_data*, i32, %struct.snd_info_private_data*, %struct.snd_info_entry* }
%struct.snd_info_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.snd_info_entry*, %struct.snd_info_private_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_info_text_entry_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_info_text_entry_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.snd_info_private_data*, align 8
  %7 = alloca %struct.snd_info_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  store %struct.seq_file* %10, %struct.seq_file** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %12, align 8
  store %struct.snd_info_private_data* %13, %struct.snd_info_private_data** %6, align 8
  %14 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %15 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %14, i32 0, i32 3
  %16 = load %struct.snd_info_entry*, %struct.snd_info_entry** %15, align 8
  store %struct.snd_info_entry* %16, %struct.snd_info_entry** %7, align 8
  %17 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %18 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %17, i32 0, i32 0
  %19 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %18, align 8
  %20 = icmp ne %struct.snd_info_private_data* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %23 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_info_entry*, %struct.snd_info_private_data*)*, i32 (%struct.snd_info_entry*, %struct.snd_info_private_data*)** %25, align 8
  %27 = icmp ne i32 (%struct.snd_info_entry*, %struct.snd_info_private_data*)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %30 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.snd_info_entry*, %struct.snd_info_private_data*)*, i32 (%struct.snd_info_entry*, %struct.snd_info_private_data*)** %32, align 8
  %34 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %35 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %36 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %35, i32 0, i32 0
  %37 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %36, align 8
  %38 = call i32 %33(%struct.snd_info_entry* %34, %struct.snd_info_private_data* %37)
  br label %39

39:                                               ; preds = %28, %21, %2
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = call i32 @single_release(%struct.inode* %40, %struct.file* %41)
  %43 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %44 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %43, i32 0, i32 2
  %45 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %44, align 8
  %46 = call i32 @kfree(%struct.snd_info_private_data* %45)
  %47 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %48 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %47, i32 0, i32 0
  %49 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %48, align 8
  %50 = icmp ne %struct.snd_info_private_data* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %53 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %52, i32 0, i32 0
  %54 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %53, align 8
  %55 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @kvfree(i32 %56)
  %58 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %59 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %58, i32 0, i32 0
  %60 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %59, align 8
  %61 = call i32 @kfree(%struct.snd_info_private_data* %60)
  br label %62

62:                                               ; preds = %51, %39
  %63 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %64 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @module_put(i32 %65)
  %67 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %68 = call i32 @kfree(%struct.snd_info_private_data* %67)
  ret i32 0
}

declare dso_local i32 @single_release(%struct.inode*, %struct.file*) #1

declare dso_local i32 @kfree(%struct.snd_info_private_data*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

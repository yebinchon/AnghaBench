; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_entry_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_entry_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.snd_info_private_data* }
%struct.snd_info_private_data = type { i32, %struct.snd_info_entry* }
%struct.snd_info_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_info_entry*, i32, i32)* }

@O_ACCMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_info_entry_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_info_entry_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snd_info_private_data*, align 8
  %6 = alloca %struct.snd_info_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %8, align 8
  store %struct.snd_info_private_data* %9, %struct.snd_info_private_data** %5, align 8
  %10 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %5, align 8
  %11 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %10, i32 0, i32 1
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %11, align 8
  store %struct.snd_info_entry* %12, %struct.snd_info_entry** %6, align 8
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %14 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.snd_info_entry*, i32, i32)*, i32 (%struct.snd_info_entry*, i32, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.snd_info_entry*, i32, i32)* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %22 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_info_entry*, i32, i32)*, i32 (%struct.snd_info_entry*, i32, i32)** %25, align 8
  %27 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @O_ACCMODE, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %5, align 8
  %34 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %26(%struct.snd_info_entry* %27, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %20, %2
  %38 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %39 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @module_put(i32 %40)
  %42 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %5, align 8
  %43 = call i32 @kfree(%struct.snd_info_private_data* %42)
  ret i32 0
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.snd_info_private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

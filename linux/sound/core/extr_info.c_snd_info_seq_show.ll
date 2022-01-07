; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.snd_info_private_data* }
%struct.snd_info_private_data = type { %struct.TYPE_6__*, %struct.snd_info_entry* }
%struct.TYPE_6__ = type { i8* }
%struct.snd_info_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.snd_info_entry*, %struct.TYPE_6__*)* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @snd_info_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_info_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_info_private_data*, align 8
  %7 = alloca %struct.snd_info_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %9, align 8
  store %struct.snd_info_private_data* %10, %struct.snd_info_private_data** %6, align 8
  %11 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %12 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %11, i32 0, i32 1
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %12, align 8
  store %struct.snd_info_entry* %13, %struct.snd_info_entry** %7, align 8
  %14 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %15 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.snd_info_entry*, %struct.TYPE_6__*)*, i32 (%struct.snd_info_entry*, %struct.TYPE_6__*)** %17, align 8
  %19 = icmp ne i32 (%struct.snd_info_entry*, %struct.TYPE_6__*)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = bitcast %struct.seq_file* %24 to i8*
  %26 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %27 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 8
  %30 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %31 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_info_entry*, %struct.TYPE_6__*)*, i32 (%struct.snd_info_entry*, %struct.TYPE_6__*)** %33, align 8
  %35 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %36 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %37 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 %34(%struct.snd_info_entry* %35, %struct.TYPE_6__* %38)
  br label %40

40:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

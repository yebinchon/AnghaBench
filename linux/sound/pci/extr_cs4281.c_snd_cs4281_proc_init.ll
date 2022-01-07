; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4281 = type { i32 }
%struct.snd_info_entry = type { i32, %struct.TYPE_2__, %struct.cs4281*, i8* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"cs4281\00", align 1
@snd_cs4281_proc_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cs4281_BA0\00", align 1
@SNDRV_INFO_CONTENT_DATA = common dso_local global i8* null, align 8
@snd_cs4281_proc_ops_BA0 = common dso_local global i32 0, align 4
@CS4281_BA0_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cs4281_BA1\00", align 1
@snd_cs4281_proc_ops_BA1 = common dso_local global i32 0, align 4
@CS4281_BA1_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4281*)* @snd_cs4281_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4281_proc_init(%struct.cs4281* %0) #0 {
  %2 = alloca %struct.cs4281*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  store %struct.cs4281* %0, %struct.cs4281** %2, align 8
  %4 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %5 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %8 = load i32, i32* @snd_cs4281_proc_read, align 4
  %9 = call i32 @snd_card_ro_proc_new(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.cs4281* %7, i32 %8)
  %10 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %11 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snd_card_proc_new(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.snd_info_entry** %3)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %17 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %18 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %20 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %21 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %20, i32 0, i32 2
  store %struct.cs4281* %19, %struct.cs4281** %21, align 8
  %22 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %23 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* @snd_cs4281_proc_ops_BA0, i32** %24, align 8
  %25 = load i32, i32* @CS4281_BA0_SIZE, align 4
  %26 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %27 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %15, %1
  %29 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %30 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_card_proc_new(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.snd_info_entry** %3)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %36 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %37 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %39 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %40 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %39, i32 0, i32 2
  store %struct.cs4281* %38, %struct.cs4281** %40, align 8
  %41 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %42 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* @snd_cs4281_proc_ops_BA1, i32** %43, align 8
  %44 = load i32, i32* @CS4281_BA1_SIZE, align 4
  %45 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %46 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @snd_card_ro_proc_new(i32, i8*, %struct.cs4281*, i32) #1

declare dso_local i32 @snd_card_proc_new(i32, i8*, %struct.snd_info_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

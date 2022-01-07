; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixart = type { i32, i32 }
%struct.snd_info_entry = type { i32, %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"board_info\00", align 1
@snd_mixart_proc_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mixart_BA0\00", align 1
@SNDRV_INFO_CONTENT_DATA = common dso_local global i8* null, align 8
@snd_mixart_proc_ops_BA0 = common dso_local global i32 0, align 4
@MIXART_BA0_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"mixart_BA1\00", align 1
@snd_mixart_proc_ops_BA1 = common dso_local global i32 0, align 4
@MIXART_BA1_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixart*)* @snd_mixart_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixart_proc_init(%struct.snd_mixart* %0) #0 {
  %2 = alloca %struct.snd_mixart*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_mixart* %0, %struct.snd_mixart** %2, align 8
  %4 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %5 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %8 = load i32, i32* @snd_mixart_proc_read, align 4
  %9 = call i32 @snd_card_ro_proc_new(i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.snd_mixart* %7, i32 %8)
  %10 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %11 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snd_card_proc_new(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.snd_info_entry** %3)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %17 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %18 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %20 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %23 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %25 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* @snd_mixart_proc_ops_BA0, i32** %26, align 8
  %27 = load i32, i32* @MIXART_BA0_SIZE, align 4
  %28 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %29 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %15, %1
  %31 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %32 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_card_proc_new(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.snd_info_entry** %3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %38 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %39 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %41 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %44 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %46 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* @snd_mixart_proc_ops_BA1, i32** %47, align 8
  %48 = load i32, i32* @MIXART_BA1_SIZE, align 4
  %49 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %50 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %36, %30
  ret void
}

declare dso_local i32 @snd_card_ro_proc_new(i32, i8*, %struct.snd_mixart*, i32) #1

declare dso_local i32 @snd_card_proc_new(i32, i8*, %struct.snd_info_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

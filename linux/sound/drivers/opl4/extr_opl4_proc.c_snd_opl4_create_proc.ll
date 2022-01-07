; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_proc.c_snd_opl4_create_proc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_proc.c_snd_opl4_create_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i64, %struct.snd_info_entry*, %struct.TYPE_4__* }
%struct.snd_info_entry = type { i32, i32, %struct.snd_opl4*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"opl4-mem\00", align 1
@OPL3_HW_OPL4_ML = common dso_local global i64 0, align 8
@SNDRV_INFO_CONTENT_DATA = common dso_local global i32 0, align 4
@snd_opl4_mem_proc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_opl4_create_proc(%struct.snd_opl4* %0) #0 {
  %2 = alloca %struct.snd_opl4*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_opl4* %0, %struct.snd_opl4** %2, align 8
  %4 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %5 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %8 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_info_entry* @snd_info_create_card_entry(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.snd_info_entry* %12, %struct.snd_info_entry** %3, align 8
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %14 = icmp ne %struct.snd_info_entry* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %1
  %16 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %17 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OPL3_HW_OPL4_ML, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %23 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, 128
  store i32 %25, i32* %23, align 8
  %26 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %27 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %26, i32 0, i32 1
  store i32 4194304, i32* %27, align 4
  br label %31

28:                                               ; preds = %15
  %29 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %30 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %29, i32 0, i32 1
  store i32 1048576, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* @SNDRV_INFO_CONTENT_DATA, align 4
  %33 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %34 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %36 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32* @snd_opl4_mem_proc_ops, i32** %37, align 8
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %40 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %42 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %43 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %42, i32 0, i32 2
  store %struct.snd_opl4* %41, %struct.snd_opl4** %43, align 8
  br label %44

44:                                               ; preds = %31, %1
  %45 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %46 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %47 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %46, i32 0, i32 1
  store %struct.snd_info_entry* %45, %struct.snd_info_entry** %47, align 8
  ret i32 0
}

declare dso_local %struct.snd_info_entry* @snd_info_create_card_entry(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_proc.c_snd_opl4_mem_proc_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_proc.c_snd_opl4_mem_proc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_opl4* }
%struct.snd_opl4 = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_info_entry*, i16, i8**)* @snd_opl4_mem_proc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl4_mem_proc_open(%struct.snd_info_entry* %0, i16 zeroext %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_info_entry*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8**, align 8
  %8 = alloca %struct.snd_opl4*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %5, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load %struct.snd_opl4*, %struct.snd_opl4** %10, align 8
  store %struct.snd_opl4* %11, %struct.snd_opl4** %8, align 8
  %12 = load %struct.snd_opl4*, %struct.snd_opl4** %8, align 8
  %13 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.snd_opl4*, %struct.snd_opl4** %8, align 8
  %16 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.snd_opl4*, %struct.snd_opl4** %8, align 8
  %21 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.snd_opl4*, %struct.snd_opl4** %8, align 8
  %27 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.snd_opl4*, %struct.snd_opl4** %8, align 8
  %31 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

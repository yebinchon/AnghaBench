; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.usX2Ydev* }
%struct.usX2Ydev = type { i32, i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, %struct.usX2Ydev*, i32*, i64, i64 }

@USX2Y_STAT_CHIP_INIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%lu > %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@snd_usX2Y_hwdep_pcm_vm_ops = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*, %struct.vm_area_struct*)* @snd_usX2Y_hwdep_pcm_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_hwdep_pcm_mmap(%struct.snd_hwdep* %0, %struct.file* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_hwdep*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.usX2Ydev*, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  store i64 %16, i64* %8, align 8
  %17 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %18 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %17, i32 0, i32 0
  %19 = load %struct.usX2Ydev*, %struct.usX2Ydev** %18, align 8
  store %struct.usX2Ydev* %19, %struct.usX2Ydev** %9, align 8
  %20 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %21 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USX2Y_STAT_CHIP_INIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %61

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @PAGE_ALIGN(i32 4)
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @snd_printd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %34, i64 4)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %29
  %39 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %40 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %61

46:                                               ; preds = %38
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 2
  store i32* @snd_usX2Y_hwdep_pcm_vm_ops, i32** %48, align 8
  %49 = load i32, i32* @VM_DONTEXPAND, align 4
  %50 = load i32, i32* @VM_DONTDUMP, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %57 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %56, i32 0, i32 0
  %58 = load %struct.usX2Ydev*, %struct.usX2Ydev** %57, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 1
  store %struct.usX2Ydev* %58, %struct.usX2Ydev** %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %46, %43, %33, %26
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @snd_printd(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

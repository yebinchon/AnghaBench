; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usX2Yhwdep.c_snd_us428ctls_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usX2Yhwdep.c_snd_us428ctls_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.usX2Ydev* }
%struct.usX2Ydev = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, %struct.usX2Ydev*, i32*, i64, i64 }

@USX2Y_STAT_CHIP_INIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%lu > %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@us428ctls_vm_ops = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*, %struct.vm_area_struct*)* @snd_us428ctls_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_us428ctls_mmap(%struct.snd_hwdep* %0, %struct.file* %1, %struct.vm_area_struct* %2) #0 {
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
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @USX2Y_STAT_CHIP_INIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %82

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
  br label %82

38:                                               ; preds = %29
  %39 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %40 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %45 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %44, i32 0, i32 2
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.TYPE_3__* @alloc_pages_exact(i32 4, i32 %47)
  %49 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %50 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %49, i32 0, i32 1
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %50, align 8
  %51 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %52 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %82

58:                                               ; preds = %43
  %59 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %60 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i32 @memset(%struct.TYPE_3__* %61, i32 -1, i32 4)
  %63 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %64 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 -2, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %38
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 2
  store i32* @us428ctls_vm_ops, i32** %69, align 8
  %70 = load i32, i32* @VM_DONTEXPAND, align 4
  %71 = load i32, i32* @VM_DONTDUMP, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %78 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %77, i32 0, i32 0
  %79 = load %struct.usX2Ydev*, %struct.usX2Ydev** %78, align 8
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 1
  store %struct.usX2Ydev* %79, %struct.usX2Ydev** %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %67, %55, %33, %26
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @snd_printd(i8*, i64, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.TYPE_3__* @alloc_pages_exact(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

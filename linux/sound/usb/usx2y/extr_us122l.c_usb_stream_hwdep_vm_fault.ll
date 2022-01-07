; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_vm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.TYPE_3__* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { %struct.us122l* }
%struct.us122l = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, %struct.usb_stream* }
%struct.usb_stream = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @usb_stream_hwdep_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stream_hwdep_vm_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.us122l*, align 8
  %8 = alloca %struct.usb_stream*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.us122l*, %struct.us122l** %12, align 8
  store %struct.us122l* %13, %struct.us122l** %7, align 8
  %14 = load %struct.us122l*, %struct.us122l** %7, align 8
  %15 = getelementptr inbounds %struct.us122l, %struct.us122l* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.us122l*, %struct.us122l** %7, align 8
  %18 = getelementptr inbounds %struct.us122l, %struct.us122l* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.usb_stream*, %struct.usb_stream** %19, align 8
  store %struct.usb_stream* %20, %struct.usb_stream** %8, align 8
  %21 = load %struct.usb_stream*, %struct.usb_stream** %8, align 8
  %22 = icmp ne %struct.usb_stream* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %73

24:                                               ; preds = %1
  %25 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = shl i64 %27, %28
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.usb_stream*, %struct.usb_stream** %8, align 8
  %32 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @PAGE_ALIGN(i32 %33)
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.usb_stream*, %struct.usb_stream** %8, align 8
  %38 = bitcast %struct.usb_stream* %37 to i8*
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  br label %62

41:                                               ; preds = %24
  %42 = load %struct.usb_stream*, %struct.usb_stream** %8, align 8
  %43 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @PAGE_ALIGN(i32 %44)
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.usb_stream*, %struct.usb_stream** %8, align 8
  %50 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @PAGE_ALIGN(i32 %51)
  %53 = icmp uge i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %73

55:                                               ; preds = %41
  %56 = load %struct.us122l*, %struct.us122l** %7, align 8
  %57 = getelementptr inbounds %struct.us122l, %struct.us122l* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr i8, i8* %59, i64 %60
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %55, %36
  %63 = load i8*, i8** %6, align 8
  %64 = call %struct.page* @virt_to_page(i8* %63)
  store %struct.page* %64, %struct.page** %5, align 8
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i32 @get_page(%struct.page* %65)
  %67 = load %struct.us122l*, %struct.us122l** %7, align 8
  %68 = getelementptr inbounds %struct.us122l, %struct.us122l* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %72 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %71, i32 0, i32 1
  store %struct.page* %70, %struct.page** %72, align 8
  store i32 0, i32* %2, align 4
  br label %78

73:                                               ; preds = %54, %23
  %74 = load %struct.us122l*, %struct.us122l** %7, align 8
  %75 = getelementptr inbounds %struct.us122l, %struct.us122l* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %62
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

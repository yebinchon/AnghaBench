; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_buf_fault.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_buf_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.page*, %struct.TYPE_2__* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { %struct.rchan_buf* }
%struct.rchan_buf = type { i64 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @relay_buf_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relay_buf_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.rchan_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.rchan_buf*, %struct.rchan_buf** %10, align 8
  store %struct.rchan_buf* %11, %struct.rchan_buf** %5, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.rchan_buf*, %struct.rchan_buf** %5, align 8
  %16 = icmp ne %struct.rchan_buf* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.rchan_buf*, %struct.rchan_buf** %5, align 8
  %21 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = call %struct.page* @vmalloc_to_page(i64 %27)
  store %struct.page* %28, %struct.page** %4, align 8
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %19
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @get_page(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %38 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %37, i32 0, i32 1
  store %struct.page* %36, %struct.page** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %31, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.page* @vmalloc_to_page(i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

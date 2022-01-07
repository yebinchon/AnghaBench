; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.TYPE_8__*, %struct.page* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { {}* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }

@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_MKWRITE = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @do_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 2
  %9 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %9, %struct.page** %5, align 8
  %10 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %11 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %14 = load i32, i32* @FAULT_FLAG_MKWRITE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_SWAPFILE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %37, i32* %2, align 4
  br label %94

38:                                               ; preds = %24, %1
  %39 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.vm_fault*)**
  %46 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %45, align 8
  %47 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %48 = call i32 %46(%struct.vm_fault* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %51 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @VM_FAULT_ERROR, align 4
  %54 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %94

61:                                               ; preds = %38
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %61
  %71 = load %struct.page*, %struct.page** %5, align 8
  %72 = call i32 @lock_page(%struct.page* %71)
  %73 = load %struct.page*, %struct.page** %5, align 8
  %74 = getelementptr inbounds %struct.page, %struct.page* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load %struct.page*, %struct.page** %5, align 8
  %79 = call i32 @unlock_page(%struct.page* %78)
  store i32 0, i32* %2, align 4
  br label %94

80:                                               ; preds = %70
  %81 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %92

84:                                               ; preds = %61
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = call i32 @PageLocked(%struct.page* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.page*, %struct.page** %5, align 8
  %91 = call i32 @VM_BUG_ON_PAGE(i32 %89, %struct.page* %90)
  br label %92

92:                                               ; preds = %84, %80
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %77, %59, %36
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @IS_SWAPFILE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

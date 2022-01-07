; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_dmabuf_vm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_dmabuf_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.mbochs_dmabuf* }
%struct.mbochs_dmabuf = type { i64, i32* }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @mbochs_dmabuf_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbochs_dmabuf_vm_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mbochs_dmabuf*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 2
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %10, align 8
  store %struct.mbochs_dmabuf* %11, %struct.mbochs_dmabuf** %5, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %5, align 8
  %16 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %5, align 8
  %26 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %29 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %34 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %36 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @get_page(i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %24, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

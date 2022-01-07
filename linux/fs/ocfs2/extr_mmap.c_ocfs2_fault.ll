; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_mmap.c_ocfs2_fault.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_mmap.c_ocfs2_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @ocfs2_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 2
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %3, align 8
  %9 = call i32 @ocfs2_block_signals(i32* %4)
  %10 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %11 = call i32 @filemap_fault(%struct.vm_fault* %10)
  store i32 %11, i32* %5, align 4
  %12 = call i32 @ocfs2_unblock_signals(i32* %4)
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_6__* @OCFS2_I(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %24 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %28 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @trace_ocfs2_fault(i32 %22, %struct.vm_area_struct* %23, i32 %26, i32 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @ocfs2_block_signals(i32*) #1

declare dso_local i32 @filemap_fault(%struct.vm_fault*) #1

declare dso_local i32 @ocfs2_unblock_signals(i32*) #1

declare dso_local i32 @trace_ocfs2_fault(i32, %struct.vm_area_struct*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

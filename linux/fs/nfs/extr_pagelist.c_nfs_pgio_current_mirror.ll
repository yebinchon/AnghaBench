; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pgio_current_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pgio_current_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_mirror = type { i32 }
%struct.nfs_pageio_descriptor = type { i64, %struct.nfs_pgio_mirror* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %0) #0 {
  %2 = alloca %struct.nfs_pageio_descriptor*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %2, align 8
  %3 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %4 = call i64 @nfs_pgio_has_mirroring(%struct.nfs_pageio_descriptor* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %7, i32 0, i32 1
  %9 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %10 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %9, i64 %12
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %15, i32 0, i32 1
  %17 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %16, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %17, i64 0
  br label %19

19:                                               ; preds = %14, %6
  %20 = phi %struct.nfs_pgio_mirror* [ %13, %6 ], [ %18, %14 ]
  ret %struct.nfs_pgio_mirror* %20
}

declare dso_local i64 @nfs_pgio_has_mirroring(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

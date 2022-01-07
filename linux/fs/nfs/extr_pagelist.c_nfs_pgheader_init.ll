; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pgheader_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pgheader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.nfs_pgio_header*)* }
%struct.nfs_pgio_header = type { void (%struct.nfs_pgio_header*)*, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfs_pgio_mirror = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_pgheader_init(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1, void (%struct.nfs_pgio_header*)* %2) #0 {
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca void (%struct.nfs_pgio_header*)*, align 8
  %7 = alloca %struct.nfs_pgio_mirror*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  store void (%struct.nfs_pgio_header*)* %2, void (%struct.nfs_pgio_header*)** %6, align 8
  %8 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %9 = call %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %8)
  store %struct.nfs_pgio_mirror* %9, %struct.nfs_pgio_mirror** %7, align 8
  %10 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %7, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nfs_list_entry(i32 %13)
  %15 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_6__* @nfs_req_openctx(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @req_offset(i32 %32)
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %47 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %50 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load void (%struct.nfs_pgio_header*)*, void (%struct.nfs_pgio_header*)** %6, align 8
  %52 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %53 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %52, i32 0, i32 0
  store void (%struct.nfs_pgio_header*)* %51, void (%struct.nfs_pgio_header*)** %53, align 8
  %54 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %55 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %57, i32 0, i32 2
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %60 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %62, align 8
  %64 = icmp ne i32 (%struct.nfs_pgio_header*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %3
  %66 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %67 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %69, align 8
  %71 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %72 = call i32 %70(%struct.nfs_pgio_header* %71)
  br label %73

73:                                               ; preds = %65, %3
  %74 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %75 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %78 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  ret void
}

declare dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_list_entry(i32) #1

declare dso_local %struct.TYPE_6__* @nfs_req_openctx(i32) #1

declare dso_local i32 @req_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

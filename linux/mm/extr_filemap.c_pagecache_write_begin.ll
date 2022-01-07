; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_pagecache_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_pagecache_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.address_space_operations* }
%struct.address_space_operations = type { i32 (%struct.file*, %struct.address_space.0*, i32, i32, i32, %struct.page**, i8**)* }
%struct.address_space.0 = type opaque
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pagecache_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.address_space_operations*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page** %5, %struct.page*** %13, align 8
  store i8** %6, i8*** %14, align 8
  %16 = load %struct.address_space*, %struct.address_space** %9, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.address_space_operations*, %struct.address_space_operations** %17, align 8
  store %struct.address_space_operations* %18, %struct.address_space_operations** %15, align 8
  %19 = load %struct.address_space_operations*, %struct.address_space_operations** %15, align 8
  %20 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %19, i32 0, i32 0
  %21 = load i32 (%struct.file*, %struct.address_space.0*, i32, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space.0*, i32, i32, i32, %struct.page**, i8**)** %20, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = load %struct.address_space*, %struct.address_space** %9, align 8
  %24 = bitcast %struct.address_space* %23 to %struct.address_space.0*
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.page**, %struct.page*** %13, align 8
  %29 = load i8**, i8*** %14, align 8
  %30 = call i32 %21(%struct.file* %22, %struct.address_space.0* %24, i32 %25, i32 %26, i32 %27, %struct.page** %28, i8** %29)
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

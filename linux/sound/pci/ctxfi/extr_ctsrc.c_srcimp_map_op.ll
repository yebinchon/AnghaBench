; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_map_op.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_map_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imapper = type { i32, i32, i32, i32 }
%struct.rsc_mgr = type { i32, %struct.hw* }
%struct.hw = type { i32 (%struct.hw*, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.srcimp_mgr = type { %struct.rsc_mgr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.imapper*)* @srcimp_map_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_map_op(i8* %0, %struct.imapper* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.imapper*, align 8
  %5 = alloca %struct.rsc_mgr*, align 8
  %6 = alloca %struct.hw*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.imapper* %1, %struct.imapper** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.srcimp_mgr*
  %9 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %8, i32 0, i32 0
  store %struct.rsc_mgr* %9, %struct.rsc_mgr** %5, align 8
  %10 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %11 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %10, i32 0, i32 1
  %12 = load %struct.hw*, %struct.hw** %11, align 8
  store %struct.hw* %12, %struct.hw** %6, align 8
  %13 = load %struct.hw*, %struct.hw** %6, align 8
  %14 = getelementptr inbounds %struct.hw, %struct.hw* %13, i32 0, i32 4
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %17 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.imapper*, %struct.imapper** %4, align 8
  %20 = getelementptr inbounds %struct.imapper, %struct.imapper* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %15(i32 %18, i32 %21)
  %23 = load %struct.hw*, %struct.hw** %6, align 8
  %24 = getelementptr inbounds %struct.hw, %struct.hw* %23, i32 0, i32 3
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %27 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.imapper*, %struct.imapper** %4, align 8
  %30 = getelementptr inbounds %struct.imapper, %struct.imapper* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(i32 %28, i32 %31)
  %33 = load %struct.hw*, %struct.hw** %6, align 8
  %34 = getelementptr inbounds %struct.hw, %struct.hw* %33, i32 0, i32 2
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %37 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.imapper*, %struct.imapper** %4, align 8
  %40 = getelementptr inbounds %struct.imapper, %struct.imapper* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %35(i32 %38, i32 %41)
  %43 = load %struct.hw*, %struct.hw** %6, align 8
  %44 = getelementptr inbounds %struct.hw, %struct.hw* %43, i32 0, i32 1
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %47 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.imapper*, %struct.imapper** %4, align 8
  %50 = getelementptr inbounds %struct.imapper, %struct.imapper* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %45(i32 %48, i32 %51)
  %53 = load %struct.hw*, %struct.hw** %6, align 8
  %54 = getelementptr inbounds %struct.hw, %struct.hw* %53, i32 0, i32 0
  %55 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %54, align 8
  %56 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %57 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %56, i32 0, i32 1
  %58 = load %struct.hw*, %struct.hw** %57, align 8
  %59 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %60 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %55(%struct.hw* %58, i32 %61)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

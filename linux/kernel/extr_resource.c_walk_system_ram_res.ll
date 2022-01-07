; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_walk_system_ram_res.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_walk_system_ram_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type opaque
%struct.resource.0 = type opaque

@IORESOURCE_SYSTEM_RAM = common dso_local global i64 0, align 8
@IORESOURCE_BUSY = common dso_local global i64 0, align 8
@IORES_DESC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_system_ram_res(i32 %0, i32 %1, i8* %2, i32 (%struct.resource*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32 (%struct.resource*, i8*)*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 (%struct.resource*, i8*)* %3, i32 (%struct.resource*, i8*)** %8, align 8
  %10 = load i64, i64* @IORESOURCE_SYSTEM_RAM, align 8
  %11 = load i64, i64* @IORESOURCE_BUSY, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @IORES_DESC_NONE, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32 (%struct.resource*, i8*)*, i32 (%struct.resource*, i8*)** %8, align 8
  %19 = bitcast i32 (%struct.resource*, i8*)* %18 to i32 (%struct.resource.0*, i8*)*
  %20 = call i32 @__walk_iomem_res_desc(i32 %13, i32 %14, i64 %15, i32 %16, i32 1, i8* %17, i32 (%struct.resource.0*, i8*)* %19)
  ret i32 %20
}

declare dso_local i32 @__walk_iomem_res_desc(i32, i32, i64, i32, i32, i8*, i32 (%struct.resource.0*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

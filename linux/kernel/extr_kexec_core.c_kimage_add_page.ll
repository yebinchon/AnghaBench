; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_add_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@IND_SOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i64)* @kimage_add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kimage_add_page(%struct.kimage* %0, i64 %1) #0 {
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @PAGE_MASK, align 8
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, %6
  store i64 %8, i64* %4, align 8
  %9 = load %struct.kimage*, %struct.kimage** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @IND_SOURCE, align 8
  %12 = or i64 %10, %11
  %13 = call i32 @kimage_add_entry(%struct.kimage* %9, i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i32 @kimage_add_entry(%struct.kimage*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

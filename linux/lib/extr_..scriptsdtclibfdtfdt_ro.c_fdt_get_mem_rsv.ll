; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_get_mem_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_get_mem_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i32, i32 }

@FDT_ERR_BADOFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_get_mem_rsv(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fdt_reserve_entry*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @FDT_RO_PROBE(i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.fdt_reserve_entry* @fdt_mem_rsv(i8* %13, i32 %14)
  store %struct.fdt_reserve_entry* %15, %struct.fdt_reserve_entry** %10, align 8
  %16 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %10, align 8
  %17 = icmp ne %struct.fdt_reserve_entry* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @FDT_ERR_BADOFFSET, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %10, align 8
  %23 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %22, i32 0, i32 1
  %24 = call i32 @fdt64_ld(i32* %23)
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %10, align 8
  %27 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %26, i32 0, i32 0
  %28 = call i32 @fdt64_ld(i32* %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @FDT_RO_PROBE(i8*) #1

declare dso_local %struct.fdt_reserve_entry* @fdt_mem_rsv(i8*, i32) #1

declare dso_local i32 @fdt64_ld(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

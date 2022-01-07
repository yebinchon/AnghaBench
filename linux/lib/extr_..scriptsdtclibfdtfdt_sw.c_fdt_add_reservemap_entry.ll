; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_sw.c_fdt_add_reservemap_entry.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_sw.c_fdt_add_reservemap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i8*, i8* }

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_add_reservemap_entry(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fdt_reserve_entry*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @FDT_SW_PROBE_MEMRSV(i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @fdt_off_dt_struct(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 16
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @fdt_totalsize(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %44

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = bitcast i8* %28 to %struct.fdt_reserve_entry*
  store %struct.fdt_reserve_entry* %29, %struct.fdt_reserve_entry** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @cpu_to_fdt64(i32 %30)
  %32 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %8, align 8
  %33 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @cpu_to_fdt64(i32 %34)
  %36 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %8, align 8
  %37 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 16
  %42 = trunc i64 %41 to i32
  %43 = call i32 @fdt_set_off_dt_struct(i8* %38, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %24, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @FDT_SW_PROBE_MEMRSV(i8*) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i8* @cpu_to_fdt64(i32) #1

declare dso_local i32 @fdt_set_off_dt_struct(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

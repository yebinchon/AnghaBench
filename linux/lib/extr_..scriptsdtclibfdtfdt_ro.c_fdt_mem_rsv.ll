; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_mem_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_mem_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fdt_reserve_entry* (i8*, i32)* @fdt_mem_rsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fdt_reserve_entry* @fdt_mem_rsv(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.fdt_reserve_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fdt_off_mem_rsvmap(i8* %12)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @fdt_off_mem_rsvmap(i8* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.fdt_reserve_entry* null, %struct.fdt_reserve_entry** %3, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @fdt_totalsize(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = icmp ugt i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.fdt_reserve_entry* null, %struct.fdt_reserve_entry** %3, align 8
  br label %34

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.fdt_reserve_entry* @fdt_mem_rsv_(i8* %31, i32 %32)
  store %struct.fdt_reserve_entry* %33, %struct.fdt_reserve_entry** %3, align 8
  br label %34

34:                                               ; preds = %30, %29, %20
  %35 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %3, align 8
  ret %struct.fdt_reserve_entry* %35
}

declare dso_local i32 @fdt_off_mem_rsvmap(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local %struct.fdt_reserve_entry* @fdt_mem_rsv_(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

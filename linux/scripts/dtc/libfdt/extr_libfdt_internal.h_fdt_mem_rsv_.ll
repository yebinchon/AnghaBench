; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_libfdt_internal.h_fdt_mem_rsv_.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_libfdt_internal.h_fdt_mem_rsv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fdt_reserve_entry* (i8*, i32)* @fdt_mem_rsv_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fdt_reserve_entry* @fdt_mem_rsv_(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdt_reserve_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @fdt_off_mem_rsvmap(i8* %7)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = bitcast i8* %10 to %struct.fdt_reserve_entry*
  store %struct.fdt_reserve_entry* %11, %struct.fdt_reserve_entry** %5, align 8
  %12 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %12, i64 %14
  ret %struct.fdt_reserve_entry* %15
}

declare dso_local i32 @fdt_off_mem_rsvmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

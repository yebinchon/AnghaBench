; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_append_re.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_append_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.fdt_reserve_entry = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_append_re(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.data, align 4
  %5 = alloca %struct.data, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fdt_reserve_entry, align 8
  %9 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @cpu_to_fdt64(i32 %10)
  %12 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %8, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @cpu_to_fdt64(i32 %13)
  %15 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %8, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @data_append_data(i32 %17, %struct.fdt_reserve_entry* %8, i32 16)
  %19 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

declare dso_local i8* @cpu_to_fdt64(i32) #1

declare dso_local i32 @data_append_data(i32, %struct.fdt_reserve_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_sparse.c_section_mark_present.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_sparse.c_section_mark_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_section = type { i32 }

@__highest_present_section_nr = common dso_local global i64 0, align 8
@SECTION_MARKED_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_section*)* @section_mark_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @section_mark_present(%struct.mem_section* %0) #0 {
  %2 = alloca %struct.mem_section*, align 8
  %3 = alloca i64, align 8
  store %struct.mem_section* %0, %struct.mem_section** %2, align 8
  %4 = load %struct.mem_section*, %struct.mem_section** %2, align 8
  %5 = call i64 @__section_nr(%struct.mem_section* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @__highest_present_section_nr, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* @__highest_present_section_nr, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* @SECTION_MARKED_PRESENT, align 4
  %13 = load %struct.mem_section*, %struct.mem_section** %2, align 8
  %14 = getelementptr inbounds %struct.mem_section, %struct.mem_section* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i64 @__section_nr(%struct.mem_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

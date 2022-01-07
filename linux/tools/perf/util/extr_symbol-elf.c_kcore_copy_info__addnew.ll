; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy_info__addnew.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy_info__addnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phdr_data = type { i32 }
%struct.kcore_copy_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phdr_data* (%struct.kcore_copy_info*, i32, i32, i32)* @kcore_copy_info__addnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phdr_data* @kcore_copy_info__addnew(%struct.kcore_copy_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kcore_copy_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.phdr_data*, align 8
  store %struct.kcore_copy_info* %0, %struct.kcore_copy_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.phdr_data* @phdr_data__new(i32 %10, i32 %11, i32 %12)
  store %struct.phdr_data* %13, %struct.phdr_data** %9, align 8
  %14 = load %struct.phdr_data*, %struct.phdr_data** %9, align 8
  %15 = icmp ne %struct.phdr_data* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.phdr_data*, %struct.phdr_data** %9, align 8
  %18 = getelementptr inbounds %struct.phdr_data, %struct.phdr_data* %17, i32 0, i32 0
  %19 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %5, align 8
  %20 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  br label %22

22:                                               ; preds = %16, %4
  %23 = load %struct.phdr_data*, %struct.phdr_data** %9, align 8
  ret %struct.phdr_data* %23
}

declare dso_local %struct.phdr_data* @phdr_data__new(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

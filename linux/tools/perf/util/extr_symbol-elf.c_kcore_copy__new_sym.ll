; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__new_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__new_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_data = type { i32, i32 }
%struct.kcore_copy_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sym_data* (%struct.kcore_copy_info*, i32)* @kcore_copy__new_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sym_data* @kcore_copy__new_sym(%struct.kcore_copy_info* %0, i32 %1) #0 {
  %3 = alloca %struct.kcore_copy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_data*, align 8
  store %struct.kcore_copy_info* %0, %struct.kcore_copy_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.sym_data* @zalloc(i32 8)
  store %struct.sym_data* %6, %struct.sym_data** %5, align 8
  %7 = load %struct.sym_data*, %struct.sym_data** %5, align 8
  %8 = icmp ne %struct.sym_data* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.sym_data*, %struct.sym_data** %5, align 8
  %12 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sym_data*, %struct.sym_data** %5, align 8
  %14 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %13, i32 0, i32 0
  %15 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %3, align 8
  %16 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %15, i32 0, i32 0
  %17 = call i32 @list_add_tail(i32* %14, i32* %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.sym_data*, %struct.sym_data** %5, align 8
  ret %struct.sym_data* %19
}

declare dso_local %struct.sym_data* @zalloc(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

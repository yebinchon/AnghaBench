; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sample_map_ret0.c_func.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sample_map_ret0.c_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@htab = common dso_local global i32 0, align 4
@array = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @func() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i64* @bpf_map_lookup_elem(i32* @htab, i32* %3)
  store i64* %5, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %15

9:                                                ; preds = %0
  %10 = call i64* @bpf_map_lookup_elem(i32* @array, i32* %2)
  store i64* %10, i64** %4, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %15

14:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %13, %8
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i64* @bpf_map_lookup_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

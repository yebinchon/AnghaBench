; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_ptr_as_arr.c_test_core_ptr_as_arr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_ptr_as_arr.c_test_core_ptr_as_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.core_reloc_ptr_as_arr = type { i32 }

@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_core_ptr_as_arr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.core_reloc_ptr_as_arr*, align 8
  %5 = alloca %struct.core_reloc_ptr_as_arr*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.core_reloc_ptr_as_arr* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_ptr_as_arr*), %struct.core_reloc_ptr_as_arr** %4, align 8
  store %struct.core_reloc_ptr_as_arr* bitcast (%struct.TYPE_2__* @data to %struct.core_reloc_ptr_as_arr*), %struct.core_reloc_ptr_as_arr** %5, align 8
  %6 = load %struct.core_reloc_ptr_as_arr*, %struct.core_reloc_ptr_as_arr** %5, align 8
  %7 = getelementptr inbounds %struct.core_reloc_ptr_as_arr, %struct.core_reloc_ptr_as_arr* %6, i32 0, i32 0
  %8 = load %struct.core_reloc_ptr_as_arr*, %struct.core_reloc_ptr_as_arr** %4, align 8
  %9 = getelementptr inbounds %struct.core_reloc_ptr_as_arr, %struct.core_reloc_ptr_as_arr* %8, i64 2
  %10 = getelementptr inbounds %struct.core_reloc_ptr_as_arr, %struct.core_reloc_ptr_as_arr* %9, i32 0, i32 0
  %11 = call i64 @BPF_CORE_READ(i32* %7, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i64 @BPF_CORE_READ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

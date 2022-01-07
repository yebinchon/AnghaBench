; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_insn-x86.c_test_data_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_insn-x86.c_test_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_data*, i32)* @test_data_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_data_set(%struct.test_data* %0, i32 %1) #0 {
  %3 = alloca %struct.test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_data*, align 8
  %6 = alloca i32, align 4
  store %struct.test_data* %0, %struct.test_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.test_data*, %struct.test_data** %3, align 8
  store %struct.test_data* %7, %struct.test_data** %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.test_data*, %struct.test_data** %5, align 8
  %10 = getelementptr inbounds %struct.test_data, %struct.test_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.test_data*, %struct.test_data** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @test_data_item(%struct.test_data* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.test_data*, %struct.test_data** %5, align 8
  %22 = getelementptr inbounds %struct.test_data, %struct.test_data* %21, i32 1
  store %struct.test_data* %22, %struct.test_data** %5, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i64 @test_data_item(%struct.test_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

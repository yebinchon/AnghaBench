; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_release_filter.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_release_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog = type { i32 }

@tests = common dso_local global %struct.TYPE_2__* null, align 8
@TEST_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*, i32)* @release_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_filter(%struct.bpf_prog* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TEST_TYPE_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %2
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %17 = call i32 @bpf_prog_destroy(%struct.bpf_prog* %16)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %20 = call i32 @bpf_prog_free(%struct.bpf_prog* %19)
  br label %21

21:                                               ; preds = %2, %18, %15
  ret void
}

declare dso_local i32 @bpf_prog_destroy(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_free(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

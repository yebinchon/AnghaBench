; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_scale.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_test*)* @bpf_fill_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_fill_scale(%struct.bpf_test* %0) #0 {
  %2 = alloca %struct.bpf_test*, align 8
  store %struct.bpf_test* %0, %struct.bpf_test** %2, align 8
  %3 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %10 [
    i32 1, label %6
    i32 2, label %8
  ]

6:                                                ; preds = %1
  %7 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  call void @bpf_fill_scale1(%struct.bpf_test* %7)
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  call void @bpf_fill_scale2(%struct.bpf_test* %9)
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %6, %8, %10
  ret void
}

declare dso_local void @bpf_fill_scale1(%struct.bpf_test*) #1

declare dso_local void @bpf_fill_scale2(%struct.bpf_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

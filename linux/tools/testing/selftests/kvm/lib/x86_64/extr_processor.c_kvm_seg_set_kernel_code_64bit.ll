; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_seg_set_kernel_code_64bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_seg_set_kernel_code_64bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vm*, i32, %struct.kvm_segment*)* @kvm_seg_set_kernel_code_64bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_seg_set_kernel_code_64bit(%struct.kvm_vm* %0, i32 %1, %struct.kvm_segment* %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_segment*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_segment* %2, %struct.kvm_segment** %6, align 8
  %7 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %8 = call i32 @memset(%struct.kvm_segment* %7, i32 0, i32 28)
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %11 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %13 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %15 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 2
  store i32 11, i32* %17, align 4
  %18 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %18, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %20, i32 0, i32 4
  store i32 1, i32* %21, align 4
  %22 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %22, i32 0, i32 5
  store i32 1, i32* %23, align 4
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %25 = icmp ne %struct.kvm_vm* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %28 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %29 = call i32 @kvm_seg_fill_gdt_64bit(%struct.kvm_vm* %27, %struct.kvm_segment* %28)
  br label %30

30:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @memset(%struct.kvm_segment*, i32, i32) #1

declare dso_local i32 @kvm_seg_fill_gdt_64bit(%struct.kvm_vm*, %struct.kvm_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

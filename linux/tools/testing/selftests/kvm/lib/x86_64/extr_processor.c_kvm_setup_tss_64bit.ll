; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_setup_tss_64bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_setup_tss_64bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64 }
%struct.kvm_segment = type { i32, i32, i32, i32, i64 }

@KVM_UTIL_MIN_VADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vm*, %struct.kvm_segment*, i32, i32, i32)* @kvm_setup_tss_64bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_setup_tss_64bit(%struct.kvm_vm* %0, %struct.kvm_segment* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca %struct.kvm_segment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %6, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %12 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %17 = call i32 (...) @getpagesize()
  %18 = load i32, i32* @KVM_UTIL_MIN_VADDR, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %15, %5
  %25 = load %struct.kvm_segment*, %struct.kvm_segment** %7, align 8
  %26 = call i32 @memset(%struct.kvm_segment* %25, i32 0, i32 24)
  %27 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.kvm_segment*, %struct.kvm_segment** %7, align 8
  %31 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load %struct.kvm_segment*, %struct.kvm_segment** %7, align 8
  %33 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %32, i32 0, i32 0
  store i32 103, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.kvm_segment*, %struct.kvm_segment** %7, align 8
  %36 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.kvm_segment*, %struct.kvm_segment** %7, align 8
  %38 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %37, i32 0, i32 2
  store i32 11, i32* %38, align 8
  %39 = load %struct.kvm_segment*, %struct.kvm_segment** %7, align 8
  %40 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %39, i32 0, i32 3
  store i32 1, i32* %40, align 4
  %41 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %42 = load %struct.kvm_segment*, %struct.kvm_segment** %7, align 8
  %43 = call i32 @kvm_seg_fill_gdt_64bit(%struct.kvm_vm* %41, %struct.kvm_segment* %42)
  ret void
}

declare dso_local i64 @vm_vaddr_alloc(%struct.kvm_vm*, i32, i32, i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @memset(%struct.kvm_segment*, i32, i32) #1

declare dso_local i32 @kvm_seg_fill_gdt_64bit(%struct.kvm_vm*, %struct.kvm_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

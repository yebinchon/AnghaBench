; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_setup_gdt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_setup_gdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64 }
%struct.kvm_dtable = type { i32, i64 }

@KVM_UTIL_MIN_VADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vm*, %struct.kvm_dtable*, i32, i32)* @kvm_setup_gdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_setup_gdt(%struct.kvm_vm* %0, %struct.kvm_dtable* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca %struct.kvm_dtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %5, align 8
  store %struct.kvm_dtable* %1, %struct.kvm_dtable** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %15 = call i32 (...) @getpagesize()
  %16 = load i32, i32* @KVM_UTIL_MIN_VADDR, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %13, %4
  %23 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.kvm_dtable*, %struct.kvm_dtable** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_dtable, %struct.kvm_dtable* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = call i32 (...) @getpagesize()
  %29 = load %struct.kvm_dtable*, %struct.kvm_dtable** %6, align 8
  %30 = getelementptr inbounds %struct.kvm_dtable, %struct.kvm_dtable* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i64 @vm_vaddr_alloc(%struct.kvm_vm*, i32, i32, i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

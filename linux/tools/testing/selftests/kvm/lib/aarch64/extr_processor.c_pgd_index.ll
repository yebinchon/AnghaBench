; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_processor.c_pgd_index.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_processor.c_pgd_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vm*, i32)* @pgd_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgd_index(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 3
  %15 = mul nsw i32 %10, %14
  %16 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = shl i64 1, %25
  %27 = sub i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = lshr i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

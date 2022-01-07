; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_processor.c_pud_index.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_processor.c_pud_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Mode %d does not have 4 page table levels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vm*, i32)* @pud_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pud_index(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 3
  %11 = mul nsw i32 2, %10
  %12 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 3
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = sub i64 %21, 1
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 4
  %28 = zext i1 %27 to i32
  %29 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TEST_ASSERT(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = lshr i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  ret i32 %37
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

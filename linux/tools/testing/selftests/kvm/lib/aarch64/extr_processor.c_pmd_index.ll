; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_processor.c_pmd_index.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_processor.c_pmd_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Mode %d does not have >= 3 page table levels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vm*, i32)* @pmd_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmd_index(%struct.kvm_vm* %0, i32 %1) #0 {
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
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = sub i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TEST_ASSERT(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %34, %35
  ret i32 %36
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

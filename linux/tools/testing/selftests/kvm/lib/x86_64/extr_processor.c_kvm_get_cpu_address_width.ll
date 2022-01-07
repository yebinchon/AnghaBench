; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_get_cpu_address_width.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_get_cpu_address_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid_entry2 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_get_cpu_address_width(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm_cpuid_entry2*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @kvm_get_cpuid_max()
  %8 = icmp ult i32 %7, -2147483640
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = call %struct.kvm_cpuid_entry2* @kvm_get_supported_cpuid_entry(i32 1)
  %11 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 64
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 36, i32 32
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 32, i32* %19, align 4
  br label %33

20:                                               ; preds = %2
  %21 = call %struct.kvm_cpuid_entry2* @kvm_get_supported_cpuid_entry(i32 -2147483640)
  store %struct.kvm_cpuid_entry2* %21, %struct.kvm_cpuid_entry2** %5, align 8
  %22 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %3, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @kvm_get_cpuid_max(...) #1

declare dso_local %struct.kvm_cpuid_entry2* @kvm_get_supported_cpuid_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

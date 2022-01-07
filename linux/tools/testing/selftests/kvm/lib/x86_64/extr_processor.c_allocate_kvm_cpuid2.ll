; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_allocate_kvm_cpuid2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_allocate_kvm_cpuid2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid2 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_cpuid2* ()* @allocate_kvm_cpuid2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_cpuid2* @allocate_kvm_cpuid2() #0 {
  %1 = alloca %struct.kvm_cpuid2*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 100, i32* %2, align 4
  store i64 4, i64* %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = load i64, i64* %3, align 8
  %8 = add i64 %7, %6
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.kvm_cpuid2* @malloc(i64 %9)
  store %struct.kvm_cpuid2* %10, %struct.kvm_cpuid2** %1, align 8
  %11 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %1, align 8
  %12 = icmp ne %struct.kvm_cpuid2* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @abort() #3
  unreachable

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %1, align 8
  %19 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %1, align 8
  ret %struct.kvm_cpuid2* %20
}

declare dso_local %struct.kvm_cpuid2* @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

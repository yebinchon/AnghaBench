; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_test_hv_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_test_hv_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid2 = type { i32, %struct.kvm_cpuid_entry2* }
%struct.kvm_cpuid_entry2 = type { i32, i64, i64, i64, i32* }

@.str = private unnamed_addr constant [99 x i8] c"KVM_GET_SUPPORTED_HV_CPUID should return 6 entries when Enlightened VMCS is disabled (returned %d)\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"KVM_GET_SUPPORTED_HV_CPUID should return 7 entries when Enlightened VMCS is enabled (returned %d)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"function %lx is our of supported range\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c".index field should be zero\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c".flags field should be zero\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"padding should be zero\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"NoNonArchitecturalCoreSharing bit doesn't reflect SMT setting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_cpuid2*, i32)* @test_hv_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hv_cpuid(%struct.kvm_cpuid2* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_cpuid2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_cpuid_entry2*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_cpuid2* %0, %struct.kvm_cpuid2** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 6
  %15 = zext i1 %14 to i32
  %16 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %15, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 7
  %25 = zext i1 %24 to i32
  %26 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %25, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %20, %10
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %119, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %122

37:                                               ; preds = %31
  %38 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %38, i32 0, i32 1
  %40 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %40, i64 %42
  store %struct.kvm_cpuid_entry2* %43, %struct.kvm_cpuid_entry2** %6, align 8
  %44 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %45 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 1073741824
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 1073741834
  br label %53

53:                                               ; preds = %48, %37
  %54 = phi i1 [ false, %37 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %61 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %67 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %53
  %79 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %80 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %78
  %86 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %87 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %85, %78, %53
  %94 = phi i1 [ false, %78 ], [ false, %53 ], [ %92, %85 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %98 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1073741828
  br i1 %100, label %101, label %118

101:                                              ; preds = %93
  %102 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %103 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %104, 262144
  %106 = icmp ne i64 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (...) @smt_possible()
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = icmp eq i32 %110, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %101, %93
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %31

122:                                              ; preds = %31
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, ...) #1

declare dso_local i32 @smt_possible(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

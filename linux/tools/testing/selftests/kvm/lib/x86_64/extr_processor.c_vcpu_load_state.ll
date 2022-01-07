; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_vcpu_load_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_vcpu_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_x86_state = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vcpu = type { i32 }

@KVM_SET_XSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unexpected result from KVM_SET_XSAVE, r: %i\00", align 1
@KVM_CAP_XCRS = common dso_local global i32 0, align 4
@KVM_SET_XCRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unexpected result from KVM_SET_XCRS, r: %i\00", align 1
@KVM_SET_SREGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Unexpected result from KVM_SET_SREGS, r: %i\00", align 1
@KVM_SET_MSRS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Unexpected result from KVM_SET_MSRS, r: %i (failed at %x)\00", align 1
@KVM_SET_VCPU_EVENTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Unexpected result from KVM_SET_VCPU_EVENTS, r: %i\00", align 1
@KVM_SET_MP_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Unexpected result from KVM_SET_MP_STATE, r: %i\00", align 1
@KVM_SET_DEBUGREGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Unexpected result from KVM_SET_DEBUGREGS, r: %i\00", align 1
@KVM_SET_REGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Unexpected result from KVM_SET_REGS, r: %i\00", align 1
@KVM_SET_NESTED_STATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"Unexpected result from KVM_SET_NESTED_STATE, r: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_load_state(%struct.kvm_vm* %0, i32 %1, %struct.kvm_x86_state* %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_x86_state*, align 8
  %7 = alloca %struct.vcpu*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_x86_state* %2, %struct.kvm_x86_state** %6, align 8
  %9 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.vcpu* @vcpu_find(%struct.kvm_vm* %9, i32 %10)
  store %struct.vcpu* %11, %struct.vcpu** %7, align 8
  %12 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %13 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KVM_SET_XSAVE, align 4
  %16 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %16, i32 0, i32 8
  %18 = call i32 @ioctl(i32 %14, i32 %15, %struct.TYPE_4__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @KVM_CAP_XCRS, align 4
  %25 = call i64 @kvm_check_cap(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %29 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @KVM_SET_XCRS, align 4
  %32 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %33 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %32, i32 0, i32 7
  %34 = call i32 @ioctl(i32 %30, i32 %31, %struct.TYPE_4__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %27, %3
  %41 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %42 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @KVM_SET_SREGS, align 4
  %45 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %45, i32 0, i32 6
  %47 = call i32 @ioctl(i32 %43, i32 %44, %struct.TYPE_4__* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %54 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @KVM_SET_MSRS, align 4
  %57 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %58 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %57, i32 0, i32 5
  %59 = call i32 @ioctl(i32 %55, i32 %56, %struct.TYPE_4__* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %62 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %60, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %70 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %40
  br label %85

75:                                               ; preds = %40
  %76 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %77 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  br label %85

85:                                               ; preds = %75, %74
  %86 = phi i32 [ -1, %74 ], [ %84, %75 ]
  %87 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %66, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %86)
  %88 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %89 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @KVM_SET_VCPU_EVENTS, align 4
  %92 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %93 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %92, i32 0, i32 4
  %94 = call i32 @ioctl(i32 %90, i32 %91, %struct.TYPE_4__* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %101 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @KVM_SET_MP_STATE, align 4
  %104 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %105 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %104, i32 0, i32 3
  %106 = call i32 @ioctl(i32 %102, i32 %103, %struct.TYPE_4__* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %113 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @KVM_SET_DEBUGREGS, align 4
  %116 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %117 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %116, i32 0, i32 2
  %118 = call i32 @ioctl(i32 %114, i32 %115, %struct.TYPE_4__* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %121, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %125 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @KVM_SET_REGS, align 4
  %128 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %129 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %128, i32 0, i32 1
  %130 = call i32 @ioctl(i32 %126, i32 %127, %struct.TYPE_4__* %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %137 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %85
  %142 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %143 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @KVM_SET_NESTED_STATE, align 4
  %146 = load %struct.kvm_x86_state*, %struct.kvm_x86_state** %6, align 8
  %147 = getelementptr inbounds %struct.kvm_x86_state, %struct.kvm_x86_state* %146, i32 0, i32 0
  %148 = call i32 @ioctl(i32 %144, i32 %145, %struct.TYPE_4__* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %151, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %141, %85
  ret void
}

declare dso_local %struct.vcpu* @vcpu_find(%struct.kvm_vm*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, ...) #1

declare dso_local i64 @kvm_check_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

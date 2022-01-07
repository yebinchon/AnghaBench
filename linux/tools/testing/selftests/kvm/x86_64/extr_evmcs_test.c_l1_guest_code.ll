; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_evmcs_test.c_l1_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_evmcs_test.c_l1_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32, i64, i32, i32 }

@l2_guest_code = common dso_local global i32 0, align 4
@VM_EXIT_REASON = common dso_local global i32 0, align 4
@EXIT_REASON_VMCALL = common dso_local global i64 0, align 8
@L2_GUEST_STACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l1_guest_code(%struct.vmx_pages* %0) #0 {
  %2 = alloca %struct.vmx_pages*, align 8
  %3 = alloca [64 x i64], align 16
  store %struct.vmx_pages* %0, %struct.vmx_pages** %2, align 8
  %4 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %5 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %8 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @enable_vp_assist(i32 %6, i32 %9)
  %11 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %12 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @GUEST_ASSERT(i32 %13)
  %15 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %16 = call i32 @prepare_for_vmx_operation(%struct.vmx_pages* %15)
  %17 = call i32 @GUEST_ASSERT(i32 %16)
  %18 = call i32 @GUEST_SYNC(i32 3)
  %19 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %20 = call i32 @load_vmcs(%struct.vmx_pages* %19)
  %21 = call i32 @GUEST_ASSERT(i32 %20)
  %22 = call i64 (...) @vmptrstz()
  %23 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %24 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @GUEST_ASSERT(i32 %27)
  %29 = call i32 @GUEST_SYNC(i32 4)
  %30 = call i64 (...) @vmptrstz()
  %31 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %32 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @GUEST_ASSERT(i32 %35)
  %37 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %38 = load i32, i32* @l2_guest_code, align 4
  %39 = getelementptr inbounds [64 x i64], [64 x i64]* %3, i64 0, i64 64
  %40 = call i32 @prepare_vmcs(%struct.vmx_pages* %37, i32 %38, i64* %39)
  %41 = call i32 @GUEST_SYNC(i32 5)
  %42 = call i64 (...) @vmptrstz()
  %43 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %44 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @GUEST_ASSERT(i32 %47)
  %49 = call i32 (...) @vmlaunch()
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @GUEST_ASSERT(i32 %52)
  %54 = call i64 (...) @vmptrstz()
  %55 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %56 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @GUEST_ASSERT(i32 %59)
  %61 = call i32 @GUEST_SYNC(i32 8)
  %62 = call i32 (...) @vmresume()
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @GUEST_ASSERT(i32 %65)
  %67 = load i32, i32* @VM_EXIT_REASON, align 4
  %68 = call i64 @vmreadz(i32 %67)
  %69 = load i64, i64* @EXIT_REASON_VMCALL, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @GUEST_ASSERT(i32 %71)
  %73 = call i32 @GUEST_SYNC(i32 9)
  ret void
}

declare dso_local i32 @enable_vp_assist(i32, i32) #1

declare dso_local i32 @GUEST_ASSERT(i32) #1

declare dso_local i32 @prepare_for_vmx_operation(%struct.vmx_pages*) #1

declare dso_local i32 @GUEST_SYNC(i32) #1

declare dso_local i32 @load_vmcs(%struct.vmx_pages*) #1

declare dso_local i64 @vmptrstz(...) #1

declare dso_local i32 @prepare_vmcs(%struct.vmx_pages*, i32, i64*) #1

declare dso_local i32 @vmlaunch(...) #1

declare dso_local i32 @vmresume(...) #1

declare dso_local i64 @vmreadz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

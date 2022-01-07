; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_close_while_nested_test.c_l1_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_close_while_nested_test.c_l1_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32 }

@l2_guest_code = common dso_local global i32 0, align 4
@L2_GUEST_STACK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx_pages*)* @l1_guest_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_guest_code(%struct.vmx_pages* %0) #0 {
  %2 = alloca %struct.vmx_pages*, align 8
  %3 = alloca [64 x i64], align 16
  store %struct.vmx_pages* %0, %struct.vmx_pages** %2, align 8
  %4 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %5 = call i32 @prepare_for_vmx_operation(%struct.vmx_pages* %4)
  %6 = call i32 @GUEST_ASSERT(i32 %5)
  %7 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %8 = call i32 @load_vmcs(%struct.vmx_pages* %7)
  %9 = call i32 @GUEST_ASSERT(i32 %8)
  %10 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %11 = load i32, i32* @l2_guest_code, align 4
  %12 = getelementptr inbounds [64 x i64], [64 x i64]* %3, i64 0, i64 64
  %13 = call i32 @prepare_vmcs(%struct.vmx_pages* %10, i32 %11, i64* %12)
  %14 = call i32 (...) @vmlaunch()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @GUEST_ASSERT(i32 %17)
  %19 = call i32 @GUEST_ASSERT(i32 0)
  ret void
}

declare dso_local i32 @GUEST_ASSERT(i32) #1

declare dso_local i32 @prepare_for_vmx_operation(%struct.vmx_pages*) #1

declare dso_local i32 @load_vmcs(%struct.vmx_pages*) #1

declare dso_local i32 @prepare_vmcs(%struct.vmx_pages*, i32, i64*) #1

declare dso_local i32 @vmlaunch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

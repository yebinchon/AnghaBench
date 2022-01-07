; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_dirty_log_test.c_l2_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_dirty_log_test.c_l2_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NESTED_TEST_MEM1 = common dso_local global i64 0, align 8
@NESTED_TEST_MEM2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @l2_guest_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_guest_code() #0 {
  %1 = load i64, i64* @NESTED_TEST_MEM1, align 8
  %2 = inttoptr i64 %1 to i32*
  %3 = load volatile i32, i32* %2, align 4
  %4 = load i64, i64* @NESTED_TEST_MEM1, align 8
  %5 = inttoptr i64 %4 to i32*
  store volatile i32 1, i32* %5, align 4
  %6 = call i32 @GUEST_SYNC(i32 1)
  %7 = call i32 @GUEST_SYNC(i32 0)
  %8 = load i64, i64* @NESTED_TEST_MEM2, align 8
  %9 = inttoptr i64 %8 to i32*
  store volatile i32 1, i32* %9, align 4
  %10 = call i32 @GUEST_SYNC(i32 1)
  %11 = load i64, i64* @NESTED_TEST_MEM2, align 8
  %12 = inttoptr i64 %11 to i32*
  store volatile i32 1, i32* %12, align 4
  %13 = call i32 @GUEST_SYNC(i32 1)
  %14 = call i32 @GUEST_SYNC(i32 0)
  %15 = call i32 (...) @vmcall()
  ret void
}

declare dso_local i32 @GUEST_SYNC(i32) #1

declare dso_local i32 @vmcall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

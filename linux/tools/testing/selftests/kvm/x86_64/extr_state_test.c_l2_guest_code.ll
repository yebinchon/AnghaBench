; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_state_test.c_l2_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_state_test.c_l2_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUEST_RIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2_guest_code() #0 {
  %1 = call i32 @GUEST_SYNC(i32 6)
  %2 = call i32 (...) @vmcall()
  %3 = load i32, i32* @GUEST_RIP, align 4
  %4 = call i32 @vmreadz(i32 %3)
  %5 = icmp eq i32 %4, 12648430
  %6 = zext i1 %5 to i32
  %7 = call i32 @GUEST_ASSERT(i32 %6)
  %8 = call i32 @GUEST_SYNC(i32 10)
  %9 = load i32, i32* @GUEST_RIP, align 4
  %10 = call i32 @vmreadz(i32 %9)
  %11 = icmp eq i32 %10, 12648430
  %12 = zext i1 %11 to i32
  %13 = call i32 @GUEST_ASSERT(i32 %12)
  %14 = load i32, i32* @GUEST_RIP, align 4
  %15 = call i32 @vmwrite(i32 %14, i32 202375150)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @GUEST_ASSERT(i32 %18)
  %20 = call i32 @GUEST_SYNC(i32 11)
  %21 = load i32, i32* @GUEST_RIP, align 4
  %22 = call i32 @vmreadz(i32 %21)
  %23 = icmp eq i32 %22, 202375150
  %24 = zext i1 %23 to i32
  %25 = call i32 @GUEST_ASSERT(i32 %24)
  %26 = load i32, i32* @GUEST_RIP, align 4
  %27 = call i32 @vmwrite(i32 %26, i32 -1056964626)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @GUEST_ASSERT(i32 %30)
  %32 = call i32 @GUEST_SYNC(i32 12)
  %33 = call i32 (...) @vmcall()
  ret void
}

declare dso_local i32 @GUEST_SYNC(i32) #1

declare dso_local i32 @vmcall(...) #1

declare dso_local i32 @GUEST_ASSERT(i32) #1

declare dso_local i32 @vmreadz(i32) #1

declare dso_local i32 @vmwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

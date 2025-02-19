; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/s390x/extr_sync_regs_test.c_compare_sregs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/s390x/extr_sync_regs_test.c_compare_sregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_sregs = type { i32 }
%struct.kvm_sync_regs = type { i32 }

@acrs = common dso_local global i32* null, align 8
@crs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_sregs*, %struct.kvm_sync_regs*)* @compare_sregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare_sregs(%struct.kvm_sregs* %0, %struct.kvm_sync_regs* %1) #0 {
  %3 = alloca %struct.kvm_sregs*, align 8
  %4 = alloca %struct.kvm_sync_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_sregs* %0, %struct.kvm_sregs** %3, align 8
  store %struct.kvm_sync_regs* %1, %struct.kvm_sync_regs** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i32*, i32** @acrs, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @REG_COMPARE(i32 %14)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %6

19:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32*, i32** @crs, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @REG_COMPARE(i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %20

33:                                               ; preds = %20
  ret void
}

declare dso_local i32 @REG_COMPARE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

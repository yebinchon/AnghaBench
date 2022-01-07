; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_extend_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_extend_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torture_random_state = type { i32 }

@RCUTORTURE_RDR_SHIFT = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_NBITS = common dso_local global i64 0, align 8
@RCUTORTURE_RDR_IRQ = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_BH = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_RBH = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_RCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.torture_random_state*)* @rcutorture_extend_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcutorture_extend_mask(i32 %0, %struct.torture_random_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.torture_random_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.torture_random_state* %1, %struct.torture_random_state** %4, align 8
  %8 = call i32 (...) @rcutorture_extend_mask_max()
  store i32 %8, i32* %5, align 4
  %9 = load %struct.torture_random_state*, %struct.torture_random_state** %4, align 8
  %10 = call i32 @torture_random(%struct.torture_random_state* %9)
  %11 = ashr i32 %10, 8
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = lshr i64 %13, 3
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RCUTORTURE_RDR_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @RCUTORTURE_RDR_NBITS, align 8
  %32 = urem i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = shl i32 1, %33
  %35 = and i32 %29, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RCUTORTURE_RDR_IRQ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RCUTORTURE_RDR_BH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @RCUTORTURE_RDR_BH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RCUTORTURE_RDR_RBH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @RCUTORTURE_RDR_RBH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56, %46
  %62 = load i32, i32* @RCUTORTURE_RDR_BH, align 4
  %63 = load i32, i32* @RCUTORTURE_RDR_RBH, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %56, %51, %36
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @RCUTORTURE_RDR_RCU, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ %68, %70 ], [ %72, %71 ]
  ret i32 %74
}

declare dso_local i32 @rcutorture_extend_mask_max(...) #1

declare dso_local i32 @torture_random(%struct.torture_random_state*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

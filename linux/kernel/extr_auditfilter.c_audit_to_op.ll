; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_to_op.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_to_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Audit_equal = common dso_local global i64 0, align 8
@Audit_bad = common dso_local global i64 0, align 8
@audit_ops = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @audit_to_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @audit_to_op(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @Audit_equal, align 8
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @Audit_bad, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i64*, i64** @audit_ops, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %13, %14
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i1 [ false, %5 ], [ %15, %9 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %5

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

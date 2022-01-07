; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_valid_hostcond.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_valid_hostcond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_bc_op = type { i32 }
%struct.inet_diag_hostcond = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_diag_bc_op*, i32, i32*)* @valid_hostcond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_hostcond(%struct.inet_diag_bc_op* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_diag_bc_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inet_diag_hostcond*, align 8
  %9 = alloca i32, align 4
  store %struct.inet_diag_bc_op* %0, %struct.inet_diag_bc_op** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

20:                                               ; preds = %3
  %21 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %5, align 8
  %22 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %21, i64 1
  %23 = bitcast %struct.inet_diag_bc_op* %22 to %struct.inet_diag_hostcond*
  store %struct.inet_diag_hostcond* %23, %struct.inet_diag_hostcond** %8, align 8
  %24 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %8, align 8
  %25 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %30 [
    i32 128, label %27
    i32 130, label %28
    i32 129, label %29
  ]

27:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %31

28:                                               ; preds = %20
  store i32 4, i32* %9, align 4
  br label %31

29:                                               ; preds = %20
  store i32 4, i32* %9, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %50

31:                                               ; preds = %29, %28, %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %50

41:                                               ; preds = %31
  %42 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %8, align 8
  %43 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 8, %45
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %50

49:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %40, %30, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

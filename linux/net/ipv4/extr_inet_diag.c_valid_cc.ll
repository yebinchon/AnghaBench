; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_valid_cc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_valid_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_bc_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @valid_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_cc(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_diag_bc_op*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.inet_diag_bc_op*
  store %struct.inet_diag_bc_op* %14, %struct.inet_diag_bc_op** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %49

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %49

24:                                               ; preds = %19
  %25 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %26 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %31 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %24
  store i32 0, i32* %4, align 4
  br label %49

36:                                               ; preds = %29
  %37 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %38 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %43 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %5, align 8
  br label %9

48:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %35, %23, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

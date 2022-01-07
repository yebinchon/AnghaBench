; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_print_revdep.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_print_revdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }
%struct.symbol = type opaque
%struct.symbol.0 = type opaque

@E_OR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"  - \00", align 1
@E_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expr*, void (i8*, %struct.symbol*, i8*)*, i8*, i64, i8**)* @expr_print_revdep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_print_revdep(%struct.expr* %0, void (i8*, %struct.symbol*, i8*)* %1, i8* %2, i64 %3, i8** %4) #0 {
  %6 = alloca %struct.expr*, align 8
  %7 = alloca void (i8*, %struct.symbol*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  store %struct.expr* %0, %struct.expr** %6, align 8
  store void (i8*, %struct.symbol*, i8*)* %1, void (i8*, %struct.symbol*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** %4, i8*** %10, align 8
  %11 = load %struct.expr*, %struct.expr** %6, align 8
  %12 = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @E_OR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %5
  %17 = load %struct.expr*, %struct.expr** %6, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.expr*, %struct.expr** %19, align 8
  %21 = load void (i8*, %struct.symbol*, i8*)*, void (i8*, %struct.symbol*, i8*)** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i8**, i8*** %10, align 8
  call void @expr_print_revdep(%struct.expr* %20, void (i8*, %struct.symbol*, i8*)* %21, i8* %22, i64 %23, i8** %24)
  %25 = load %struct.expr*, %struct.expr** %6, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.expr*, %struct.expr** %27, align 8
  %29 = load void (i8*, %struct.symbol*, i8*)*, void (i8*, %struct.symbol*, i8*)** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i8**, i8*** %10, align 8
  call void @expr_print_revdep(%struct.expr* %28, void (i8*, %struct.symbol*, i8*)* %29, i8* %30, i64 %31, i8** %32)
  br label %60

33:                                               ; preds = %5
  %34 = load %struct.expr*, %struct.expr** %6, align 8
  %35 = call i64 @expr_calc_value(%struct.expr* %34)
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i8**, i8*** %10, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load void (i8*, %struct.symbol*, i8*)*, void (i8*, %struct.symbol*, i8*)** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  call void %43(i8* %44, %struct.symbol* null, i8* %46)
  %47 = load i8**, i8*** %10, align 8
  store i8* null, i8** %47, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load void (i8*, %struct.symbol*, i8*)*, void (i8*, %struct.symbol*, i8*)** %7, align 8
  %50 = load i8*, i8** %8, align 8
  call void %49(i8* %50, %struct.symbol* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.expr*, %struct.expr** %6, align 8
  %52 = load void (i8*, %struct.symbol*, i8*)*, void (i8*, %struct.symbol*, i8*)** %7, align 8
  %53 = bitcast void (i8*, %struct.symbol*, i8*)* %52 to void (i8*, %struct.symbol.0*, i8*)*
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @E_NONE, align 4
  %56 = call i32 @expr_print(%struct.expr* %51, void (i8*, %struct.symbol.0*, i8*)* %53, i8* %54, i32 %55)
  %57 = load void (i8*, %struct.symbol*, i8*)*, void (i8*, %struct.symbol*, i8*)** %7, align 8
  %58 = load i8*, i8** %8, align 8
  call void %57(i8* %58, %struct.symbol* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %48, %33
  br label %60

60:                                               ; preds = %59, %16
  ret void
}

declare dso_local i64 @expr_calc_value(%struct.expr*) #1

declare dso_local i32 @expr_print(%struct.expr*, void (i8*, %struct.symbol.0*, i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

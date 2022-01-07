; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_check_expr_deps.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_check_expr_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.expr* }
%struct.TYPE_3__ = type { i32, %struct.expr* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Oops! How to check %d?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (%struct.expr*)* @sym_check_expr_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @sym_check_expr_deps(%struct.expr* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %5 = load %struct.expr*, %struct.expr** %3, align 8
  %6 = icmp ne %struct.expr* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %63

8:                                                ; preds = %1
  %9 = load %struct.expr*, %struct.expr** %3, align 8
  %10 = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %56 [
    i32 130, label %12
    i32 137, label %12
    i32 131, label %28
    i32 136, label %34
    i32 135, label %34
    i32 134, label %34
    i32 133, label %34
    i32 132, label %34
    i32 128, label %34
    i32 129, label %50
  ]

12:                                               ; preds = %8, %8
  %13 = load %struct.expr*, %struct.expr** %3, align 8
  %14 = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.expr*, %struct.expr** %15, align 8
  %17 = call %struct.symbol* @sym_check_expr_deps(%struct.expr* %16)
  store %struct.symbol* %17, %struct.symbol** %4, align 8
  %18 = load %struct.symbol*, %struct.symbol** %4, align 8
  %19 = icmp ne %struct.symbol* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %21, %struct.symbol** %2, align 8
  br label %63

22:                                               ; preds = %12
  %23 = load %struct.expr*, %struct.expr** %3, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.expr*, %struct.expr** %25, align 8
  %27 = call %struct.symbol* @sym_check_expr_deps(%struct.expr* %26)
  store %struct.symbol* %27, %struct.symbol** %2, align 8
  br label %63

28:                                               ; preds = %8
  %29 = load %struct.expr*, %struct.expr** %3, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.expr*, %struct.expr** %31, align 8
  %33 = call %struct.symbol* @sym_check_expr_deps(%struct.expr* %32)
  store %struct.symbol* %33, %struct.symbol** %2, align 8
  br label %63

34:                                               ; preds = %8, %8, %8, %8, %8, %8
  %35 = load %struct.expr*, %struct.expr** %3, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.symbol* @sym_check_deps(i32 %38)
  store %struct.symbol* %39, %struct.symbol** %4, align 8
  %40 = load %struct.symbol*, %struct.symbol** %4, align 8
  %41 = icmp ne %struct.symbol* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %43, %struct.symbol** %2, align 8
  br label %63

44:                                               ; preds = %34
  %45 = load %struct.expr*, %struct.expr** %3, align 8
  %46 = getelementptr inbounds %struct.expr, %struct.expr* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.symbol* @sym_check_deps(i32 %48)
  store %struct.symbol* %49, %struct.symbol** %2, align 8
  br label %63

50:                                               ; preds = %8
  %51 = load %struct.expr*, %struct.expr** %3, align 8
  %52 = getelementptr inbounds %struct.expr, %struct.expr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.symbol* @sym_check_deps(i32 %54)
  store %struct.symbol* %55, %struct.symbol** %2, align 8
  br label %63

56:                                               ; preds = %8
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.expr*, %struct.expr** %3, align 8
  %60 = getelementptr inbounds %struct.expr, %struct.expr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %63

63:                                               ; preds = %57, %50, %44, %42, %28, %22, %20, %7
  %64 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %64
}

declare dso_local %struct.symbol* @sym_check_deps(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

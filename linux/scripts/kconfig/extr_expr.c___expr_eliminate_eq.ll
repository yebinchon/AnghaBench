; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c___expr_eliminate_eq.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c___expr_eliminate_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }

@e1 = common dso_local global %struct.expr* null, align 8
@e2 = common dso_local global %struct.expr* null, align 8
@E_SYMBOL = common dso_local global i64 0, align 8
@symbol_yes = common dso_local global i32 0, align 4
@symbol_no = common dso_local global i32 0, align 4
@trans_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.expr**, %struct.expr**)* @__expr_eliminate_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__expr_eliminate_eq(i32 %0, %struct.expr** %1, %struct.expr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.expr**, align 8
  %6 = alloca %struct.expr**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.expr** %1, %struct.expr*** %5, align 8
  store %struct.expr** %2, %struct.expr*** %6, align 8
  %7 = load %struct.expr*, %struct.expr** @e1, align 8
  %8 = getelementptr inbounds %struct.expr, %struct.expr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.expr*, %struct.expr** @e1, align 8
  %15 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  call void @__expr_eliminate_eq(i32 %13, %struct.expr** %16, %struct.expr** @e2)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.expr*, %struct.expr** @e1, align 8
  %19 = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  call void @__expr_eliminate_eq(i32 %17, %struct.expr** %20, %struct.expr** @e2)
  br label %94

21:                                               ; preds = %3
  %22 = load %struct.expr*, %struct.expr** @e2, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.expr*, %struct.expr** @e2, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  call void @__expr_eliminate_eq(i32 %28, %struct.expr** @e1, %struct.expr** %31)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.expr*, %struct.expr** @e2, align 8
  %34 = getelementptr inbounds %struct.expr, %struct.expr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  call void @__expr_eliminate_eq(i32 %32, %struct.expr** @e1, %struct.expr** %35)
  br label %94

36:                                               ; preds = %21
  %37 = load %struct.expr*, %struct.expr** @e1, align 8
  %38 = getelementptr inbounds %struct.expr, %struct.expr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @E_SYMBOL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %36
  %44 = load %struct.expr*, %struct.expr** @e2, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @E_SYMBOL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %43
  %51 = load %struct.expr*, %struct.expr** @e1, align 8
  %52 = getelementptr inbounds %struct.expr, %struct.expr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.expr*, %struct.expr** @e2, align 8
  %56 = getelementptr inbounds %struct.expr, %struct.expr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %54, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load %struct.expr*, %struct.expr** @e1, align 8
  %62 = getelementptr inbounds %struct.expr, %struct.expr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, @symbol_yes
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.expr*, %struct.expr** @e1, align 8
  %68 = getelementptr inbounds %struct.expr, %struct.expr* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, @symbol_no
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60
  br label %94

73:                                               ; preds = %66, %50, %43, %36
  %74 = load %struct.expr*, %struct.expr** @e1, align 8
  %75 = load %struct.expr*, %struct.expr** @e2, align 8
  %76 = call i32 @expr_eq(%struct.expr* %74, %struct.expr* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %94

79:                                               ; preds = %73
  %80 = load i32, i32* @trans_count, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @trans_count, align 4
  %82 = load %struct.expr*, %struct.expr** @e1, align 8
  %83 = call i32 @expr_free(%struct.expr* %82)
  %84 = load %struct.expr*, %struct.expr** @e2, align 8
  %85 = call i32 @expr_free(%struct.expr* %84)
  %86 = load i32, i32* %4, align 4
  switch i32 %86, label %93 [
    i32 128, label %87
    i32 129, label %90
  ]

87:                                               ; preds = %79
  %88 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_no)
  store %struct.expr* %88, %struct.expr** @e1, align 8
  %89 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_no)
  store %struct.expr* %89, %struct.expr** @e2, align 8
  br label %94

90:                                               ; preds = %79
  %91 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_yes)
  store %struct.expr* %91, %struct.expr** @e1, align 8
  %92 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_yes)
  store %struct.expr* %92, %struct.expr** @e2, align 8
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %12, %27, %72, %78, %93, %90, %87
  ret void
}

declare dso_local i32 @expr_eq(%struct.expr*, %struct.expr*) #1

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_symbol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

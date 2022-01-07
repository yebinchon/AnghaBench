; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_check_sym_deps.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_check_sym_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { %struct.property*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.property = type { i64, i32, %struct.TYPE_8__, %struct.property* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dep_stack = type { i32*, %struct.property* }

@P_CHOICE = common dso_local global i64 0, align 8
@P_SELECT = common dso_local global i64 0, align 8
@P_IMPLY = common dso_local global i64 0, align 8
@P_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (%struct.symbol*)* @sym_check_sym_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @sym_check_sym_deps(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.dep_stack, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %6 = load %struct.symbol*, %struct.symbol** %2, align 8
  %7 = call i32 @dep_stack_insert(%struct.dep_stack* %5, %struct.symbol* %6)
  %8 = load %struct.symbol*, %struct.symbol** %2, align 8
  %9 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* %10, i32** %11, align 8
  %12 = load %struct.symbol*, %struct.symbol** %2, align 8
  %13 = getelementptr inbounds %struct.symbol, %struct.symbol* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.symbol* @sym_check_expr_deps(i32 %15)
  store %struct.symbol* %16, %struct.symbol** %3, align 8
  %17 = load %struct.symbol*, %struct.symbol** %3, align 8
  %18 = icmp ne %struct.symbol* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %113

20:                                               ; preds = %1
  %21 = load %struct.symbol*, %struct.symbol** %2, align 8
  %22 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = load %struct.symbol*, %struct.symbol** %2, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.symbol* @sym_check_expr_deps(i32 %28)
  store %struct.symbol* %29, %struct.symbol** %3, align 8
  %30 = load %struct.symbol*, %struct.symbol** %3, align 8
  %31 = icmp ne %struct.symbol* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %113

33:                                               ; preds = %20
  %34 = load %struct.symbol*, %struct.symbol** %2, align 8
  %35 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* %36, i32** %37, align 8
  %38 = load %struct.symbol*, %struct.symbol** %2, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.symbol* @sym_check_expr_deps(i32 %41)
  store %struct.symbol* %42, %struct.symbol** %3, align 8
  %43 = load %struct.symbol*, %struct.symbol** %3, align 8
  %44 = icmp ne %struct.symbol* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %113

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.symbol*, %struct.symbol** %2, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 0
  %50 = load %struct.property*, %struct.property** %49, align 8
  store %struct.property* %50, %struct.property** %4, align 8
  br label %51

51:                                               ; preds = %108, %46
  %52 = load %struct.property*, %struct.property** %4, align 8
  %53 = icmp ne %struct.property* %52, null
  br i1 %53, label %54, label %112

54:                                               ; preds = %51
  %55 = load %struct.property*, %struct.property** %4, align 8
  %56 = getelementptr inbounds %struct.property, %struct.property* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @P_CHOICE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load %struct.property*, %struct.property** %4, align 8
  %62 = getelementptr inbounds %struct.property, %struct.property* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @P_SELECT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.property*, %struct.property** %4, align 8
  %68 = getelementptr inbounds %struct.property, %struct.property* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @P_IMPLY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60, %54
  br label %108

73:                                               ; preds = %66
  %74 = load %struct.property*, %struct.property** %4, align 8
  %75 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 1
  store %struct.property* %74, %struct.property** %75, align 8
  %76 = load %struct.property*, %struct.property** %4, align 8
  %77 = getelementptr inbounds %struct.property, %struct.property* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.symbol* @sym_check_expr_deps(i32 %79)
  store %struct.symbol* %80, %struct.symbol** %3, align 8
  %81 = load %struct.symbol*, %struct.symbol** %3, align 8
  %82 = icmp ne %struct.symbol* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %112

84:                                               ; preds = %73
  %85 = load %struct.property*, %struct.property** %4, align 8
  %86 = getelementptr inbounds %struct.property, %struct.property* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @P_DEFAULT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load %struct.symbol*, %struct.symbol** %2, align 8
  %92 = call i64 @sym_is_choice(%struct.symbol* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %84
  br label %108

95:                                               ; preds = %90
  %96 = load %struct.property*, %struct.property** %4, align 8
  %97 = getelementptr inbounds %struct.property, %struct.property* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* %97, i32** %98, align 8
  %99 = load %struct.property*, %struct.property** %4, align 8
  %100 = getelementptr inbounds %struct.property, %struct.property* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call %struct.symbol* @sym_check_expr_deps(i32 %101)
  store %struct.symbol* %102, %struct.symbol** %3, align 8
  %103 = load %struct.symbol*, %struct.symbol** %3, align 8
  %104 = icmp ne %struct.symbol* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %112

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %106, %94, %72
  %109 = load %struct.property*, %struct.property** %4, align 8
  %110 = getelementptr inbounds %struct.property, %struct.property* %109, i32 0, i32 3
  %111 = load %struct.property*, %struct.property** %110, align 8
  store %struct.property* %111, %struct.property** %4, align 8
  br label %51

112:                                              ; preds = %105, %83, %51
  br label %113

113:                                              ; preds = %112, %45, %32, %19
  %114 = call i32 (...) @dep_stack_remove()
  %115 = load %struct.symbol*, %struct.symbol** %3, align 8
  ret %struct.symbol* %115
}

declare dso_local i32 @dep_stack_insert(%struct.dep_stack*, %struct.symbol*) #1

declare dso_local %struct.symbol* @sym_check_expr_deps(i32) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i32 @dep_stack_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

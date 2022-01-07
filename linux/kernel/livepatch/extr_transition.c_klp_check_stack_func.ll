; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_transition.c_klp_check_stack_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_transition.c_klp_check_stack_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_func = type { i64, i64, i64, i64 }
%struct.klp_ops = type { i32 }

@klp_target_state = common dso_local global i64 0, align 8
@KLP_UNPATCHED = common dso_local global i64 0, align 8
@stack_node = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.klp_func*, i64*, i32)* @klp_check_stack_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klp_check_stack_func(%struct.klp_func* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.klp_func*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.klp_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.klp_func*, align 8
  store %struct.klp_func* %0, %struct.klp_func** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %75, %3
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %78

18:                                               ; preds = %14
  %19 = load i64*, i64** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* @klp_target_state, align 8
  %25 = load i64, i64* @KLP_UNPATCHED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %29 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %32 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %61

34:                                               ; preds = %18
  %35 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %36 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.klp_ops* @klp_find_ops(i64 %37)
  store %struct.klp_ops* %38, %struct.klp_ops** %11, align 8
  %39 = load %struct.klp_ops*, %struct.klp_ops** %11, align 8
  %40 = getelementptr inbounds %struct.klp_ops, %struct.klp_ops* %39, i32 0, i32 0
  %41 = call i64 @list_is_singular(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %45 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %48 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %60

50:                                               ; preds = %34
  %51 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %52 = load i32, i32* @stack_node, align 4
  %53 = call %struct.klp_func* @list_next_entry(%struct.klp_func* %51, i32 %52)
  store %struct.klp_func* %53, %struct.klp_func** %13, align 8
  %54 = load %struct.klp_func*, %struct.klp_func** %13, align 8
  %55 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %8, align 8
  %57 = load %struct.klp_func*, %struct.klp_func** %13, align 8
  %58 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %50, %43
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %67, %68
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %79

74:                                               ; preds = %65, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %14

78:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.klp_ops* @klp_find_ops(i64) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local %struct.klp_func* @list_next_entry(%struct.klp_func*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

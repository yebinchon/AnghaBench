; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ucount.c_inc_ucount.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ucount.c_inc_ucount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucounts = type { i32*, %struct.user_namespace* }
%struct.user_namespace = type { %struct.ucounts*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucounts* @inc_ucount(%struct.user_namespace* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucounts*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucounts*, align 8
  %9 = alloca %struct.ucounts*, align 8
  %10 = alloca %struct.ucounts*, align 8
  %11 = alloca %struct.user_namespace*, align 8
  %12 = alloca i32, align 4
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.ucounts* @get_ucounts(%struct.user_namespace* %13, i32 %14)
  store %struct.ucounts* %15, %struct.ucounts** %8, align 8
  %16 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  store %struct.ucounts* %16, %struct.ucounts** %9, align 8
  br label %17

17:                                               ; preds = %43, %3
  %18 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %19 = icmp ne %struct.ucounts* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %22 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %21, i32 0, i32 1
  %23 = load %struct.user_namespace*, %struct.user_namespace** %22, align 8
  store %struct.user_namespace* %23, %struct.user_namespace** %11, align 8
  %24 = load %struct.user_namespace*, %struct.user_namespace** %11, align 8
  %25 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @READ_ONCE(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %33 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @atomic_inc_below(i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %20
  br label %49

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.user_namespace*, %struct.user_namespace** %11, align 8
  %45 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %44, i32 0, i32 0
  %46 = load %struct.ucounts*, %struct.ucounts** %45, align 8
  store %struct.ucounts* %46, %struct.ucounts** %9, align 8
  br label %17

47:                                               ; preds = %17
  %48 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  store %struct.ucounts* %48, %struct.ucounts** %4, align 8
  br label %73

49:                                               ; preds = %41
  %50 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  store %struct.ucounts* %50, %struct.ucounts** %10, align 8
  %51 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  store %struct.ucounts* %51, %struct.ucounts** %9, align 8
  br label %52

52:                                               ; preds = %64, %49
  %53 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %54 = load %struct.ucounts*, %struct.ucounts** %10, align 8
  %55 = icmp ne %struct.ucounts* %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %58 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @atomic_dec(i32* %62)
  br label %64

64:                                               ; preds = %56
  %65 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %66 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %65, i32 0, i32 1
  %67 = load %struct.user_namespace*, %struct.user_namespace** %66, align 8
  %68 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %67, i32 0, i32 0
  %69 = load %struct.ucounts*, %struct.ucounts** %68, align 8
  store %struct.ucounts* %69, %struct.ucounts** %9, align 8
  br label %52

70:                                               ; preds = %52
  %71 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %72 = call i32 @put_ucounts(%struct.ucounts* %71)
  store %struct.ucounts* null, %struct.ucounts** %4, align 8
  br label %73

73:                                               ; preds = %70, %47
  %74 = load %struct.ucounts*, %struct.ucounts** %4, align 8
  ret %struct.ucounts* %74
}

declare dso_local %struct.ucounts* @get_ucounts(%struct.user_namespace*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @atomic_inc_below(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @put_ucounts(%struct.ucounts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

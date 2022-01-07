; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_tracepoint_add_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_tracepoint_add_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { i32 (...)*, i32, i32 }
%struct.tracepoint_func = type { i32 }

@tracepoints_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracepoint*, %struct.tracepoint_func*, i32)* @tracepoint_add_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracepoint_add_func(%struct.tracepoint* %0, %struct.tracepoint_func* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tracepoint*, align 8
  %6 = alloca %struct.tracepoint_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracepoint_func*, align 8
  %9 = alloca %struct.tracepoint_func*, align 8
  %10 = alloca i32, align 4
  store %struct.tracepoint* %0, %struct.tracepoint** %5, align 8
  store %struct.tracepoint_func* %1, %struct.tracepoint_func** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %12 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = icmp ne i32 (...)* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %17 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %16, i32 0, i32 1
  %18 = call i32 @static_key_enabled(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %22 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %69

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %15, %3
  %31 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %32 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lockdep_is_held(i32* @tracepoints_mutex)
  %35 = call %struct.tracepoint_func* @rcu_dereference_protected(i32 %33, i32 %34)
  store %struct.tracepoint_func* %35, %struct.tracepoint_func** %9, align 8
  %36 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.tracepoint_func* @func_add(%struct.tracepoint_func** %9, %struct.tracepoint_func* %36, i32 %37)
  store %struct.tracepoint_func* %38, %struct.tracepoint_func** %8, align 8
  %39 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %40 = call i64 @IS_ERR(%struct.tracepoint_func* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %44 = call i32 @PTR_ERR(%struct.tracepoint_func* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON_ONCE(i32 %48)
  %50 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %51 = call i32 @PTR_ERR(%struct.tracepoint_func* %50)
  store i32 %51, i32* %4, align 4
  br label %69

52:                                               ; preds = %30
  %53 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %54 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %57 = call i32 @rcu_assign_pointer(i32 %55, %struct.tracepoint_func* %56)
  %58 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %59 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %58, i32 0, i32 1
  %60 = call i32 @static_key_enabled(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %64 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %63, i32 0, i32 1
  %65 = call i32 @static_key_slow_inc(i32* %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %68 = call i32 @release_probes(%struct.tracepoint_func* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %42, %27
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @static_key_enabled(i32*) #1

declare dso_local %struct.tracepoint_func* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.tracepoint_func* @func_add(%struct.tracepoint_func**, %struct.tracepoint_func*, i32) #1

declare dso_local i64 @IS_ERR(%struct.tracepoint_func*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PTR_ERR(%struct.tracepoint_func*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tracepoint_func*) #1

declare dso_local i32 @static_key_slow_inc(i32*) #1

declare dso_local i32 @release_probes(%struct.tracepoint_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

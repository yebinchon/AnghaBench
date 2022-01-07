; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_tracepoint_remove_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_tracepoint_remove_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { i32, i32, i32 (...)* }
%struct.tracepoint_func = type { i32 }

@tracepoints_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracepoint*, %struct.tracepoint_func*)* @tracepoint_remove_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracepoint_remove_func(%struct.tracepoint* %0, %struct.tracepoint_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tracepoint*, align 8
  %5 = alloca %struct.tracepoint_func*, align 8
  %6 = alloca %struct.tracepoint_func*, align 8
  %7 = alloca %struct.tracepoint_func*, align 8
  store %struct.tracepoint* %0, %struct.tracepoint** %4, align 8
  store %struct.tracepoint_func* %1, %struct.tracepoint_func** %5, align 8
  %8 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %9 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @lockdep_is_held(i32* @tracepoints_mutex)
  %12 = call %struct.tracepoint_func* @rcu_dereference_protected(i32 %10, i32 %11)
  store %struct.tracepoint_func* %12, %struct.tracepoint_func** %7, align 8
  %13 = load %struct.tracepoint_func*, %struct.tracepoint_func** %5, align 8
  %14 = call %struct.tracepoint_func* @func_remove(%struct.tracepoint_func** %7, %struct.tracepoint_func* %13)
  store %struct.tracepoint_func* %14, %struct.tracepoint_func** %6, align 8
  %15 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %16 = call i64 @IS_ERR(%struct.tracepoint_func* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.tracepoint_func* %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON_ONCE(i32 %24)
  %26 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.tracepoint_func* %26)
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.tracepoint_func*, %struct.tracepoint_func** %7, align 8
  %30 = icmp ne %struct.tracepoint_func* %29, null
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %33 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %32, i32 0, i32 2
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = icmp ne i32 (...)* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %38 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %37, i32 0, i32 1
  %39 = call i64 @static_key_enabled(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %43 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %42, i32 0, i32 2
  %44 = load i32 (...)*, i32 (...)** %43, align 8
  %45 = call i32 (...) %44()
  br label %46

46:                                               ; preds = %41, %36, %31
  %47 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %48 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %47, i32 0, i32 1
  %49 = call i64 @static_key_enabled(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %53 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %52, i32 0, i32 1
  %54 = call i32 @static_key_slow_dec(i32* %53)
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %58 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tracepoint_func*, %struct.tracepoint_func** %7, align 8
  %61 = call i32 @rcu_assign_pointer(i32 %59, %struct.tracepoint_func* %60)
  %62 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %63 = call i32 @release_probes(%struct.tracepoint_func* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.tracepoint_func* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.tracepoint_func* @func_remove(%struct.tracepoint_func**, %struct.tracepoint_func*) #1

declare dso_local i64 @IS_ERR(%struct.tracepoint_func*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PTR_ERR(%struct.tracepoint_func*) #1

declare dso_local i64 @static_key_enabled(i32*) #1

declare dso_local i32 @static_key_slow_dec(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tracepoint_func*) #1

declare dso_local i32 @release_probes(%struct.tracepoint_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

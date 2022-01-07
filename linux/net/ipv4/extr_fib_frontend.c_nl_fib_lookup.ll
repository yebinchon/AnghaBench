; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_nl_fib_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_nl_fib_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_result_nl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fib_result = type { i32, i32, i32, i32 }
%struct.flowi4 = type { i32, i32, i32, i32 }
%struct.fib_table = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@FIB_LOOKUP_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib_result_nl*)* @nl_fib_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl_fib_lookup(%struct.net* %0, %struct.fib_result_nl* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.fib_result_nl*, align 8
  %5 = alloca %struct.fib_result, align 4
  %6 = alloca %struct.flowi4, align 4
  %7 = alloca %struct.fib_table*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.fib_result_nl* %1, %struct.fib_result_nl** %4, align 8
  %8 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %6, i32 0, i32 0
  %9 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %10 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %6, i32 0, i32 1
  %13 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %14 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %6, i32 0, i32 2
  %17 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %18 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %6, i32 0, i32 3
  %21 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %22 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.net*, %struct.net** %3, align 8
  %26 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %27 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.fib_table* @fib_get_table(%struct.net* %25, i32 %28)
  store %struct.fib_table* %29, %struct.fib_table** %7, align 8
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %33 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.fib_table*, %struct.fib_table** %7, align 8
  %35 = icmp ne %struct.fib_table* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %2
  %37 = call i32 (...) @local_bh_disable()
  %38 = load %struct.fib_table*, %struct.fib_table** %7, align 8
  %39 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %42 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fib_table*, %struct.fib_table** %7, align 8
  %44 = load i32, i32* @FIB_LOOKUP_NOREF, align 4
  %45 = call i32 @fib_table_lookup(%struct.fib_table* %43, %struct.flowi4* %6, %struct.fib_result* %5, i32 %44)
  %46 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %47 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %49 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %5, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %56 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %5, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %60 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %64 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fib_result_nl*, %struct.fib_result_nl** %4, align 8
  %68 = getelementptr inbounds %struct.fib_result_nl, %struct.fib_result_nl* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %52, %36
  %70 = call i32 (...) @local_bh_enable()
  br label %71

71:                                               ; preds = %69, %2
  %72 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fib_table* @fib_get_table(%struct.net*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @fib_table_lookup(%struct.fib_table*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

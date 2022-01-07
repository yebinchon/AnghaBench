; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*)* @dsa_switch_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_switch_teardown(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %3 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %4 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mdiobus_unregister(i64 %17)
  br label %19

19:                                               ; preds = %14, %7, %1
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %21 = call i32 @dsa_switch_unregister_notifier(%struct.dsa_switch* %20)
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %23 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dsa_switch*)*, i32 (%struct.dsa_switch*)** %25, align 8
  %27 = icmp ne i32 (%struct.dsa_switch*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %30 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.dsa_switch*)*, i32 (%struct.dsa_switch*)** %32, align 8
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %35 = call i32 %33(%struct.dsa_switch* %34)
  br label %36

36:                                               ; preds = %28, %19
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %38 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %43 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @devlink_unregister(i32* %44)
  %46 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %47 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @devlink_free(i32* %48)
  %50 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %51 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @mdiobus_unregister(i64) #1

declare dso_local i32 @dsa_switch_unregister_notifier(%struct.dsa_switch*) #1

declare dso_local i32 @devlink_unregister(i32*) #1

declare dso_local i32 @devlink_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_teardown_switches.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_teardown_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch_tree = type { %struct.dsa_switch** }
%struct.dsa_switch = type { i32, %struct.dsa_port* }
%struct.dsa_port = type { i32 }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch_tree*)* @dsa_tree_teardown_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_tree_teardown_switches(%struct.dsa_switch_tree* %0) #0 {
  %2 = alloca %struct.dsa_switch_tree*, align 8
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch_tree* %0, %struct.dsa_switch_tree** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %2, align 8
  %13 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %12, i32 0, i32 0
  %14 = load %struct.dsa_switch**, %struct.dsa_switch*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %14, i64 %16
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %17, align 8
  store %struct.dsa_switch* %18, %struct.dsa_switch** %3, align 8
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %20 = icmp ne %struct.dsa_switch* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %44

22:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %31 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %30, i32 0, i32 1
  %32 = load %struct.dsa_port*, %struct.dsa_port** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %32, i64 %34
  store %struct.dsa_port* %35, %struct.dsa_port** %4, align 8
  %36 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %37 = call i32 @dsa_port_teardown(%struct.dsa_port* %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %43 = call i32 @dsa_switch_teardown(%struct.dsa_switch* %42)
  br label %44

44:                                               ; preds = %41, %21
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %7

47:                                               ; preds = %7
  ret void
}

declare dso_local i32 @dsa_port_teardown(%struct.dsa_port*) #1

declare dso_local i32 @dsa_switch_teardown(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

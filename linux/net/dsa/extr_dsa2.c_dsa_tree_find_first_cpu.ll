; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_find_first_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_find_first_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32 }
%struct.dsa_switch_tree = type { %struct.dsa_switch** }
%struct.dsa_switch = type { i32, %struct.dsa_port* }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsa_port* (%struct.dsa_switch_tree*)* @dsa_tree_find_first_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsa_port* @dsa_tree_find_first_cpu(%struct.dsa_switch_tree* %0) #0 {
  %2 = alloca %struct.dsa_port*, align 8
  %3 = alloca %struct.dsa_switch_tree*, align 8
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch_tree* %0, %struct.dsa_switch_tree** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %47, %1
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %14 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %13, i32 0, i32 0
  %15 = load %struct.dsa_switch**, %struct.dsa_switch*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %15, i64 %17
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %18, align 8
  store %struct.dsa_switch* %19, %struct.dsa_switch** %4, align 8
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %21 = icmp ne %struct.dsa_switch* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %47

23:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %27 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %32 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %31, i32 0, i32 1
  %33 = load %struct.dsa_port*, %struct.dsa_port** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %33, i64 %35
  store %struct.dsa_port* %36, %struct.dsa_port** %5, align 8
  %37 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %38 = call i64 @dsa_port_is_cpu(%struct.dsa_port* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  store %struct.dsa_port* %41, %struct.dsa_port** %2, align 8
  br label %51

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %8

50:                                               ; preds = %8
  store %struct.dsa_port* null, %struct.dsa_port** %2, align 8
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  ret %struct.dsa_port* %52
}

declare dso_local i64 @dsa_port_is_cpu(%struct.dsa_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

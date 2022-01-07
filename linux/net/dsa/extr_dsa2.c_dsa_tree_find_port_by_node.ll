; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_find_port_by_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_find_port_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { %struct.device_node* }
%struct.dsa_switch_tree = type { %struct.dsa_switch** }
%struct.dsa_switch = type { i32, %struct.dsa_port* }
%struct.device_node = type { i32 }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsa_port* (%struct.dsa_switch_tree*, %struct.device_node*)* @dsa_tree_find_port_by_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsa_port* @dsa_tree_find_port_by_node(%struct.dsa_switch_tree* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.dsa_switch_tree*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca %struct.dsa_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch_tree* %0, %struct.dsa_switch_tree** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %15, i32 0, i32 0
  %17 = load %struct.dsa_switch**, %struct.dsa_switch*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %17, i64 %19
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %20, align 8
  store %struct.dsa_switch* %21, %struct.dsa_switch** %6, align 8
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %23 = icmp ne %struct.dsa_switch* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %51

25:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %29 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %34 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %33, i32 0, i32 1
  %35 = load %struct.dsa_port*, %struct.dsa_port** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %35, i64 %37
  store %struct.dsa_port* %38, %struct.dsa_port** %7, align 8
  %39 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %40 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %39, i32 0, i32 0
  %41 = load %struct.device_node*, %struct.device_node** %40, align 8
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = icmp eq %struct.device_node* %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  store %struct.dsa_port* %45, %struct.dsa_port** %3, align 8
  br label %55

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %26

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %10

54:                                               ; preds = %10
  store %struct.dsa_port* null, %struct.dsa_port** %3, align 8
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  ret %struct.dsa_port* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_setup_default_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_setup_default_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch_tree = type { i64, %struct.dsa_switch** }
%struct.dsa_switch = type { i32, %struct.dsa_port* }
%struct.dsa_port = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Tree has no master device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch_tree*)* @dsa_tree_setup_default_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_tree_setup_default_cpu(%struct.dsa_switch_tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch_tree*, align 8
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch_tree* %0, %struct.dsa_switch_tree** %3, align 8
  %8 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %9 = call i64 @dsa_tree_find_first_cpu(%struct.dsa_switch_tree* %8)
  %10 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %11 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %13 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %72

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %68, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %27 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %26, i32 0, i32 1
  %28 = load %struct.dsa_switch**, %struct.dsa_switch*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %28, i64 %30
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %31, align 8
  store %struct.dsa_switch* %32, %struct.dsa_switch** %4, align 8
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %34 = icmp ne %struct.dsa_switch* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %68

36:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %40 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %45 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %44, i32 0, i32 1
  %46 = load %struct.dsa_port*, %struct.dsa_port** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %46, i64 %48
  store %struct.dsa_port* %49, %struct.dsa_port** %5, align 8
  %50 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %51 = call i64 @dsa_port_is_user(%struct.dsa_port* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %43
  %54 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %55 = call i64 @dsa_port_is_dsa(%struct.dsa_port* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %43
  %58 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %59 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %62 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %37

67:                                               ; preds = %37
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %21

71:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %16
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @dsa_tree_find_first_cpu(%struct.dsa_switch_tree*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @dsa_port_is_user(%struct.dsa_port*) #1

declare dso_local i64 @dsa_port_is_dsa(%struct.dsa_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

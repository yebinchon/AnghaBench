; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_add_switch.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_add_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch_tree = type { %struct.dsa_switch** }
%struct.dsa_switch = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch_tree*, %struct.dsa_switch*)* @dsa_tree_add_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_tree_add_switch(%struct.dsa_switch_tree* %0, %struct.dsa_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch_tree*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch_tree* %0, %struct.dsa_switch_tree** %4, align 8
  store %struct.dsa_switch* %1, %struct.dsa_switch** %5, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %12 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %11, i32 0, i32 0
  %13 = load %struct.dsa_switch**, %struct.dsa_switch*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %13, i64 %15
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %16, align 8
  %18 = icmp ne %struct.dsa_switch* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %24 = call i32 @dsa_tree_get(%struct.dsa_switch_tree* %23)
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %26 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %27 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %26, i32 0, i32 0
  %28 = load %struct.dsa_switch**, %struct.dsa_switch*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %28, i64 %30
  store %struct.dsa_switch* %25, %struct.dsa_switch** %31, align 8
  %32 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %33 = call i32 @dsa_tree_setup(%struct.dsa_switch_tree* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %22
  %37 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %38 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %37, i32 0, i32 0
  %39 = load %struct.dsa_switch**, %struct.dsa_switch*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %39, i64 %41
  store %struct.dsa_switch* null, %struct.dsa_switch** %42, align 8
  %43 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %44 = call i32 @dsa_tree_put(%struct.dsa_switch_tree* %43)
  br label %45

45:                                               ; preds = %36, %22
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @dsa_tree_get(%struct.dsa_switch_tree*) #1

declare dso_local i32 @dsa_tree_setup(%struct.dsa_switch_tree*) #1

declare dso_local i32 @dsa_tree_put(%struct.dsa_switch_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

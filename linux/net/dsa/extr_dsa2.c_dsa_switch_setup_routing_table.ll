; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_setup_routing_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_setup_routing_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.dsa_port*, i32* }
%struct.dsa_port = type { i32 }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@DSA_RTABLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @dsa_switch_setup_routing_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_setup_routing_table(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i32, i32* @DSA_RTABLE_NONE, align 4
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %11, i32* %17, align 4
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %25 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %30 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %29, i32 0, i32 1
  %31 = load %struct.dsa_port*, %struct.dsa_port** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %31, i64 %33
  store %struct.dsa_port* %34, %struct.dsa_port** %4, align 8
  %35 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %36 = call i64 @dsa_port_is_dsa(%struct.dsa_port* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %40 = call i32 @dsa_port_setup_routing_table(%struct.dsa_port* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %49

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %22

49:                                               ; preds = %43, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @dsa_port_is_dsa(%struct.dsa_port*) #1

declare dso_local i32 @dsa_port_setup_routing_table(%struct.dsa_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

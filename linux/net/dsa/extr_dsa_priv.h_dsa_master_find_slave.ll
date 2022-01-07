; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa_priv.h_dsa_master_find_slave.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa_priv.h_dsa_master_find_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dsa_port* }
%struct.dsa_port = type { i64, %struct.net_device*, %struct.dsa_switch_tree* }
%struct.dsa_switch_tree = type { %struct.dsa_switch** }
%struct.dsa_switch = type { i32, %struct.dsa_port* }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@DSA_PORT_TYPE_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net_device*, i32, i32)* @dsa_master_find_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @dsa_master_find_slave(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsa_port*, align 8
  %9 = alloca %struct.dsa_switch_tree*, align 8
  %10 = alloca %struct.dsa_switch*, align 8
  %11 = alloca %struct.dsa_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.dsa_port*, %struct.dsa_port** %13, align 8
  store %struct.dsa_port* %14, %struct.dsa_port** %8, align 8
  %15 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %16 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %15, i32 0, i32 2
  %17 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %16, align 8
  store %struct.dsa_switch_tree* %17, %struct.dsa_switch_tree** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %3
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %66

25:                                               ; preds = %20
  %26 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %9, align 8
  %27 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %26, i32 0, i32 0
  %28 = load %struct.dsa_switch**, %struct.dsa_switch*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %28, i64 %30
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %31, align 8
  store %struct.dsa_switch* %32, %struct.dsa_switch** %10, align 8
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %10, align 8
  %34 = icmp ne %struct.dsa_switch* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %66

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.dsa_switch*, %struct.dsa_switch** %10, align 8
  %42 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %36
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %66

46:                                               ; preds = %39
  %47 = load %struct.dsa_switch*, %struct.dsa_switch** %10, align 8
  %48 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %47, i32 0, i32 1
  %49 = load %struct.dsa_port*, %struct.dsa_port** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %49, i64 %51
  store %struct.dsa_port* %52, %struct.dsa_port** %11, align 8
  %53 = load %struct.dsa_port*, %struct.dsa_port** %11, align 8
  %54 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DSA_PORT_TYPE_USER, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.dsa_port*, %struct.dsa_port** %11, align 8
  %64 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %63, i32 0, i32 1
  %65 = load %struct.net_device*, %struct.net_device** %64, align 8
  store %struct.net_device* %65, %struct.net_device** %4, align 8
  br label %66

66:                                               ; preds = %62, %61, %45, %35, %24
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %67
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

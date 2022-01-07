; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_parse_ports.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_parse_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.dsa_port* }
%struct.dsa_port = type { i32 }
%struct.dsa_chip_data = type { i8**, %struct.device** }
%struct.device = type { i32 }

@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, %struct.dsa_chip_data*)* @dsa_switch_parse_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_parse_ports(%struct.dsa_switch* %0, %struct.dsa_chip_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_chip_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store %struct.dsa_chip_data* %1, %struct.dsa_chip_data** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %50, %2
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @DSA_MAX_PORTS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.dsa_chip_data*, %struct.dsa_chip_data** %5, align 8
  %18 = getelementptr inbounds %struct.dsa_chip_data, %struct.dsa_chip_data* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load %struct.dsa_chip_data*, %struct.dsa_chip_data** %5, align 8
  %25 = getelementptr inbounds %struct.dsa_chip_data, %struct.dsa_chip_data* %24, i32 0, i32 1
  %26 = load %struct.device**, %struct.device*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.device*, %struct.device** %26, i64 %28
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %8, align 8
  %31 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %32 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %31, i32 0, i32 0
  %33 = load %struct.dsa_port*, %struct.dsa_port** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %33, i64 %35
  store %struct.dsa_port* %36, %struct.dsa_port** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %16
  br label %50

40:                                               ; preds = %16
  %41 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i32 @dsa_port_parse(%struct.dsa_port* %41, i8* %42, %struct.device* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %12

53:                                               ; preds = %12
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DSA_MAX_PORTS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %56, %53
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %47
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @dsa_port_parse(%struct.dsa_port*, i8*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_mii_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_mii_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dsa slave smi\00", align 1
@dsa_slave_phy_read = common dso_local global i32 0, align 4
@dsa_slave_phy_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dsa-%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsa_slave_mii_bus_init(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %3 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %4 = bitcast %struct.dsa_switch* %3 to i8*
  %5 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %6 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i8* %4, i8** %8, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @dsa_slave_phy_read, align 4
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  store i32 %13, i32* %17, align 8
  %18 = load i32, i32* @dsa_slave_phy_write, align 4
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %20 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  store i32 %18, i32* %22, align 4
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %24 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %30 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %35 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snprintf(i32 %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %39 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %42 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 4
  %45 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %46 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %50 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

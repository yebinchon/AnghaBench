; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, i64 }

@dsa_devlink_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @dsa_switch_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %6 = call i32 @dsa_user_ports(%struct.dsa_switch* %5)
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = call i32* @devlink_alloc(i32* @dsa_devlink_ops, i32 0)
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %104

21:                                               ; preds = %1
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %23 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @devlink_register(i32* %24, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %96

32:                                               ; preds = %21
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %34 = call i32 @dsa_switch_register_notifier(%struct.dsa_switch* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %91

38:                                               ; preds = %32
  %39 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %40 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.dsa_switch*)**
  %44 = load i32 (%struct.dsa_switch*)*, i32 (%struct.dsa_switch*)** %43, align 8
  %45 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %46 = call i32 %44(%struct.dsa_switch* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %88

50:                                               ; preds = %38
  %51 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %52 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %50
  %56 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %57 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %64 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @devm_mdiobus_alloc(i32 %65)
  %67 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %68 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %70 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %88

76:                                               ; preds = %62
  %77 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %78 = call i32 @dsa_slave_mii_bus_init(%struct.dsa_switch* %77)
  %79 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %80 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mdiobus_register(i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %88

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %55, %50
  store i32 0, i32* %2, align 4
  br label %104

88:                                               ; preds = %85, %73, %49
  %89 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %90 = call i32 @dsa_switch_unregister_notifier(%struct.dsa_switch* %89)
  br label %91

91:                                               ; preds = %88, %37
  %92 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %93 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @devlink_unregister(i32* %94)
  br label %96

96:                                               ; preds = %91, %31
  %97 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %98 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @devlink_free(i32* %99)
  %101 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %102 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %96, %87, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @dsa_user_ports(%struct.dsa_switch*) #1

declare dso_local i32* @devlink_alloc(i32*, i32) #1

declare dso_local i32 @devlink_register(i32*, i32) #1

declare dso_local i32 @dsa_switch_register_notifier(%struct.dsa_switch*) #1

declare dso_local i32 @devm_mdiobus_alloc(i32) #1

declare dso_local i32 @dsa_slave_mii_bus_init(%struct.dsa_switch*) #1

declare dso_local i32 @mdiobus_register(i32) #1

declare dso_local i32 @dsa_switch_unregister_notifier(%struct.dsa_switch*) #1

declare dso_local i32 @devlink_unregister(i32*) #1

declare dso_local i32 @devlink_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

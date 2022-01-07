; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.dsa_slave_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dsa_switch*, i32, %struct.ifreq*)*, i32 (%struct.dsa_switch*, i32, %struct.ifreq*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @dsa_slave_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsa_slave_priv*, align 8
  %9 = alloca %struct.dsa_switch*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.dsa_slave_priv* %12, %struct.dsa_slave_priv** %8, align 8
  %13 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %8, align 8
  %14 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %16, align 8
  store %struct.dsa_switch* %17, %struct.dsa_switch** %9, align 8
  %18 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %8, align 8
  %19 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %60 [
    i32 129, label %24
    i32 128, label %42
  ]

24:                                               ; preds = %3
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dsa_switch*, i32, %struct.ifreq*)*, i32 (%struct.dsa_switch*, i32, %struct.ifreq*)** %28, align 8
  %30 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.ifreq*)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %33 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dsa_switch*, i32, %struct.ifreq*)*, i32 (%struct.dsa_switch*, i32, %struct.ifreq*)** %35, align 8
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %40 = call i32 %36(%struct.dsa_switch* %37, i32 %38, %struct.ifreq* %39)
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %24
  br label %60

42:                                               ; preds = %3
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %44 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32 (%struct.dsa_switch*, i32, %struct.ifreq*)*, i32 (%struct.dsa_switch*, i32, %struct.ifreq*)** %46, align 8
  %48 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.ifreq*)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %51 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32 (%struct.dsa_switch*, i32, %struct.ifreq*)*, i32 (%struct.dsa_switch*, i32, %struct.ifreq*)** %53, align 8
  %55 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %58 = call i32 %54(%struct.dsa_switch* %55, i32 %56, %struct.ifreq* %57)
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %3, %59, %41
  %61 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %8, align 8
  %62 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @phylink_mii_ioctl(i32 %65, %struct.ifreq* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %60, %49, %31
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phylink_mii_ioctl(i32, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

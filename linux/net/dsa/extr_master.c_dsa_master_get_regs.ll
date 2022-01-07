; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dsa_port* }
%struct.dsa_port = type { i32, %struct.dsa_switch*, %struct.ethtool_ops* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)* }
%struct.ethtool_ops = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ethtool_regs*, i8*)* }
%struct.ethtool_regs = type { i32 }
%struct.ethtool_drvinfo = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @dsa_master_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_master_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsa_port*, align 8
  %8 = alloca %struct.ethtool_ops*, align 8
  %9 = alloca %struct.dsa_switch*, align 8
  %10 = alloca %struct.ethtool_drvinfo*, align 8
  %11 = alloca %struct.ethtool_regs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.dsa_port*, %struct.dsa_port** %15, align 8
  store %struct.dsa_port* %16, %struct.dsa_port** %7, align 8
  %17 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %18 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %17, i32 0, i32 2
  %19 = load %struct.ethtool_ops*, %struct.ethtool_ops** %18, align 8
  store %struct.ethtool_ops* %19, %struct.ethtool_ops** %8, align 8
  %20 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %21 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %20, i32 0, i32 1
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %21, align 8
  store %struct.dsa_switch* %22, %struct.dsa_switch** %9, align 8
  %23 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %24 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %27 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %27, align 8
  %29 = icmp ne i32 (%struct.net_device*)* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %3
  %31 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %32 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %31, i32 0, i32 1
  %33 = load i32 (%struct.net_device*, %struct.ethtool_regs*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_regs*, i8*)** %32, align 8
  %34 = icmp ne i32 (%struct.net_device*, %struct.ethtool_regs*, i8*)* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %37 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 %38(%struct.net_device* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %113

44:                                               ; preds = %35
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %49 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %48, i32 0, i32 1
  %50 = load i32 (%struct.net_device*, %struct.ethtool_regs*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_regs*, i8*)** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 %50(%struct.net_device* %51, %struct.ethtool_regs* %52, i8* %53)
  %55 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %44, %30, %3
  %62 = load i8*, i8** %6, align 8
  %63 = bitcast i8* %62 to %struct.ethtool_drvinfo*
  store %struct.ethtool_drvinfo* %63, %struct.ethtool_drvinfo** %10, align 8
  %64 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %10, align 8
  %65 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strlcpy(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr i8, i8* %68, i64 4
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = bitcast i8* %70 to %struct.ethtool_regs*
  store %struct.ethtool_regs* %71, %struct.ethtool_regs** %11, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr i8, i8* %72, i64 4
  store i8* %73, i8** %6, align 8
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %75 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.dsa_switch*, i32)* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %61
  %81 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %82 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)** %84, align 8
  %86 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)* %85, null
  br i1 %86, label %87, label %113

87:                                               ; preds = %80
  %88 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %89 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %91, align 8
  %93 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 %92(%struct.dsa_switch* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %113

99:                                               ; preds = %87
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.ethtool_regs*, %struct.ethtool_regs** %11, align 8
  %102 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %104 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)** %106, align 8
  %108 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.ethtool_regs*, %struct.ethtool_regs** %11, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 %107(%struct.dsa_switch* %108, i32 %109, %struct.ethtool_regs* %110, i8* %111)
  br label %113

113:                                              ; preds = %43, %98, %99, %80, %61
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

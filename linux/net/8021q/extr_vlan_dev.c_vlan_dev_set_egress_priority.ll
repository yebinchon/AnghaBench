; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_set_egress_priority.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_set_egress_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_priv = type { i32, %struct.vlan_priority_tci_mapping** }
%struct.vlan_priority_tci_mapping = type { i32, i32, %struct.vlan_priority_tci_mapping* }

@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_dev_set_egress_priority(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlan_dev_priv*, align 8
  %9 = alloca %struct.vlan_priority_tci_mapping*, align 8
  %10 = alloca %struct.vlan_priority_tci_mapping*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %12)
  store %struct.vlan_dev_priv* %13, %struct.vlan_dev_priv** %8, align 8
  store %struct.vlan_priority_tci_mapping* null, %struct.vlan_priority_tci_mapping** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %20 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %19, i32 0, i32 1
  %21 = load %struct.vlan_priority_tci_mapping**, %struct.vlan_priority_tci_mapping*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %21, i64 %24
  %26 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %25, align 8
  store %struct.vlan_priority_tci_mapping* %26, %struct.vlan_priority_tci_mapping** %9, align 8
  br label %27

27:                                               ; preds = %67, %3
  %28 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %9, align 8
  %29 = icmp ne %struct.vlan_priority_tci_mapping* %28, null
  br i1 %29, label %30, label %71

30:                                               ; preds = %27
  %31 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %9, align 8
  %32 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %9, align 8
  %38 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %46 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  br label %63

49:                                               ; preds = %41, %36
  %50 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %9, align 8
  %51 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %59 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %54, %49
  br label %63

63:                                               ; preds = %62, %44
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %9, align 8
  %66 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %114

67:                                               ; preds = %30
  %68 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %9, align 8
  %69 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %68, i32 0, i32 2
  %70 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %69, align 8
  store %struct.vlan_priority_tci_mapping* %70, %struct.vlan_priority_tci_mapping** %9, align 8
  br label %27

71:                                               ; preds = %27
  %72 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %73 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %72, i32 0, i32 1
  %74 = load %struct.vlan_priority_tci_mapping**, %struct.vlan_priority_tci_mapping*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 15
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %74, i64 %77
  %79 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %78, align 8
  store %struct.vlan_priority_tci_mapping* %79, %struct.vlan_priority_tci_mapping** %9, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.vlan_priority_tci_mapping* @kmalloc(i32 16, i32 %80)
  store %struct.vlan_priority_tci_mapping* %81, %struct.vlan_priority_tci_mapping** %10, align 8
  %82 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %10, align 8
  %83 = icmp ne %struct.vlan_priority_tci_mapping* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %71
  %85 = load i32, i32* @ENOBUFS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %114

87:                                               ; preds = %71
  %88 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %9, align 8
  %89 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %10, align 8
  %90 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %89, i32 0, i32 2
  store %struct.vlan_priority_tci_mapping* %88, %struct.vlan_priority_tci_mapping** %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %10, align 8
  %93 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %10, align 8
  %96 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = call i32 (...) @smp_wmb()
  %98 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %10, align 8
  %99 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %100 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %99, i32 0, i32 1
  %101 = load %struct.vlan_priority_tci_mapping**, %struct.vlan_priority_tci_mapping*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 15
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %101, i64 %104
  store %struct.vlan_priority_tci_mapping* %98, %struct.vlan_priority_tci_mapping** %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %87
  %109 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %110 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %108, %87
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %84, %63
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local %struct.vlan_priority_tci_mapping* @kmalloc(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

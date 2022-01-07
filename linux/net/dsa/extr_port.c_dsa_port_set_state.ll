; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, i64, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32, i64)* }
%struct.switchdev_trans = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@BR_STATE_BLOCKING = common dso_local global i64 0, align 8
@BR_STATE_LISTENING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_set_state(%struct.dsa_port* %0, i64 %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.dsa_switch*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 2
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %8, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %17 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.dsa_switch*, i32, i64)*, i32 (%struct.dsa_switch*, i32, i64)** %23, align 8
  %25 = icmp ne i32 (%struct.dsa_switch*, i32, i64)* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %27 ]
  store i32 %31, i32* %4, align 4
  br label %94

32:                                               ; preds = %3
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %34 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (%struct.dsa_switch*, i32, i64)*, i32 (%struct.dsa_switch*, i32, i64)** %36, align 8
  %38 = icmp ne i32 (%struct.dsa_switch*, i32, i64)* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %41 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.dsa_switch*, i32, i64)*, i32 (%struct.dsa_switch*, i32, i64)** %43, align 8
  %45 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* %6, align 8
  %48 = call i32 %44(%struct.dsa_switch* %45, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %39, %32
  %50 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %51 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.dsa_switch*, i32)* %54, null
  br i1 %55, label %56, label %90

56:                                               ; preds = %49
  %57 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %58 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BR_STATE_LEARNING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %64 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62, %56
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @BR_STATE_DISABLED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @BR_STATE_LISTENING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76, %72, %68
  %81 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %82 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %84, align 8
  %86 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 %85(%struct.dsa_switch* %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %76, %62
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %93 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %30
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

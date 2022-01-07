; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_mdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_mdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32)* }
%struct.dsa_notifier_mdb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, %struct.dsa_notifier_mdb_info*)* @dsa_switch_mdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_mdb_add(%struct.dsa_switch* %0, %struct.dsa_notifier_mdb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_notifier_mdb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store %struct.dsa_notifier_mdb_info* %1, %struct.dsa_notifier_mdb_info** %5, align 8
  %7 = load %struct.dsa_notifier_mdb_info*, %struct.dsa_notifier_mdb_info** %5, align 8
  %8 = getelementptr inbounds %struct.dsa_notifier_mdb_info, %struct.dsa_notifier_mdb_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @switchdev_trans_ph_prepare(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %14 = load %struct.dsa_notifier_mdb_info*, %struct.dsa_notifier_mdb_info** %5, align 8
  %15 = call i32 @dsa_switch_mdb_prepare(%struct.dsa_switch* %13, %struct.dsa_notifier_mdb_info* %14)
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %18 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.dsa_switch*, i32, i32)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %54

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %28 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dsa_notifier_mdb_info*, %struct.dsa_notifier_mdb_info** %5, align 8
  %35 = call i64 @dsa_switch_mdb_match(%struct.dsa_switch* %32, i32 %33, %struct.dsa_notifier_mdb_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %39 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32)** %41, align 8
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.dsa_notifier_mdb_info*, %struct.dsa_notifier_mdb_info** %5, align 8
  %46 = getelementptr inbounds %struct.dsa_notifier_mdb_info, %struct.dsa_notifier_mdb_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %42(%struct.dsa_switch* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %37, %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %25

53:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %23, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @switchdev_trans_ph_prepare(i32) #1

declare dso_local i32 @dsa_switch_mdb_prepare(%struct.dsa_switch*, %struct.dsa_notifier_mdb_info*) #1

declare dso_local i64 @dsa_switch_mdb_match(%struct.dsa_switch*, i32, %struct.dsa_notifier_mdb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

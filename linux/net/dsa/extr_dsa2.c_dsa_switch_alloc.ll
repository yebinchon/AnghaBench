; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i64, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32, %struct.dsa_switch* }
%struct.device = type { i32 }

@ports = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsa_switch* @dsa_switch_alloc(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %10 = load i32, i32* @ports, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @struct_size(%struct.dsa_switch* %9, i32 %10, i64 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dsa_switch* @devm_kzalloc(%struct.device* %8, i32 %12, i32 %13)
  store %struct.dsa_switch* %14, %struct.dsa_switch** %6, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %16 = icmp ne %struct.dsa_switch* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.dsa_switch* null, %struct.dsa_switch** %3, align 8
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 2
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %24 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %49, %18
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %29 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %35 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 8
  %41 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %43 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.dsa_switch* %41, %struct.dsa_switch** %48, align 8
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  store %struct.dsa_switch* %53, %struct.dsa_switch** %3, align 8
  br label %54

54:                                               ; preds = %52, %17
  %55 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  ret %struct.dsa_switch* %55
}

declare dso_local %struct.dsa_switch* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.dsa_switch*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

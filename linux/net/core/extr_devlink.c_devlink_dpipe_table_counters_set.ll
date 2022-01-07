; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_counters_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_counters_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_dpipe_table = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i8*, i32)* @devlink_dpipe_table_counters_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_table_counters_set(%struct.devlink* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.devlink_dpipe_table*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.devlink*, %struct.devlink** %5, align 8
  %10 = getelementptr inbounds %struct.devlink, %struct.devlink* %9, i32 0, i32 0
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.devlink_dpipe_table* @devlink_dpipe_table_find(i32* %10, i8* %11)
  store %struct.devlink_dpipe_table* %12, %struct.devlink_dpipe_table** %8, align 8
  %13 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %8, align 8
  %14 = icmp ne %struct.devlink_dpipe_table* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %8, align 8
  %20 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %56

26:                                               ; preds = %18
  %27 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %8, align 8
  %28 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = xor i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %8, align 8
  %37 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %8, align 8
  %39 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = icmp ne i32 (i32, i32)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %8, align 8
  %46 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %8, align 8
  %51 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 %49(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %44, %34
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %33, %23, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.devlink_dpipe_table* @devlink_dpipe_table_find(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

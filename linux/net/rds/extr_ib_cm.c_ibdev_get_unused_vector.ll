; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_ibdev_get_unused_vector.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_ibdev_get_unused_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_ib_device*)* @ibdev_get_unused_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibdev_get_unused_vector(%struct.rds_ib_device* %0) #0 {
  %2 = alloca %struct.rds_ib_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %2, align 8
  %6 = load %struct.rds_ib_device*, %struct.rds_ib_device** %2, align 8
  %7 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.rds_ib_device*, %struct.rds_ib_device** %2, align 8
  %10 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %8, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.rds_ib_device*, %struct.rds_ib_device** %2, align 8
  %19 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load %struct.rds_ib_device*, %struct.rds_ib_device** %2, align 8
  %25 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %53, %1
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.rds_ib_device*, %struct.rds_ib_device** %2, align 8
  %35 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %4, align 4
  %45 = load %struct.rds_ib_device*, %struct.rds_ib_device** %2, align 8
  %46 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %5, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load %struct.rds_ib_device*, %struct.rds_ib_device** %2, align 8
  %58 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

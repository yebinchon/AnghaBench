; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_am_i_a_router.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_am_i_a_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_neigh = type { i64, i32 }
%struct.dn_dev = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.dn_ifaddr = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@DRDELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_neigh*, %struct.dn_dev*, %struct.dn_ifaddr*)* @dn_am_i_a_router to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_am_i_a_router(%struct.dn_neigh* %0, %struct.dn_dev* %1, %struct.dn_ifaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_neigh*, align 8
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca %struct.dn_ifaddr*, align 8
  store %struct.dn_neigh* %0, %struct.dn_neigh** %5, align 8
  store %struct.dn_dev* %1, %struct.dn_dev** %6, align 8
  store %struct.dn_ifaddr* %2, %struct.dn_ifaddr** %7, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %10 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DRDELAY, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @time_before(i32 %8, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %19 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %55

23:                                               ; preds = %17
  %24 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %25 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %28 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %55

33:                                               ; preds = %23
  %34 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %35 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %38 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %55

43:                                               ; preds = %33
  %44 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %45 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %49 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53, %42, %32, %22, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

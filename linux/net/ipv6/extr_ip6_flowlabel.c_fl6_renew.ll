; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_flowlabel.c_fl6_renew.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_flowlabel.c_fl6_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { i64, i64, i64 }

@EPERM = common dso_local global i32 0, align 4
@ip6_fl_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_flowlabel*, i64, i64)* @fl6_renew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl6_renew(%struct.ip6_flowlabel* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_flowlabel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ip6_flowlabel* %0, %struct.ip6_flowlabel** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @check_linger(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %70

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @check_linger(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %15
  %24 = call i32 @spin_lock_bh(i32* @ip6_fl_lock)
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %27 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %29 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @time_before(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %37 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %41 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @time_before(i64 %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %47 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %51 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %54 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = call i64 @time_before(i64 %52, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %62 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %63, %64
  %66 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %67 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %49
  %69 = call i32 @spin_unlock_bh(i32* @ip6_fl_lock)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %20, %12
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @check_linger(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

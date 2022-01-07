; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_mss_from_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_mss_from_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_dev = type { i64 }

@DN_MAX_NSP_DATA_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_mss_from_pmtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DN_MAX_NSP_DATA_HEADER, align 4
  %8 = sub nsw i32 230, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dn_dev* @rcu_dereference_raw(i32 %14)
  store %struct.dn_dev* %15, %struct.dn_dev** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %16)
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %23 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 21
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %11
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 6
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @DN_MAX_NSP_DATA_HEADER, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load i32, i32* @DN_MAX_NSP_DATA_HEADER, align 4
  %38 = add nsw i32 21, %37
  %39 = add nsw i32 %38, 16
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.dn_dev* @rcu_dereference_raw(i32) #1

declare dso_local i64 @LL_RESERVED_SPACE(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

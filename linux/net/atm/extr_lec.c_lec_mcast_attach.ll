; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_mcast_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_mcast_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i64 }

@MAX_LEC_ITF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dev_lec = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @lec_mcast_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lec_mcast_attach(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAX_LEC_ITF, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAX_LEC_ITF, align 4
  %18 = call i32 @array_index_nospec(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i64*, i64** @dev_lec, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %15
  %29 = load i64*, i64** @dev_lec, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %35 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64*, i64** @dev_lec, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @netdev_priv(i64 %40)
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %43 = call i32 @lec_mcast_make(i32 %41, %struct.atm_vcc* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %28, %25, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local i32 @lec_mcast_make(i32, %struct.atm_vcc*) #1

declare dso_local i32 @netdev_priv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

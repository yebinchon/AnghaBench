; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_common.c_adjust_tp.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_common.c_adjust_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_trafprm = type { i32, i64, i32 }

@ATM_CELL_SIZE = common dso_local global i32 0, align 4
@ATM_MAX_AAL34_PDU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"AAL problems ... (%d)\0A\00", align 1
@ATM_MAX_AAL5_PDU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATM_MAX_CDV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_trafprm*, i8)* @adjust_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_tp(%struct.atm_trafprm* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_trafprm*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.atm_trafprm* %0, %struct.atm_trafprm** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %8 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %20 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %23
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* @ATM_CELL_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @ATM_MAX_AAL34_PDU, align 4
  store i32 %19, i32* %6, align 4
  br label %25

20:                                               ; preds = %12
  %21 = load i8, i8* %5, align 1
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 zeroext %21)
  br label %23

23:                                               ; preds = %12, %20
  %24 = load i32, i32* @ATM_MAX_AAL5_PDU, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %18, %15
  %26 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %27 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %33 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %44

34:                                               ; preds = %25
  %35 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %36 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %46 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @ATM_MAX_CDV, align 8
  %51 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %52 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %40, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @pr_warn(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

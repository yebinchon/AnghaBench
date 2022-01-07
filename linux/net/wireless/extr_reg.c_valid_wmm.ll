; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_valid_wmm.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_valid_wmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdb_wmm_rule = type { i32 }
%struct.fwdb_wmm_ac = type { i32, i32 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwdb_wmm_rule*)* @valid_wmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_wmm(%struct.fwdb_wmm_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwdb_wmm_rule*, align 8
  %4 = alloca %struct.fwdb_wmm_ac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fwdb_wmm_rule* %0, %struct.fwdb_wmm_rule** %3, align 8
  %9 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %3, align 8
  %10 = bitcast %struct.fwdb_wmm_rule* %9 to %struct.fwdb_wmm_ac*
  store %struct.fwdb_wmm_ac* %10, %struct.fwdb_wmm_ac** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %14 = mul nsw i32 %13, 2
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %11
  %17 = load %struct.fwdb_wmm_ac*, %struct.fwdb_wmm_ac** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.fwdb_wmm_ac, %struct.fwdb_wmm_ac* %17, i64 %19
  %21 = getelementptr inbounds %struct.fwdb_wmm_ac, %struct.fwdb_wmm_ac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 240
  %24 = ashr i32 %23, 4
  %25 = call i64 @ecw2cw(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.fwdb_wmm_ac*, %struct.fwdb_wmm_ac** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.fwdb_wmm_ac, %struct.fwdb_wmm_ac* %26, i64 %28
  %30 = getelementptr inbounds %struct.fwdb_wmm_ac, %struct.fwdb_wmm_ac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = call i64 @ecw2cw(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.fwdb_wmm_ac*, %struct.fwdb_wmm_ac** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fwdb_wmm_ac, %struct.fwdb_wmm_ac* %34, i64 %36
  %38 = getelementptr inbounds %struct.fwdb_wmm_ac, %struct.fwdb_wmm_ac* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %53

44:                                               ; preds = %16
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %11

52:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %47, %43
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @ecw2cw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

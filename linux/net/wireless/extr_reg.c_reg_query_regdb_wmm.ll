; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_query_regdb_wmm.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_query_regdb_wmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdb_header = type { %struct.fwdb_country* }
%struct.fwdb_country = type { i32, i64 }
%struct.ieee80211_reg_rule = type { i32 }

@regdb = common dso_local global %struct.fwdb_header* null, align 8
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_query_regdb_wmm(i8* %0, i32 %1, %struct.ieee80211_reg_rule* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_reg_rule*, align 8
  %8 = alloca %struct.fwdb_header*, align 8
  %9 = alloca %struct.fwdb_country*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_reg_rule* %2, %struct.ieee80211_reg_rule** %7, align 8
  %10 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  store %struct.fwdb_header* %10, %struct.fwdb_header** %8, align 8
  %11 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  %12 = icmp ne %struct.fwdb_header* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODATA, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  %18 = call i64 @IS_ERR(%struct.fwdb_header* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  %22 = call i32 @PTR_ERR(%struct.fwdb_header* %21)
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %16
  %24 = load %struct.fwdb_header*, %struct.fwdb_header** %8, align 8
  %25 = getelementptr inbounds %struct.fwdb_header, %struct.fwdb_header* %24, i32 0, i32 0
  %26 = load %struct.fwdb_country*, %struct.fwdb_country** %25, align 8
  %27 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %26, i64 0
  store %struct.fwdb_country* %27, %struct.fwdb_country** %9, align 8
  br label %28

28:                                               ; preds = %46, %23
  %29 = load %struct.fwdb_country*, %struct.fwdb_country** %9, align 8
  %30 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.fwdb_country*, %struct.fwdb_country** %9, align 8
  %36 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @alpha2_equal(i8* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  %42 = load %struct.fwdb_country*, %struct.fwdb_country** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %45 = call i32 @__regdb_query_wmm(%struct.fwdb_header* %41, %struct.fwdb_country* %42, i32 %43, %struct.ieee80211_reg_rule* %44)
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %33
  %47 = load %struct.fwdb_country*, %struct.fwdb_country** %9, align 8
  %48 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %47, i32 1
  store %struct.fwdb_country* %48, %struct.fwdb_country** %9, align 8
  br label %28

49:                                               ; preds = %28
  %50 = load i32, i32* @ENODATA, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %40, %20, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @IS_ERR(%struct.fwdb_header*) #1

declare dso_local i32 @PTR_ERR(%struct.fwdb_header*) #1

declare dso_local i64 @alpha2_equal(i8*, i32) #1

declare dso_local i32 @__regdb_query_wmm(%struct.fwdb_header*, %struct.fwdb_country*, i32, %struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

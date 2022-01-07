; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_tc_index_get_from_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_tc_index_get_from_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_sb = type { i64, i64 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_SB_TC_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_SB_POOL_TYPE_INGRESS = common dso_local global i32 0, align 4
@DEVLINK_SB_POOL_TYPE_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_sb*, %struct.nlattr**, i32, i64*)* @devlink_sb_tc_index_get_from_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_sb_tc_index_get_from_attrs(%struct.devlink_sb* %0, %struct.nlattr** %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_sb*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.devlink_sb* %0, %struct.devlink_sb** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %12 = load i64, i64* @DEVLINK_ATTR_SB_TC_INDEX, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load i64, i64* @DEVLINK_ATTR_SB_TC_INDEX, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i64 @nla_get_u16(%struct.nlattr* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DEVLINK_SB_POOL_TYPE_INGRESS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.devlink_sb*, %struct.devlink_sb** %6, align 8
  %31 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %53

37:                                               ; preds = %28, %19
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DEVLINK_SB_POOL_TYPE_EGRESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.devlink_sb*, %struct.devlink_sb** %6, align 8
  %44 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %41, %37
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %47, %34, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

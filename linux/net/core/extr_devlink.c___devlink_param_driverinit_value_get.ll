; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_param_driverinit_value_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_param_driverinit_value_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%union.devlink_param_value = type { i32 }
%struct.devlink_param_item = type { %union.devlink_param_value, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_PARAM_CMODE_DRIVERINIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_PARAM_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32, %union.devlink_param_value*)* @__devlink_param_driverinit_value_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__devlink_param_driverinit_value_get(%struct.list_head* %0, i32 %1, %union.devlink_param_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.devlink_param_value*, align 8
  %8 = alloca %struct.devlink_param_item*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.devlink_param_value* %2, %union.devlink_param_value** %7, align 8
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.devlink_param_item* @devlink_param_find_by_id(%struct.list_head* %9, i32 %10)
  store %struct.devlink_param_item* %11, %struct.devlink_param_item** %8, align 8
  %12 = load %struct.devlink_param_item*, %struct.devlink_param_item** %8, align 8
  %13 = icmp ne %struct.devlink_param_item* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.devlink_param_item*, %struct.devlink_param_item** %8, align 8
  %19 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.devlink_param_item*, %struct.devlink_param_item** %8, align 8
  %24 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* @DEVLINK_PARAM_CMODE_DRIVERINIT, align 4
  %27 = call i32 @devlink_param_cmode_is_supported(%struct.TYPE_2__* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %22
  %33 = load %struct.devlink_param_item*, %struct.devlink_param_item** %8, align 8
  %34 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEVLINK_PARAM_TYPE_STRING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %42 = bitcast %union.devlink_param_value* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.devlink_param_item*, %struct.devlink_param_item** %8, align 8
  %45 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %44, i32 0, i32 0
  %46 = bitcast %union.devlink_param_value* %45 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strcpy(i32 %43, i32 %47)
  br label %55

49:                                               ; preds = %32
  %50 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %51 = load %struct.devlink_param_item*, %struct.devlink_param_item** %8, align 8
  %52 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %51, i32 0, i32 0
  %53 = bitcast %union.devlink_param_value* %50 to i8*
  %54 = bitcast %union.devlink_param_value* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 8 %54, i64 4, i1 false)
  br label %55

55:                                               ; preds = %49, %40
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %29, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.devlink_param_item* @devlink_param_find_by_id(%struct.list_head*, i32) #1

declare dso_local i32 @devlink_param_cmode_is_supported(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

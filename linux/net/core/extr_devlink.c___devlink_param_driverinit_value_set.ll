; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_param_driverinit_value_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_param_driverinit_value_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.list_head = type { i32 }
%union.devlink_param_value = type { i32 }
%struct.devlink_param_item = type { i32, %union.devlink_param_value, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_PARAM_CMODE_DRIVERINIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_PARAM_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.list_head*, i32, i32, i32)* @__devlink_param_driverinit_value_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__devlink_param_driverinit_value_set(%struct.devlink* %0, i32 %1, %struct.list_head* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.devlink_param_value, align 4
  %9 = alloca %struct.devlink*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.devlink_param_item*, align 8
  %15 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %8, i32 0, i32 0
  store i32 %4, i32* %15, align 4
  store %struct.devlink* %0, %struct.devlink** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.list_head* %2, %struct.list_head** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.list_head*, %struct.list_head** %11, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call %struct.devlink_param_item* @devlink_param_find_by_id(%struct.list_head* %16, i32 %17)
  store %struct.devlink_param_item* %18, %struct.devlink_param_item** %14, align 8
  %19 = load %struct.devlink_param_item*, %struct.devlink_param_item** %14, align 8
  %20 = icmp ne %struct.devlink_param_item* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %63

24:                                               ; preds = %6
  %25 = load %struct.devlink_param_item*, %struct.devlink_param_item** %14, align 8
  %26 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @DEVLINK_PARAM_CMODE_DRIVERINIT, align 4
  %29 = call i32 @devlink_param_cmode_is_supported(%struct.TYPE_2__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %63

34:                                               ; preds = %24
  %35 = load %struct.devlink_param_item*, %struct.devlink_param_item** %14, align 8
  %36 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DEVLINK_PARAM_TYPE_STRING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.devlink_param_item*, %struct.devlink_param_item** %14, align 8
  %44 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %43, i32 0, i32 1
  %45 = bitcast %union.devlink_param_value* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.devlink_param_value* %8 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcpy(i32 %46, i32 %48)
  br label %55

50:                                               ; preds = %34
  %51 = load %struct.devlink_param_item*, %struct.devlink_param_item** %14, align 8
  %52 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %51, i32 0, i32 1
  %53 = bitcast %union.devlink_param_value* %52 to i8*
  %54 = bitcast %union.devlink_param_value* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  br label %55

55:                                               ; preds = %50, %42
  %56 = load %struct.devlink_param_item*, %struct.devlink_param_item** %14, align 8
  %57 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.devlink*, %struct.devlink** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.devlink_param_item*, %struct.devlink_param_item** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @devlink_param_notify(%struct.devlink* %58, i32 %59, %struct.devlink_param_item* %60, i32 %61)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %31, %21
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.devlink_param_item* @devlink_param_find_by_id(%struct.list_head*, i32) #1

declare dso_local i32 @devlink_param_cmode_is_supported(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devlink_param_notify(%struct.devlink*, i32, %struct.devlink_param_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

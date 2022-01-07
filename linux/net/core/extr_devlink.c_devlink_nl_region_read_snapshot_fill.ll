; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_region_read_snapshot_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_region_read_snapshot_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_region = type { i64 }
%struct.nlattr = type { i32 }
%struct.devlink_snapshot = type { i32* }

@DEVLINK_ATTR_REGION_SNAPSHOT_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_REGION_READ_CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_region*, %struct.nlattr**, i64, i64, i32, i64*)* @devlink_nl_region_read_snapshot_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_region_read_snapshot_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_region* %2, %struct.nlattr** %3, i64 %4, i64 %5, i32 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.devlink*, align 8
  %12 = alloca %struct.devlink_region*, align 8
  %13 = alloca %struct.nlattr**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca %struct.devlink_snapshot*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.devlink* %1, %struct.devlink** %11, align 8
  store %struct.devlink_region* %2, %struct.devlink_region** %12, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i64* %7, i64** %17, align 8
  %24 = load i64, i64* %14, align 8
  store i64 %24, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %25 = load i64, i64* %14, align 8
  %26 = load i64*, i64** %17, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %28 = load i64, i64* @DEVLINK_ATTR_REGION_SNAPSHOT_ID, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i64 @nla_get_u32(%struct.nlattr* %30)
  store i64 %31, i64* %20, align 8
  %32 = load %struct.devlink_region*, %struct.devlink_region** %12, align 8
  %33 = load i64, i64* %20, align 8
  %34 = call %struct.devlink_snapshot* @devlink_region_snapshot_get_by_id(%struct.devlink_region* %32, i64 %33)
  store %struct.devlink_snapshot* %34, %struct.devlink_snapshot** %18, align 8
  %35 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %18, align 8
  %36 = icmp ne %struct.devlink_snapshot* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %93

40:                                               ; preds = %8
  %41 = load i64, i64* %15, align 8
  %42 = load %struct.devlink_region*, %struct.devlink_region** %12, align 8
  %43 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %40
  %50 = load %struct.devlink_region*, %struct.devlink_region** %12, align 8
  %51 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %54
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %19, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i64, i64* @DEVLINK_REGION_READ_CHUNK_SIZE, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %19, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %22, align 8
  br label %70

68:                                               ; preds = %58
  %69 = load i64, i64* @DEVLINK_REGION_READ_CHUNK_SIZE, align 8
  store i64 %69, i64* %22, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %18, align 8
  %72 = getelementptr inbounds %struct.devlink_snapshot, %struct.devlink_snapshot* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %19, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %23, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load %struct.devlink*, %struct.devlink** %11, align 8
  %78 = load i32*, i32** %23, align 8
  %79 = load i64, i64* %22, align 8
  %80 = load i64, i64* %19, align 8
  %81 = call i32 @devlink_nl_cmd_region_read_chunk_fill(%struct.sk_buff* %76, %struct.devlink* %77, i32* %78, i64 %79, i64 %80)
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %89

85:                                               ; preds = %70
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %19, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %19, align 8
  br label %54

89:                                               ; preds = %84, %54
  %90 = load i64, i64* %19, align 8
  %91 = load i64*, i64** %17, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* %21, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %37
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.devlink_snapshot* @devlink_region_snapshot_get_by_id(%struct.devlink_region*, i64) #1

declare dso_local i32 @devlink_nl_cmd_region_read_chunk_fill(%struct.sk_buff*, %struct.devlink*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

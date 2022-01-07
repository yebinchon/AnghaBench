; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_value_get_from_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_value_get_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_param = type { i32 }
%struct.genl_info = type { i64* }
%union.devlink_param_value = type { i32 }

@DEVLINK_ATTR_PARAM_VALUE_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@__DEVLINK_PARAM_MAX_STRING_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_param*, %struct.genl_info*, %union.devlink_param_value*)* @devlink_param_value_get_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_param_value_get_from_info(%struct.devlink_param* %0, %struct.genl_info* %1, %union.devlink_param_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_param*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %union.devlink_param_value*, align 8
  %8 = alloca i32, align 4
  store %struct.devlink_param* %0, %struct.devlink_param** %5, align 8
  store %struct.genl_info* %1, %struct.genl_info** %6, align 8
  store %union.devlink_param_value* %2, %union.devlink_param_value** %7, align 8
  %9 = load %struct.devlink_param*, %struct.devlink_param** %5, align 8
  %10 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 132
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %115

24:                                               ; preds = %13, %3
  %25 = load %struct.devlink_param*, %struct.devlink_param** %5, align 8
  %26 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %114 [
    i32 128, label %28
    i32 130, label %38
    i32 129, label %48
    i32 131, label %58
    i32 132, label %102
  ]

28:                                               ; preds = %24
  %29 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @nla_get_u8(i64 %34)
  %36 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %37 = bitcast %union.devlink_param_value* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %114

38:                                               ; preds = %24
  %39 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @nla_get_u16(i64 %44)
  %46 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %47 = bitcast %union.devlink_param_value* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %114

48:                                               ; preds = %24
  %49 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @nla_get_u32(i64 %54)
  %56 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %57 = bitcast %union.devlink_param_value* %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %114

58:                                               ; preds = %24
  %59 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @nla_data(i64 %64)
  %66 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %67 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @nla_len(i64 %71)
  %73 = call i32 @strnlen(i32 %65, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @nla_len(i64 %80)
  %82 = icmp eq i32 %74, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %58
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @__DEVLINK_PARAM_MAX_STRING_VALUE, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %58
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %115

90:                                               ; preds = %83
  %91 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %92 = bitcast %union.devlink_param_value* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @nla_data(i64 %99)
  %101 = call i32 @strcpy(i32 %93, i32 %100)
  br label %114

102:                                              ; preds = %24
  %103 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %113 = bitcast %union.devlink_param_value* %112 to i32*
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %24, %102, %90, %48, %38, %28
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %87, %21
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

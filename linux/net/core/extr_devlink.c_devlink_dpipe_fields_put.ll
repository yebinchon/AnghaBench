; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_fields_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_fields_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_header = type { i32, %struct.devlink_dpipe_field* }
%struct.devlink_dpipe_field = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_DPIPE_FIELD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_FIELD_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_FIELD_ID = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_FIELD_BITWIDTH = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_FIELD_MAPPING_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink_dpipe_header*)* @devlink_dpipe_fields_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_fields_put(%struct.sk_buff* %0, %struct.devlink_dpipe_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.devlink_dpipe_header*, align 8
  %6 = alloca %struct.devlink_dpipe_field*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.devlink_dpipe_header* %1, %struct.devlink_dpipe_header** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %67, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %5, align 8
  %12 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %9
  %16 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %5, align 8
  %17 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %16, i32 0, i32 1
  %18 = load %struct.devlink_dpipe_field*, %struct.devlink_dpipe_field** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.devlink_dpipe_field, %struct.devlink_dpipe_field* %18, i64 %20
  store %struct.devlink_dpipe_field* %21, %struct.devlink_dpipe_field** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @DEVLINK_ATTR_DPIPE_FIELD, align 4
  %24 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %22, i32 %23)
  store %struct.nlattr* %24, %struct.nlattr** %7, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %15
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @DEVLINK_ATTR_DPIPE_FIELD_NAME, align 4
  %33 = load %struct.devlink_dpipe_field*, %struct.devlink_dpipe_field** %6, align 8
  %34 = getelementptr inbounds %struct.devlink_dpipe_field, %struct.devlink_dpipe_field* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_string(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @DEVLINK_ATTR_DPIPE_FIELD_ID, align 4
  %41 = load %struct.devlink_dpipe_field*, %struct.devlink_dpipe_field** %6, align 8
  %42 = getelementptr inbounds %struct.devlink_dpipe_field, %struct.devlink_dpipe_field* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @DEVLINK_ATTR_DPIPE_FIELD_BITWIDTH, align 4
  %49 = load %struct.devlink_dpipe_field*, %struct.devlink_dpipe_field** %6, align 8
  %50 = getelementptr inbounds %struct.devlink_dpipe_field, %struct.devlink_dpipe_field* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i32, i32* @DEVLINK_ATTR_DPIPE_FIELD_MAPPING_TYPE, align 4
  %57 = load %struct.devlink_dpipe_field*, %struct.devlink_dpipe_field** %6, align 8
  %58 = getelementptr inbounds %struct.devlink_dpipe_field, %struct.devlink_dpipe_field* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54, %46, %38, %30
  br label %71

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %66 = call i32 @nla_nest_end(%struct.sk_buff* %64, %struct.nlattr* %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %9

70:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %74 = call i32 @nla_nest_cancel(%struct.sk_buff* %72, %struct.nlattr* %73)
  %75 = load i32, i32* @EMSGSIZE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %70, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

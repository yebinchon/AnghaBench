; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_header_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_header_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_header = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_DPIPE_HEADER = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADER_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADER_ID = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADER_GLOBAL = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADER_FIELDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink_dpipe_header*)* @devlink_dpipe_header_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_header_put(%struct.sk_buff* %0, %struct.devlink_dpipe_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.devlink_dpipe_header*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.devlink_dpipe_header* %1, %struct.devlink_dpipe_header** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %7, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER_NAME, align 4
  %20 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %5, align 8
  %21 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nla_put_string(%struct.sk_buff* %18, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER_ID, align 4
  %28 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %5, align 8
  %29 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @nla_put_u32(%struct.sk_buff* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER_GLOBAL, align 4
  %36 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %5, align 8
  %37 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_put_u8(%struct.sk_buff* %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %25, %17
  br label %66

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER_FIELDS, align 4
  %45 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %6, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %66

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %5, align 8
  %52 = call i32 @devlink_dpipe_fields_put(%struct.sk_buff* %50, %struct.devlink_dpipe_header* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %58 = call i32 @nla_nest_cancel(%struct.sk_buff* %56, %struct.nlattr* %57)
  br label %66

59:                                               ; preds = %49
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %62 = call i32 @nla_nest_end(%struct.sk_buff* %60, %struct.nlattr* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  store i32 0, i32* %3, align 4
  br label %73

66:                                               ; preds = %55, %48, %41
  %67 = load i32, i32* @EMSGSIZE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %71 = call i32 @nla_nest_cancel(%struct.sk_buff* %69, %struct.nlattr* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %59, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @devlink_dpipe_fields_put(%struct.sk_buff*, %struct.devlink_dpipe_header*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

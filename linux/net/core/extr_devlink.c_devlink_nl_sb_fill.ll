; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_sb = type { i32, i32, i32, i32, i32, i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_SIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_INGRESS_POOL_COUNT = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_EGRESS_POOL_COUNT = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_INGRESS_TC_COUNT = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_EGRESS_TC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_sb*, i32, i32, i32, i32)* @devlink_nl_sb_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_sb_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_sb* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca %struct.devlink_sb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store %struct.devlink_sb* %2, %struct.devlink_sb** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i8* @genlmsg_put(%struct.sk_buff* %17, i32 %18, i32 %19, i32* @devlink_nl_family, i32 %20, i32 %21)
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %98

28:                                               ; preds = %7
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load %struct.devlink*, %struct.devlink** %10, align 8
  %31 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %29, %struct.devlink* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %92

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* @DEVLINK_ATTR_SB_INDEX, align 4
  %37 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %38 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %92

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @DEVLINK_ATTR_SB_SIZE, align 4
  %46 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %47 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %92

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i32, i32* @DEVLINK_ATTR_SB_INGRESS_POOL_COUNT, align 4
  %55 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %56 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @nla_put_u16(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %92

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load i32, i32* @DEVLINK_ATTR_SB_EGRESS_POOL_COUNT, align 4
  %64 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %65 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @nla_put_u16(%struct.sk_buff* %62, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %92

70:                                               ; preds = %61
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load i32, i32* @DEVLINK_ATTR_SB_INGRESS_TC_COUNT, align 4
  %73 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %74 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @nla_put_u16(%struct.sk_buff* %71, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %92

79:                                               ; preds = %70
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = load i32, i32* @DEVLINK_ATTR_SB_EGRESS_TC_COUNT, align 4
  %82 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %83 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @nla_put_u16(%struct.sk_buff* %80, i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %92

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = call i32 @genlmsg_end(%struct.sk_buff* %89, i8* %90)
  store i32 0, i32* %8, align 4
  br label %98

92:                                               ; preds = %87, %78, %69, %60, %51, %42, %33
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 @genlmsg_cancel(%struct.sk_buff* %93, i8* %94)
  %96 = load i32, i32* @EMSGSIZE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %92, %88, %25
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

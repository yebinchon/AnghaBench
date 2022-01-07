; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_pool_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_pool_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink*, i32, i32, %struct.devlink_sb_pool_info*)* }
%struct.devlink_sb_pool_info = type { i32, i32, i32, i32 }
%struct.devlink_sb = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_TYPE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_SIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_CELL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_sb*, i32, i32, i32, i32, i32)* @devlink_nl_sb_pool_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_sb_pool_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_sb* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.devlink*, align 8
  %12 = alloca %struct.devlink_sb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.devlink_sb_pool_info, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.devlink* %1, %struct.devlink** %11, align 8
  store %struct.devlink_sb* %2, %struct.devlink_sb** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.devlink*, %struct.devlink** %11, align 8
  %22 = getelementptr inbounds %struct.devlink, %struct.devlink* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.devlink*, i32, i32, %struct.devlink_sb_pool_info*)*, i32 (%struct.devlink*, i32, i32, %struct.devlink_sb_pool_info*)** %24, align 8
  %26 = load %struct.devlink*, %struct.devlink** %11, align 8
  %27 = load %struct.devlink_sb*, %struct.devlink_sb** %12, align 8
  %28 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 %25(%struct.devlink* %26, i32 %29, i32 %30, %struct.devlink_sb_pool_info* %18)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i32, i32* %20, align 4
  store i32 %35, i32* %9, align 4
  br label %112

36:                                               ; preds = %8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i8* @genlmsg_put(%struct.sk_buff* %37, i32 %38, i32 %39, i32* @devlink_nl_family, i32 %40, i32 %41)
  store i8* %42, i8** %19, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @EMSGSIZE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %112

48:                                               ; preds = %36
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = load %struct.devlink*, %struct.devlink** %11, align 8
  %51 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %49, %struct.devlink* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %106

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load i32, i32* @DEVLINK_ATTR_SB_INDEX, align 4
  %57 = load %struct.devlink_sb*, %struct.devlink_sb** %12, align 8
  %58 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %106

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = load i32, i32* @DEVLINK_ATTR_SB_POOL_INDEX, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @nla_put_u16(%struct.sk_buff* %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %106

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load i32, i32* @DEVLINK_ATTR_SB_POOL_TYPE, align 4
  %73 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %18, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @nla_put_u8(%struct.sk_buff* %71, i32 %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %106

78:                                               ; preds = %70
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = load i32, i32* @DEVLINK_ATTR_SB_POOL_SIZE, align 4
  %81 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %18, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %106

86:                                               ; preds = %78
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = load i32, i32* @DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE, align 4
  %89 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %18, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @nla_put_u8(%struct.sk_buff* %87, i32 %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %106

94:                                               ; preds = %86
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = load i32, i32* @DEVLINK_ATTR_SB_POOL_CELL_SIZE, align 4
  %97 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %18, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @nla_put_u32(%struct.sk_buff* %95, i32 %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %106

102:                                              ; preds = %94
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = call i32 @genlmsg_end(%struct.sk_buff* %103, i8* %104)
  store i32 0, i32* %9, align 4
  br label %112

106:                                              ; preds = %101, %93, %85, %77, %69, %62, %53
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = call i32 @genlmsg_cancel(%struct.sk_buff* %107, i8* %108)
  %110 = load i32, i32* @EMSGSIZE, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %106, %102, %45, %34
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_trap_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_trap_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_trap_item = type { i32, %struct.TYPE_4__*, i32, %struct.devlink_trap_group_item* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.devlink_trap_group_item = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_TRAP_GROUP_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_TRAP_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_TRAP_TYPE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_TRAP_GENERIC = common dso_local global i32 0, align 4
@DEVLINK_ATTR_TRAP_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_trap_item*, i32, i32, i32, i32)* @devlink_nl_trap_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_trap_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_trap_item* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca %struct.devlink_trap_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.devlink_trap_group_item*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store %struct.devlink_trap_item* %2, %struct.devlink_trap_item** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %11, align 8
  %20 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %19, i32 0, i32 3
  %21 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %20, align 8
  store %struct.devlink_trap_group_item* %21, %struct.devlink_trap_group_item** %16, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i8* @genlmsg_put(%struct.sk_buff* %22, i32 %23, i32 %24, i32* @devlink_nl_family, i32 %25, i32 %26)
  store i8* %27, i8** %17, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %122

33:                                               ; preds = %7
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load %struct.devlink*, %struct.devlink** %10, align 8
  %36 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %34, %struct.devlink* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %116

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load i32, i32* @DEVLINK_ATTR_TRAP_GROUP_NAME, align 4
  %42 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %16, align 8
  %43 = getelementptr inbounds %struct.devlink_trap_group_item, %struct.devlink_trap_group_item* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_string(%struct.sk_buff* %40, i32 %41, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %116

50:                                               ; preds = %39
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load i32, i32* @DEVLINK_ATTR_TRAP_NAME, align 4
  %53 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %11, align 8
  %54 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @nla_put_string(%struct.sk_buff* %51, i32 %52, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %116

61:                                               ; preds = %50
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load i32, i32* @DEVLINK_ATTR_TRAP_TYPE, align 4
  %64 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %11, align 8
  %65 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @nla_put_u8(%struct.sk_buff* %62, i32 %63, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %116

72:                                               ; preds = %61
  %73 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %11, align 8
  %74 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = load i32, i32* @DEVLINK_ATTR_TRAP_GENERIC, align 4
  %82 = call i64 @nla_put_flag(%struct.sk_buff* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %116

85:                                               ; preds = %79, %72
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load i32, i32* @DEVLINK_ATTR_TRAP_ACTION, align 4
  %88 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %11, align 8
  %89 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @nla_put_u8(%struct.sk_buff* %86, i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %116

94:                                               ; preds = %85
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %11, align 8
  %97 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = call i32 @devlink_trap_metadata_put(%struct.sk_buff* %95, %struct.TYPE_4__* %98)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %116

103:                                              ; preds = %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %11, align 8
  %106 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @devlink_trap_stats_put(%struct.sk_buff* %104, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %116

112:                                              ; preds = %103
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = call i32 @genlmsg_end(%struct.sk_buff* %113, i8* %114)
  store i32 0, i32* %8, align 4
  br label %122

116:                                              ; preds = %111, %102, %93, %84, %71, %60, %49, %38
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = call i32 @genlmsg_cancel(%struct.sk_buff* %117, i8* %118)
  %120 = load i32, i32* @EMSGSIZE, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %112, %30
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @devlink_trap_metadata_put(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @devlink_trap_stats_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

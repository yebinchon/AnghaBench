; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_port_pool_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_port_pool_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { %struct.devlink_ops* }
%struct.devlink_ops = type { i32 (%struct.devlink_port*, i32, i32, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32*, i32*)* }
%struct.devlink_port = type { i32 }
%struct.devlink_sb = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_THRESHOLD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_OCC_CUR = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_OCC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_port*, %struct.devlink_sb*, i32, i32, i32, i32, i32)* @devlink_nl_sb_port_pool_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_sb_port_pool_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_port* %2, %struct.devlink_sb* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.devlink*, align 8
  %13 = alloca %struct.devlink_port*, align 8
  %14 = alloca %struct.devlink_sb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.devlink_ops*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store %struct.devlink* %1, %struct.devlink** %12, align 8
  store %struct.devlink_port* %2, %struct.devlink_port** %13, align 8
  store %struct.devlink_sb* %3, %struct.devlink_sb** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %26 = load %struct.devlink*, %struct.devlink** %12, align 8
  %27 = getelementptr inbounds %struct.devlink, %struct.devlink* %26, i32 0, i32 0
  %28 = load %struct.devlink_ops*, %struct.devlink_ops** %27, align 8
  store %struct.devlink_ops* %28, %struct.devlink_ops** %20, align 8
  %29 = load %struct.devlink_ops*, %struct.devlink_ops** %20, align 8
  %30 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.devlink_port*, i32, i32, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32*)** %30, align 8
  %32 = load %struct.devlink_port*, %struct.devlink_port** %13, align 8
  %33 = load %struct.devlink_sb*, %struct.devlink_sb** %14, align 8
  %34 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 %31(%struct.devlink_port* %32, i32 %35, i32 %36, i32* %21)
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %23, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %9
  %41 = load i32, i32* %23, align 4
  store i32 %41, i32* %10, align 4
  br label %145

42:                                               ; preds = %9
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i8* @genlmsg_put(%struct.sk_buff* %43, i32 %44, i32 %45, i32* @devlink_nl_family, i32 %46, i32 %47)
  store i8* %48, i8** %22, align 8
  %49 = load i8*, i8** %22, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @EMSGSIZE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %145

54:                                               ; preds = %42
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = load %struct.devlink*, %struct.devlink** %12, align 8
  %57 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %55, %struct.devlink* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %139

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = load i32, i32* @DEVLINK_ATTR_PORT_INDEX, align 4
  %63 = load %struct.devlink_port*, %struct.devlink_port** %13, align 8
  %64 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_u32(%struct.sk_buff* %61, i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %139

69:                                               ; preds = %60
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = load i32, i32* @DEVLINK_ATTR_SB_INDEX, align 4
  %72 = load %struct.devlink_sb*, %struct.devlink_sb** %14, align 8
  %73 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @nla_put_u32(%struct.sk_buff* %70, i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %139

78:                                               ; preds = %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = load i32, i32* @DEVLINK_ATTR_SB_POOL_INDEX, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i64 @nla_put_u16(%struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %139

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %87 = load i32, i32* @DEVLINK_ATTR_SB_THRESHOLD, align 4
  %88 = load i32, i32* %21, align 4
  %89 = call i64 @nla_put_u32(%struct.sk_buff* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %139

92:                                               ; preds = %85
  %93 = load %struct.devlink_ops*, %struct.devlink_ops** %20, align 8
  %94 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %93, i32 0, i32 1
  %95 = load i32 (%struct.devlink_port*, i32, i32, i32*, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32*, i32*)** %94, align 8
  %96 = icmp ne i32 (%struct.devlink_port*, i32, i32, i32*, i32*)* %95, null
  br i1 %96, label %97, label %135

97:                                               ; preds = %92
  %98 = load %struct.devlink_ops*, %struct.devlink_ops** %20, align 8
  %99 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %98, i32 0, i32 1
  %100 = load i32 (%struct.devlink_port*, i32, i32, i32*, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32*, i32*)** %99, align 8
  %101 = load %struct.devlink_port*, %struct.devlink_port** %13, align 8
  %102 = load %struct.devlink_sb*, %struct.devlink_sb** %14, align 8
  %103 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 %100(%struct.devlink_port* %101, i32 %104, i32 %105, i32* %24, i32* %25)
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %23, align 4
  store i32 %115, i32* %10, align 4
  br label %145

116:                                              ; preds = %109, %97
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %116
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = load i32, i32* @DEVLINK_ATTR_SB_OCC_CUR, align 4
  %122 = load i32, i32* %24, align 4
  %123 = call i64 @nla_put_u32(%struct.sk_buff* %120, i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %139

126:                                              ; preds = %119
  %127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %128 = load i32, i32* @DEVLINK_ATTR_SB_OCC_MAX, align 4
  %129 = load i32, i32* %25, align 4
  %130 = call i64 @nla_put_u32(%struct.sk_buff* %127, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %139

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %116
  br label %135

135:                                              ; preds = %134, %92
  %136 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %137 = load i8*, i8** %22, align 8
  %138 = call i32 @genlmsg_end(%struct.sk_buff* %136, i8* %137)
  store i32 0, i32* %10, align 4
  br label %145

139:                                              ; preds = %132, %125, %91, %84, %77, %68, %59
  %140 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %141 = load i8*, i8** %22, align 8
  %142 = call i32 @genlmsg_cancel(%struct.sk_buff* %140, i8* %141)
  %143 = load i32, i32* @EMSGSIZE, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %139, %135, %114, %51, %40
  %146 = load i32, i32* %10, align 4
  ret i32 %146
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

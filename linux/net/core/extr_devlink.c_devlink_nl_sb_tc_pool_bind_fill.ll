; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_tc_pool_bind_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_sb_tc_pool_bind_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { %struct.devlink_ops* }
%struct.devlink_ops = type { i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)* }
%struct.devlink_port = type { i32 }
%struct.devlink_sb = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_TC_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_TYPE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_POOL_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_THRESHOLD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_OCC_CUR = common dso_local global i32 0, align 4
@DEVLINK_ATTR_SB_OCC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_port*, %struct.devlink_sb*, i32, i32, i32, i32, i32, i32)* @devlink_nl_sb_tc_pool_bind_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_sb_tc_pool_bind_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_port* %2, %struct.devlink_sb* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.devlink*, align 8
  %14 = alloca %struct.devlink_port*, align 8
  %15 = alloca %struct.devlink_sb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.devlink_ops*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %12, align 8
  store %struct.devlink* %1, %struct.devlink** %13, align 8
  store %struct.devlink_port* %2, %struct.devlink_port** %14, align 8
  store %struct.devlink_sb* %3, %struct.devlink_sb** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %29 = load %struct.devlink*, %struct.devlink** %13, align 8
  %30 = getelementptr inbounds %struct.devlink, %struct.devlink* %29, i32 0, i32 0
  %31 = load %struct.devlink_ops*, %struct.devlink_ops** %30, align 8
  store %struct.devlink_ops* %31, %struct.devlink_ops** %22, align 8
  %32 = load %struct.devlink_ops*, %struct.devlink_ops** %22, align 8
  %33 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)** %33, align 8
  %35 = load %struct.devlink_port*, %struct.devlink_port** %14, align 8
  %36 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %37 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i32 %34(%struct.devlink_port* %35, i32 %38, i32 %39, i32 %40, i32* %23, i32* %24)
  store i32 %41, i32* %26, align 4
  %42 = load i32, i32* %26, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %10
  %45 = load i32, i32* %26, align 4
  store i32 %45, i32* %11, align 4
  br label %164

46:                                               ; preds = %10
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i8* @genlmsg_put(%struct.sk_buff* %47, i32 %48, i32 %49, i32* @devlink_nl_family, i32 %50, i32 %51)
  store i8* %52, i8** %25, align 8
  %53 = load i8*, i8** %25, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @EMSGSIZE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %164

58:                                               ; preds = %46
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = load %struct.devlink*, %struct.devlink** %13, align 8
  %61 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %59, %struct.devlink* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %158

64:                                               ; preds = %58
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = load i32, i32* @DEVLINK_ATTR_PORT_INDEX, align 4
  %67 = load %struct.devlink_port*, %struct.devlink_port** %14, align 8
  %68 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @nla_put_u32(%struct.sk_buff* %65, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %158

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = load i32, i32* @DEVLINK_ATTR_SB_INDEX, align 4
  %76 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %77 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @nla_put_u32(%struct.sk_buff* %74, i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %158

82:                                               ; preds = %73
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = load i32, i32* @DEVLINK_ATTR_SB_TC_INDEX, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i64 @nla_put_u16(%struct.sk_buff* %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %158

89:                                               ; preds = %82
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = load i32, i32* @DEVLINK_ATTR_SB_POOL_TYPE, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i64 @nla_put_u8(%struct.sk_buff* %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %158

96:                                               ; preds = %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = load i32, i32* @DEVLINK_ATTR_SB_POOL_INDEX, align 4
  %99 = load i32, i32* %23, align 4
  %100 = call i64 @nla_put_u16(%struct.sk_buff* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %158

103:                                              ; preds = %96
  %104 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %105 = load i32, i32* @DEVLINK_ATTR_SB_THRESHOLD, align 4
  %106 = load i32, i32* %24, align 4
  %107 = call i64 @nla_put_u32(%struct.sk_buff* %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %158

110:                                              ; preds = %103
  %111 = load %struct.devlink_ops*, %struct.devlink_ops** %22, align 8
  %112 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %111, i32 0, i32 1
  %113 = load i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)** %112, align 8
  %114 = icmp ne i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)* %113, null
  br i1 %114, label %115, label %154

115:                                              ; preds = %110
  %116 = load %struct.devlink_ops*, %struct.devlink_ops** %22, align 8
  %117 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %116, i32 0, i32 1
  %118 = load i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)*, i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)** %117, align 8
  %119 = load %struct.devlink_port*, %struct.devlink_port** %14, align 8
  %120 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %121 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %17, align 4
  %125 = call i32 %118(%struct.devlink_port* %119, i32 %122, i32 %123, i32 %124, i32* %27, i32* %28)
  store i32 %125, i32* %26, align 4
  %126 = load i32, i32* %26, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %115
  %129 = load i32, i32* %26, align 4
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  %131 = sub nsw i32 0, %130
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %26, align 4
  store i32 %134, i32* %11, align 4
  br label %164

135:                                              ; preds = %128, %115
  %136 = load i32, i32* %26, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %135
  %139 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %140 = load i32, i32* @DEVLINK_ATTR_SB_OCC_CUR, align 4
  %141 = load i32, i32* %27, align 4
  %142 = call i64 @nla_put_u32(%struct.sk_buff* %139, i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %158

145:                                              ; preds = %138
  %146 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %147 = load i32, i32* @DEVLINK_ATTR_SB_OCC_MAX, align 4
  %148 = load i32, i32* %28, align 4
  %149 = call i64 @nla_put_u32(%struct.sk_buff* %146, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %158

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %135
  br label %154

154:                                              ; preds = %153, %110
  %155 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %156 = load i8*, i8** %25, align 8
  %157 = call i32 @genlmsg_end(%struct.sk_buff* %155, i8* %156)
  store i32 0, i32* %11, align 4
  br label %164

158:                                              ; preds = %151, %144, %109, %102, %95, %88, %81, %72, %63
  %159 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %160 = load i8*, i8** %25, align 8
  %161 = call i32 @genlmsg_cancel(%struct.sk_buff* %159, i8* %160)
  %162 = load i32, i32* @EMSGSIZE, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %158, %154, %133, %55, %44
  %165 = load i32, i32* %11, align 4
  ret i32 %165
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

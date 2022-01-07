; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_eswitch_set_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_eswitch_set_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i64*, %struct.devlink** }
%struct.devlink = type { %struct.devlink_ops* }
%struct.devlink_ops = type { i32 (%struct.devlink*, i32, i32)*, i32 (%struct.devlink*, i8*, i32)*, i32 (%struct.devlink*, i32, i32)* }

@DEVLINK_ATTR_ESWITCH_MODE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_ATTR_ESWITCH_INLINE_MODE = common dso_local global i64 0, align 8
@DEVLINK_ATTR_ESWITCH_ENCAP_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_eswitch_set_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_eswitch_set_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 2
  %14 = load %struct.devlink**, %struct.devlink*** %13, align 8
  %15 = getelementptr inbounds %struct.devlink*, %struct.devlink** %14, i64 0
  %16 = load %struct.devlink*, %struct.devlink** %15, align 8
  store %struct.devlink* %16, %struct.devlink** %6, align 8
  %17 = load %struct.devlink*, %struct.devlink** %6, align 8
  %18 = getelementptr inbounds %struct.devlink, %struct.devlink* %17, i32 0, i32 0
  %19 = load %struct.devlink_ops*, %struct.devlink_ops** %18, align 8
  store %struct.devlink_ops* %19, %struct.devlink_ops** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @DEVLINK_ATTR_ESWITCH_MODE, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %2
  %28 = load %struct.devlink_ops*, %struct.devlink_ops** %7, align 8
  %29 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.devlink*, i32, i32)*, i32 (%struct.devlink*, i32, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.devlink*, i32, i32)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %135

35:                                               ; preds = %27
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @DEVLINK_ATTR_ESWITCH_MODE, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @nla_get_u16(i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.devlink_ops*, %struct.devlink_ops** %7, align 8
  %44 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.devlink*, i32, i32)*, i32 (%struct.devlink*, i32, i32)** %44, align 8
  %46 = load %struct.devlink*, %struct.devlink** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %45(%struct.devlink* %46, i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %135

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @DEVLINK_ATTR_ESWITCH_INLINE_MODE, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %57
  %66 = load %struct.devlink_ops*, %struct.devlink_ops** %7, align 8
  %67 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %66, i32 0, i32 1
  %68 = load i32 (%struct.devlink*, i8*, i32)*, i32 (%struct.devlink*, i8*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.devlink*, i8*, i32)* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %135

73:                                               ; preds = %65
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @DEVLINK_ATTR_ESWITCH_INLINE_MODE, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @nla_get_u8(i64 %79)
  store i8* %80, i8** %9, align 8
  %81 = load %struct.devlink_ops*, %struct.devlink_ops** %7, align 8
  %82 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %81, i32 0, i32 1
  %83 = load i32 (%struct.devlink*, i8*, i32)*, i32 (%struct.devlink*, i8*, i32)** %82, align 8
  %84 = load %struct.devlink*, %struct.devlink** %6, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %83(%struct.devlink* %84, i8* %85, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %73
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %135

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %57
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @DEVLINK_ATTR_ESWITCH_ENCAP_MODE, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %95
  %104 = load %struct.devlink_ops*, %struct.devlink_ops** %7, align 8
  %105 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %104, i32 0, i32 2
  %106 = load i32 (%struct.devlink*, i32, i32)*, i32 (%struct.devlink*, i32, i32)** %105, align 8
  %107 = icmp ne i32 (%struct.devlink*, i32, i32)* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @EOPNOTSUPP, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %135

111:                                              ; preds = %103
  %112 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @DEVLINK_ATTR_ESWITCH_ENCAP_MODE, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i8* @nla_get_u8(i64 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %8, align 4
  %120 = load %struct.devlink_ops*, %struct.devlink_ops** %7, align 8
  %121 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %120, i32 0, i32 2
  %122 = load i32 (%struct.devlink*, i32, i32)*, i32 (%struct.devlink*, i32, i32)** %121, align 8
  %123 = load %struct.devlink*, %struct.devlink** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %126 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 %122(%struct.devlink* %123, i32 %124, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %111
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %135

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133, %95
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %131, %108, %92, %70, %54, %32
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i8* @nla_get_u8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

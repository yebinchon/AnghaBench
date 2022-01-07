; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_copy_geneve_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_copy_geneve_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.geneve_opt = type { i32, i64, i64, i64, i32, i32 }

@TCA_TUNNEL_KEY_ENC_OPT_GENEVE_MAX = common dso_local global i32 0, align 4
@geneve_opt_policy = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_OPT_GENEVE_CLASS = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_OPT_GENEVE_TYPE = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Missing tunnel key geneve option class, type or data\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Tunnel key geneve option data is less than 4 bytes long\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Tunnel key geneve option data is not a multiple of 4 bytes long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i8*, i32, %struct.netlink_ext_ack*)* @tunnel_key_copy_geneve_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel_key_copy_geneve_opt(%struct.nlattr* %0, i8* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.geneve_opt*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %18 = load i32, i32* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_MAX, align 4
  %24 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %25 = load i32, i32* @geneve_opt_policy, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %27 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %23, %struct.nlattr* %24, i32 %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %121

32:                                               ; preds = %4
  %33 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_CLASS, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_TYPE, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42, %37, %32
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %49 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %121

52:                                               ; preds = %42
  %53 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32* @nla_data(%struct.nlattr* %55)
  store i32* %56, i32** %15, align 8
  %57 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_len(%struct.nlattr* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %65 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ERANGE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %121

68:                                               ; preds = %52
  %69 = load i32, i32* %13, align 4
  %70 = srem i32 %69, 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %74 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %73, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ERANGE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %121

77:                                               ; preds = %68
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 40, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %119

84:                                               ; preds = %77
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to %struct.geneve_opt*
  store %struct.geneve_opt* %86, %struct.geneve_opt** %17, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @WARN_ON(i32 %90)
  %92 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_CLASS, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @nla_get_be16(%struct.nlattr* %94)
  %96 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %97 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_TYPE, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i32 @nla_get_u8(%struct.nlattr* %100)
  %102 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %103 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sdiv i32 %104, 4
  %106 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %107 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %109 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %111 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %113 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %115 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %114, i64 1
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @memcpy(%struct.geneve_opt* %115, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %84, %77
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %121

121:                                              ; preds = %119, %72, %63, %47, %30
  %122 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @memcpy(%struct.geneve_opt*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

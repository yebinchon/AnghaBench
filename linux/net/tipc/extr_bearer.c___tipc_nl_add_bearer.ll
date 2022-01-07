; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_add_bearer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_add_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.tipc_bearer = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nlattr = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@TIPC_NL_BEARER_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER_NAME = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER_PROP = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_PRIO = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_WIN = common dso_local global i32 0, align 4
@TIPC_MEDIA_TYPE_UDP = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_msg*, %struct.tipc_bearer*, i32)* @__tipc_nl_add_bearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_bearer(%struct.tipc_nl_msg* %0, %struct.tipc_bearer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_nl_msg*, align 8
  %6 = alloca %struct.tipc_bearer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  store %struct.tipc_nl_msg* %0, %struct.tipc_nl_msg** %5, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %12 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %15 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %18 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TIPC_NL_BEARER_GET, align 4
  %22 = call i8* @genlmsg_put(i32 %13, i32 %16, i32 %19, i32* @tipc_genl_family, i32 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %146

28:                                               ; preds = %3
  %29 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %30 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TIPC_NLA_BEARER, align 4
  %33 = call %struct.nlattr* @nla_nest_start_noflag(i32 %31, i32 %32)
  store %struct.nlattr* %33, %struct.nlattr** %9, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %138

37:                                               ; preds = %28
  %38 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %39 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TIPC_NLA_BEARER_NAME, align 4
  %42 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %43 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nla_put_string(i32 %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %132

48:                                               ; preds = %37
  %49 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %50 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TIPC_NLA_BEARER_PROP, align 4
  %53 = call %struct.nlattr* @nla_nest_start_noflag(i32 %51, i32 %52)
  store %struct.nlattr* %53, %struct.nlattr** %10, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %126

57:                                               ; preds = %48
  %58 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %59 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TIPC_NLA_PROP_PRIO, align 4
  %62 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %63 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @nla_put_u32(i32 %60, i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %126

68:                                               ; preds = %57
  %69 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %70 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TIPC_NLA_PROP_TOL, align 4
  %73 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %74 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @nla_put_u32(i32 %71, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %126

79:                                               ; preds = %68
  %80 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %81 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TIPC_NLA_PROP_WIN, align 4
  %84 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %85 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nla_put_u32(i32 %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %126

90:                                               ; preds = %79
  %91 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %92 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TIPC_MEDIA_TYPE_UDP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %100 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TIPC_NLA_PROP_MTU, align 4
  %103 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %104 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @nla_put_u32(i32 %101, i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %126

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %90
  %111 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %112 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %115 = call i32 @nla_nest_end(i32 %113, %struct.nlattr* %114)
  %116 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %117 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %120 = call i32 @nla_nest_end(i32 %118, %struct.nlattr* %119)
  %121 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %122 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @genlmsg_end(i32 %123, i8* %124)
  store i32 0, i32* %4, align 4
  br label %146

126:                                              ; preds = %108, %89, %78, %67, %56
  %127 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %128 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %131 = call i32 @nla_nest_cancel(i32 %129, %struct.nlattr* %130)
  br label %132

132:                                              ; preds = %126, %47
  %133 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %134 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %137 = call i32 @nla_nest_cancel(i32 %135, %struct.nlattr* %136)
  br label %138

138:                                              ; preds = %132, %36
  %139 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %140 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @genlmsg_cancel(i32 %141, i8* %142)
  %144 = load i32, i32* @EMSGSIZE, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %138, %110, %25
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @nla_put_string(i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_add_media.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_add_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.tipc_media = type { i64, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@TIPC_NL_MEDIA_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_NAME = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_PROP = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_PRIO = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_WIN = common dso_local global i32 0, align 4
@TIPC_MEDIA_TYPE_UDP = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_msg*, %struct.tipc_media*, i32)* @__tipc_nl_add_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_media(%struct.tipc_nl_msg* %0, %struct.tipc_media* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_nl_msg*, align 8
  %6 = alloca %struct.tipc_media*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  store %struct.tipc_nl_msg* %0, %struct.tipc_nl_msg** %5, align 8
  store %struct.tipc_media* %1, %struct.tipc_media** %6, align 8
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
  %21 = load i32, i32* @TIPC_NL_MEDIA_GET, align 4
  %22 = call i8* @genlmsg_put(i32 %13, i32 %16, i32 %19, i32* @tipc_genl_family, i32 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %144

28:                                               ; preds = %3
  %29 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %30 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TIPC_NLA_MEDIA, align 4
  %33 = call %struct.nlattr* @nla_nest_start_noflag(i32 %31, i32 %32)
  store %struct.nlattr* %33, %struct.nlattr** %9, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %136

37:                                               ; preds = %28
  %38 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %39 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TIPC_NLA_MEDIA_NAME, align 4
  %42 = load %struct.tipc_media*, %struct.tipc_media** %6, align 8
  %43 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nla_put_string(i32 %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %130

48:                                               ; preds = %37
  %49 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %50 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TIPC_NLA_MEDIA_PROP, align 4
  %53 = call %struct.nlattr* @nla_nest_start_noflag(i32 %51, i32 %52)
  store %struct.nlattr* %53, %struct.nlattr** %10, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %124

57:                                               ; preds = %48
  %58 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %59 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TIPC_NLA_PROP_PRIO, align 4
  %62 = load %struct.tipc_media*, %struct.tipc_media** %6, align 8
  %63 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @nla_put_u32(i32 %60, i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %124

68:                                               ; preds = %57
  %69 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %70 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TIPC_NLA_PROP_TOL, align 4
  %73 = load %struct.tipc_media*, %struct.tipc_media** %6, align 8
  %74 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @nla_put_u32(i32 %71, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %124

79:                                               ; preds = %68
  %80 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %81 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TIPC_NLA_PROP_WIN, align 4
  %84 = load %struct.tipc_media*, %struct.tipc_media** %6, align 8
  %85 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nla_put_u32(i32 %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %124

90:                                               ; preds = %79
  %91 = load %struct.tipc_media*, %struct.tipc_media** %6, align 8
  %92 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TIPC_MEDIA_TYPE_UDP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %98 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TIPC_NLA_PROP_MTU, align 4
  %101 = load %struct.tipc_media*, %struct.tipc_media** %6, align 8
  %102 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @nla_put_u32(i32 %99, i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %124

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %90
  %109 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %110 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %113 = call i32 @nla_nest_end(i32 %111, %struct.nlattr* %112)
  %114 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %115 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %118 = call i32 @nla_nest_end(i32 %116, %struct.nlattr* %117)
  %119 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %120 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @genlmsg_end(i32 %121, i8* %122)
  store i32 0, i32* %4, align 4
  br label %144

124:                                              ; preds = %106, %89, %78, %67, %56
  %125 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %126 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %129 = call i32 @nla_nest_cancel(i32 %127, %struct.nlattr* %128)
  br label %130

130:                                              ; preds = %124, %47
  %131 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %132 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %135 = call i32 @nla_nest_cancel(i32 %133, %struct.nlattr* %134)
  br label %136

136:                                              ; preds = %130, %36
  %137 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %138 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @genlmsg_cancel(i32 %139, i8* %140)
  %142 = load i32, i32* @EMSGSIZE, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %136, %108, %25
  %145 = load i32, i32* %4, align 4
  ret i32 %145
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

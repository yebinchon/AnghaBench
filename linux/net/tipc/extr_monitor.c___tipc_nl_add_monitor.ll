; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c___tipc_nl_add_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c___tipc_nl_add_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.tipc_monitor = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@TIPC_MAX_BEARER_NAME = common dso_local global i32 0, align 4
@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_MON_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_MON = common dso_local global i32 0, align 4
@TIPC_NLA_MON_REF = common dso_local global i32 0, align 4
@TIPC_NLA_MON_ACTIVE = common dso_local global i32 0, align 4
@TIPC_NLA_MON_BEARER_NAME = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEERCNT = common dso_local global i32 0, align 4
@TIPC_NLA_MON_LISTGEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tipc_nl_add_monitor(%struct.net* %0, %struct.tipc_nl_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.tipc_nl_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_monitor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.tipc_monitor* @tipc_monitor(%struct.net* %15, i32 %16)
  store %struct.tipc_monitor* %17, %struct.tipc_monitor** %8, align 8
  %18 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.net*, %struct.net** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @tipc_bearer_get_name(%struct.net* %22, i8* %21, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.tipc_monitor*, %struct.tipc_monitor** %8, align 8
  %29 = icmp ne %struct.tipc_monitor* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %145

31:                                               ; preds = %27
  %32 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %33 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %36 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %39 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NLM_F_MULTI, align 4
  %42 = load i32, i32* @TIPC_NL_MON_GET, align 4
  %43 = call i8* @genlmsg_put(i32 %34, i32 %37, i32 %40, i32* @tipc_genl_family, i32 %41, i32 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %145

49:                                               ; preds = %31
  %50 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %51 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TIPC_NLA_MON, align 4
  %54 = call %struct.nlattr* @nla_nest_start_noflag(i32 %52, i32 %53)
  store %struct.nlattr* %54, %struct.nlattr** %11, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %137

58:                                               ; preds = %49
  %59 = load %struct.tipc_monitor*, %struct.tipc_monitor** %8, align 8
  %60 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %59, i32 0, i32 0
  %61 = call i32 @read_lock_bh(i32* %60)
  %62 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %63 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TIPC_NLA_MON_REF, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @nla_put_u32(i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %128

70:                                               ; preds = %58
  %71 = load %struct.net*, %struct.net** %5, align 8
  %72 = load %struct.tipc_monitor*, %struct.tipc_monitor** %8, align 8
  %73 = call i64 @tipc_mon_is_active(%struct.net* %71, %struct.tipc_monitor* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %77 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TIPC_NLA_MON_ACTIVE, align 4
  %80 = call i64 @nla_put_flag(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %128

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %86 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TIPC_NLA_MON_BEARER_NAME, align 4
  %89 = call i64 @nla_put_string(i32 %87, i32 %88, i8* %21)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %128

92:                                               ; preds = %84
  %93 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %94 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @TIPC_NLA_MON_PEERCNT, align 4
  %97 = load %struct.tipc_monitor*, %struct.tipc_monitor** %8, align 8
  %98 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @nla_put_u32(i32 %95, i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %128

103:                                              ; preds = %92
  %104 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %105 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TIPC_NLA_MON_LISTGEN, align 4
  %108 = load %struct.tipc_monitor*, %struct.tipc_monitor** %8, align 8
  %109 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @nla_put_u32(i32 %106, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %128

114:                                              ; preds = %103
  %115 = load %struct.tipc_monitor*, %struct.tipc_monitor** %8, align 8
  %116 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %115, i32 0, i32 0
  %117 = call i32 @read_unlock_bh(i32* %116)
  %118 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %119 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %122 = call i32 @nla_nest_end(i32 %120, %struct.nlattr* %121)
  %123 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %124 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @genlmsg_end(i32 %125, i8* %126)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %145

128:                                              ; preds = %113, %102, %91, %82, %69
  %129 = load %struct.tipc_monitor*, %struct.tipc_monitor** %8, align 8
  %130 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %129, i32 0, i32 0
  %131 = call i32 @read_unlock_bh(i32* %130)
  %132 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %133 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %136 = call i32 @nla_nest_cancel(i32 %134, %struct.nlattr* %135)
  br label %137

137:                                              ; preds = %128, %57
  %138 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %6, align 8
  %139 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @genlmsg_cancel(i32 %140, i8* %141)
  %143 = load i32, i32* @EMSGSIZE, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %145

145:                                              ; preds = %137, %114, %46, %30
  %146 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.tipc_monitor* @tipc_monitor(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tipc_bearer_get_name(%struct.net*, i8*, i32) #1

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i64 @tipc_mon_is_active(%struct.net*, %struct.tipc_monitor*) #1

declare dso_local i64 @nla_put_flag(i32, i32) #1

declare dso_local i64 @nla_put_string(i32, i32, i8*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

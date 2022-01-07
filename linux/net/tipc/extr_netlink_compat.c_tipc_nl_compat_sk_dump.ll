; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_sk_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_sk_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_msg = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_SOCK_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%u:\00", align 1
@TIPC_NLA_SOCK_CON = common dso_local global i64 0, align 8
@TIPC_NLA_CON_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_CON_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"  connected to <%u.%u.%u:%u>\00", align 1
@TIPC_NLA_CON_SOCK = common dso_local global i64 0, align 8
@TIPC_NLA_CON_FLAG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c" via {%u,%u}\0A\00", align 1
@TIPC_NLA_CON_TYPE = common dso_local global i64 0, align 8
@TIPC_NLA_CON_INST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TIPC_NLA_SOCK_HAS_PUBL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c" bound to\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_msg*, %struct.nlattr**)* @tipc_nl_compat_sk_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_sk_dump(%struct.tipc_nl_compat_msg* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_msg*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.tipc_nl_compat_msg* %0, %struct.tipc_nl_compat_msg** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %14 = load i32, i32* @TIPC_NLA_SOCK_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %20 = load i64, i64* @TIPC_NLA_SOCK, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %137

27:                                               ; preds = %2
  %28 = load i32, i32* @TIPC_NLA_SOCK_MAX, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %30 = load i64, i64* @TIPC_NLA_SOCK, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %28, %struct.nlattr* %32, i32* null, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %137

38:                                               ; preds = %27
  %39 = load i64, i64* @TIPC_NLA_SOCK_REF, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i32 @nla_get_u32(%struct.nlattr* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %44 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @TIPC_NLA_SOCK_CON, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %113

52:                                               ; preds = %38
  %53 = load i32, i32* @TIPC_NLA_CON_MAX, align 4
  %54 = add nsw i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %12, align 8
  %57 = alloca %struct.nlattr*, i64 %55, align 16
  store i64 %55, i64* %13, align 8
  %58 = load i32, i32* @TIPC_NLA_CON_MAX, align 4
  %59 = load i64, i64* @TIPC_NLA_SOCK_CON, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %57, i32 %58, %struct.nlattr* %61, i32* null, i32* null)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %109

67:                                               ; preds = %52
  %68 = load i64, i64* @TIPC_NLA_CON_NODE, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i32 @nla_get_u32(%struct.nlattr* %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %73 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @tipc_zone(i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @tipc_cluster(i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @tipc_node(i32 %79)
  %81 = load i64, i64* @TIPC_NLA_CON_SOCK, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i32 @nla_get_u32(%struct.nlattr* %83)
  %85 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %78, i32 %80, i32 %84)
  %86 = load i64, i64* @TIPC_NLA_CON_FLAG, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %67
  %91 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %92 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @TIPC_NLA_CON_TYPE, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = call i32 @nla_get_u32(%struct.nlattr* %96)
  %98 = load i64, i64* @TIPC_NLA_CON_INST, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i32 @nla_get_u32(%struct.nlattr* %100)
  %102 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %101)
  br label %108

103:                                              ; preds = %67
  %104 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %105 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %90
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %108, %65
  %110 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %10, align 4
  switch i32 %111, label %137 [
    i32 0, label %112
  ]

112:                                              ; preds = %109
  br label %132

113:                                              ; preds = %38
  %114 = load i64, i64* @TIPC_NLA_SOCK_HAS_PUBL, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = icmp ne %struct.nlattr* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %120 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @tipc_nl_compat_publ_dump(%struct.tipc_nl_compat_msg* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %137

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %113
  br label %132

132:                                              ; preds = %131, %112
  %133 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %134 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %137

137:                                              ; preds = %132, %128, %109, %36, %24
  %138 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_tlv_sprintf(i32, i8*, ...) #2

declare dso_local i32 @tipc_zone(i32) #2

declare dso_local i32 @tipc_cluster(i32) #2

declare dso_local i32 @tipc_node(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @tipc_nl_compat_publ_dump(%struct.tipc_nl_compat_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

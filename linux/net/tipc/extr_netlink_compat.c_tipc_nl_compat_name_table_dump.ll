; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_name_table_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_name_table_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_msg = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.tipc_name_table_query = type { i32, i32, i32, i32 }

@TIPC_NLA_NAME_TABLE_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL_MAX = common dso_local global i32 0, align 4
@tipc_nl_compat_name_table_dump.scope_str = internal constant [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" zone\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" cluster\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" node\00", align 1
@TIPC_NLA_NAME_TABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_NAME_TABLE_PUBL = common dso_local global i64 0, align 8
@TIPC_NTQ_ALLTYPES = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL_TYPE = common dso_local global i64 0, align 8
@TIPC_NLA_PUBL_UPPER = common dso_local global i64 0, align 8
@TIPC_NLA_PUBL_LOWER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%-10u \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%-10u %-10u \00", align 1
@TIPC_NLA_PUBL_NODE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"<%u.%u.%u:%u>\00", align 1
@TIPC_NLA_PUBL_REF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"%-26s \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%-10u %s\00", align 1
@TIPC_NLA_PUBL_KEY = common dso_local global i64 0, align 8
@TIPC_NLA_PUBL_SCOPE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_msg*, %struct.nlattr**)* @tipc_nl_compat_name_table_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_name_table_dump(%struct.tipc_nl_compat_msg* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_msg*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca [27 x i8], align 16
  %7 = alloca %struct.tipc_name_table_query*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tipc_nl_compat_msg* %0, %struct.tipc_nl_compat_msg** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %18 = load i32, i32* @TIPC_NLA_NAME_TABLE_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @TIPC_NLA_PUBL_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %28 = load i64, i64* @TIPC_NLA_NAME_TABLE, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

35:                                               ; preds = %2
  %36 = load i32, i32* @TIPC_NLA_NAME_TABLE_MAX, align 4
  %37 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %38 = load i64, i64* @TIPC_NLA_NAME_TABLE, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %36, %struct.nlattr* %40, i32* null, i32* null)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

46:                                               ; preds = %35
  %47 = load i64, i64* @TIPC_NLA_NAME_TABLE_PUBL, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

54:                                               ; preds = %46
  %55 = load i32, i32* @TIPC_NLA_PUBL_MAX, align 4
  %56 = load i64, i64* @TIPC_NLA_NAME_TABLE_PUBL, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %26, i32 %55, %struct.nlattr* %58, i32* null, i32* null)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

64:                                               ; preds = %54
  %65 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %66 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @TLV_DATA(i32 %67)
  %69 = inttoptr i64 %68 to %struct.tipc_name_table_query*
  store %struct.tipc_name_table_query* %69, %struct.tipc_name_table_query** %7, align 8
  %70 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %71 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohl(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %75 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohl(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %79 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohl(i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %83 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohl(i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @TIPC_NTQ_ALLTYPES, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %64
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @TIPC_NLA_PUBL_TYPE, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i64 @nla_get_u32(%struct.nlattr* %95)
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

99:                                               ; preds = %90, %64
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @TIPC_NLA_PUBL_UPPER, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = call i64 @nla_get_u32(%struct.nlattr* %107)
  %109 = icmp ugt i64 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

111:                                              ; preds = %102, %99
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @TIPC_NLA_PUBL_LOWER, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = call i64 @nla_get_u32(%struct.nlattr* %119)
  %121 = icmp ult i64 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

123:                                              ; preds = %114, %111
  %124 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %125 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* @TIPC_NLA_PUBL_TYPE, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = call i64 @nla_get_u32(%struct.nlattr* %129)
  %131 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %192

135:                                              ; preds = %123
  %136 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %137 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* @TIPC_NLA_PUBL_LOWER, align 8
  %140 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %139
  %141 = load %struct.nlattr*, %struct.nlattr** %140, align 8
  %142 = call i64 @nla_get_u32(%struct.nlattr* %141)
  %143 = load i64, i64* @TIPC_NLA_PUBL_UPPER, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = call i64 @nla_get_u32(%struct.nlattr* %145)
  %147 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %142, i64 %146)
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %135
  br label %192

151:                                              ; preds = %135
  %152 = load i64, i64* @TIPC_NLA_PUBL_NODE, align 8
  %153 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %152
  %154 = load %struct.nlattr*, %struct.nlattr** %153, align 8
  %155 = call i64 @nla_get_u32(%struct.nlattr* %154)
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %11, align 4
  %157 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @tipc_zone(i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @tipc_cluster(i32 %160)
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @tipc_node(i32 %162)
  %164 = load i64, i64* @TIPC_NLA_PUBL_REF, align 8
  %165 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %164
  %166 = load %struct.nlattr*, %struct.nlattr** %165, align 8
  %167 = call i64 @nla_get_u32(%struct.nlattr* %166)
  %168 = call i32 @sprintf(i8* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %159, i32 %161, i32 %163, i64 %167)
  %169 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %170 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %173 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* %12, align 4
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %176, label %177

176:                                              ; preds = %151
  br label %192

177:                                              ; preds = %151
  %178 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %179 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i64, i64* @TIPC_NLA_PUBL_KEY, align 8
  %182 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %181
  %183 = load %struct.nlattr*, %struct.nlattr** %182, align 8
  %184 = call i64 @nla_get_u32(%struct.nlattr* %183)
  %185 = load i64, i64* @TIPC_NLA_PUBL_SCOPE, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = call i64 @nla_get_u32(%struct.nlattr* %187)
  %189 = getelementptr inbounds [4 x i8*], [4 x i8*]* @tipc_nl_compat_name_table_dump.scope_str, i64 0, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 %184, i8* %190)
  br label %192

192:                                              ; preds = %177, %176, %150, %134
  %193 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %194 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @tipc_tlv_sprintf(i32 %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

197:                                              ; preds = %192, %122, %110, %98, %62, %51, %44, %32
  %198 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #2

declare dso_local i64 @TLV_DATA(i32) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_tlv_sprintf(i32, i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i64) #2

declare dso_local i32 @tipc_zone(i32) #2

declare dso_local i32 @tipc_cluster(i32) #2

declare dso_local i32 @tipc_node(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

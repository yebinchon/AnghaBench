; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_media_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_media_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.tipc_media = type { i64, i8*, i8*, i8*, i8* }
%struct.nlattr = type { i32 }

@TIPC_NLA_BEARER_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_MAX = common dso_local global i32 0, align 4
@tipc_nl_media_policy = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_NAME = common dso_local global i64 0, align 8
@TIPC_NLA_MEDIA_PROP = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_PRIO = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_WIN = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_MTU = common dso_local global i64 0, align 8
@TIPC_MEDIA_TYPE_UDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tipc_nl_media_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tipc_media*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @TIPC_NLA_MEDIA, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

29:                                               ; preds = %2
  %30 = load i32, i32* @TIPC_NLA_MEDIA_MAX, align 4
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @TIPC_NLA_MEDIA, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @tipc_nl_media_policy, align 4
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %30, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i64, i64* @TIPC_NLA_MEDIA_NAME, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

49:                                               ; preds = %29
  %50 = load i64, i64* @TIPC_NLA_MEDIA_NAME, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i8* @nla_data(%struct.nlattr* %52)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call %struct.tipc_media* @tipc_media_find(i8* %54)
  store %struct.tipc_media* %55, %struct.tipc_media** %8, align 8
  %56 = load %struct.tipc_media*, %struct.tipc_media** %8, align 8
  %57 = icmp ne %struct.tipc_media* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

61:                                               ; preds = %49
  %62 = load i64, i64* @TIPC_NLA_MEDIA_PROP, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %136

66:                                               ; preds = %61
  %67 = load i32, i32* @TIPC_NLA_PROP_MAX, align 4
  %68 = add nsw i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %12, align 8
  %71 = alloca %struct.nlattr*, i64 %69, align 16
  store i64 %69, i64* %13, align 8
  %72 = load i64, i64* @TIPC_NLA_MEDIA_PROP, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i32 @tipc_nl_parse_link_prop(%struct.nlattr* %74, %struct.nlattr** %71)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %132

80:                                               ; preds = %66
  %81 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = icmp ne %struct.nlattr* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i8* @nla_get_u32(%struct.nlattr* %88)
  %90 = load %struct.tipc_media*, %struct.tipc_media** %8, align 8
  %91 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i8* @nla_get_u32(%struct.nlattr* %100)
  %102 = load %struct.tipc_media*, %struct.tipc_media** %8, align 8
  %103 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %92
  %105 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = call i8* @nla_get_u32(%struct.nlattr* %112)
  %114 = load %struct.tipc_media*, %struct.tipc_media** %8, align 8
  %115 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %109, %104
  %117 = load i64, i64* @TIPC_NLA_PROP_MTU, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = icmp ne %struct.nlattr* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.tipc_media*, %struct.tipc_media** %8, align 8
  %123 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TIPC_MEDIA_TYPE_UDP, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %132

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %116
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %127, %78
  %133 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %11, align 4
  switch i32 %134, label %137 [
    i32 0, label %135
  ]

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135, %61
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %132, %58, %46, %26
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tipc_media* @tipc_media_find(i8*) #2

declare dso_local i32 @tipc_nl_parse_link_prop(%struct.nlattr*, %struct.nlattr**) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnetlink_put_metrics.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnetlink_put_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@dst_default_metrics = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RTA_METRICS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTAX_MAX = common dso_local global i32 0, align 4
@RTAX_CC_ALGO = common dso_local global i32 0, align 4
@TCP_CA_NAME_MAX = common dso_local global i32 0, align 4
@RTAX_FEATURES = common dso_local global i32 0, align 4
@RTAX_FEATURE_MASK = common dso_local global i32 0, align 4
@DST_FEATURE_MASK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtnetlink_put_metrics(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dst_default_metrics, i32 0, i32 0), align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @RTA_METRICS, align 4
  %21 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %19, i32 %20)
  store %struct.nlattr* %21, %struct.nlattr** %6, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %23 = icmp eq %struct.nlattr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOBUFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %138

27:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %118, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RTAX_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %121

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %117

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RTAX_CC_ALGO, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = load i32, i32* @TCP_CA_NAME_MAX, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %9, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %10, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @tcp_ca_get_name_by_key(i32 %53, i8* %48)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  store i32 4, i32* %12, align 4
  br label %67

58:                                               ; preds = %44
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @nla_put_string(%struct.sk_buff* %59, i32 %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 5, i32* %12, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %65, %66, %57
  %68 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %12, align 4
  switch i32 %69, label %140 [
    i32 0, label %70
    i32 4, label %118
    i32 5, label %132
  ]

70:                                               ; preds = %67
  br label %114

71:                                               ; preds = %39
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @RTAX_FEATURES, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RTAX_FEATURE_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %76
  br label %118

87:                                               ; preds = %76
  %88 = load i32, i32* @RTAX_FEATURE_MASK, align 4
  %89 = load i32, i32* @DST_FEATURE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @BUILD_BUG_ON(i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @nla_put_u32(%struct.sk_buff* %92, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %132

99:                                               ; preds = %87
  br label %113

100:                                              ; preds = %71
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @nla_put_u32(%struct.sk_buff* %101, i32 %103, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %132

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %70
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %32
  br label %118

118:                                              ; preds = %117, %86, %67
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %28

121:                                              ; preds = %28
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %127 = call i32 @nla_nest_cancel(%struct.sk_buff* %125, %struct.nlattr* %126)
  store i32 0, i32* %3, align 4
  br label %138

128:                                              ; preds = %121
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %131 = call i32 @nla_nest_end(%struct.sk_buff* %129, %struct.nlattr* %130)
  store i32 %131, i32* %3, align 4
  br label %138

132:                                              ; preds = %111, %98, %67
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %135 = call i32 @nla_nest_cancel(%struct.sk_buff* %133, %struct.nlattr* %134)
  %136 = load i32, i32* @EMSGSIZE, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %128, %124, %24, %17
  %139 = load i32, i32* %3, align 4
  ret i32 %139

140:                                              ; preds = %67
  unreachable
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @tcp_ca_get_name_by_key(i32, i8*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

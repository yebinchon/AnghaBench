; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.route4_filter = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_ROUTE4_TO = common dso_local global i32 0, align 4
@TCA_ROUTE4_IIF = common dso_local global i32 0, align 4
@TCA_ROUTE4_FROM = common dso_local global i32 0, align 4
@TCA_ROUTE4_CLASSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)* @route4_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route4_dump(%struct.net* %0, %struct.tcf_proto* %1, i8* %2, %struct.sk_buff* %3, %struct.tcmsg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.route4_filter*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store %struct.tcmsg* %4, %struct.tcmsg** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.route4_filter*
  store %struct.route4_filter* %18, %struct.route4_filter** %14, align 8
  %19 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %20 = icmp eq %struct.route4_filter* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %130

25:                                               ; preds = %6
  %26 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %27 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %30 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = load i32, i32* @TCA_OPTIONS, align 4
  %33 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %31, i32 %32)
  store %struct.nlattr* %33, %struct.nlattr** %15, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %35 = icmp eq %struct.nlattr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %126

37:                                               ; preds = %25
  %38 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %39 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 32768
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %45 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  store i32 %47, i32* %16, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = load i32, i32* @TCA_ROUTE4_TO, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %126

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %57 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -2147483648
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %63 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 16
  %66 = icmp ne i32 %65, 65535
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = load i32, i32* @TCA_ROUTE4_IIF, align 4
  %70 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %71 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @nla_put_u32(%struct.sk_buff* %68, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %126

76:                                               ; preds = %67, %61
  br label %89

77:                                               ; preds = %55
  %78 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %79 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 16
  store i32 %81, i32* %16, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = load i32, i32* @TCA_ROUTE4_FROM, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @nla_put_u32(%struct.sk_buff* %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %126

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %76
  %90 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %91 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = load i32, i32* @TCA_ROUTE4_CLASSID, align 4
  %98 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %99 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @nla_put_u32(%struct.sk_buff* %96, i32 %97, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %126

105:                                              ; preds = %95, %89
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %108 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %107, i32 0, i32 3
  %109 = call i64 @tcf_exts_dump(%struct.sk_buff* %106, i32* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %126

112:                                              ; preds = %105
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %115 = call i32 @nla_nest_end(%struct.sk_buff* %113, %struct.nlattr* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %118 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %117, i32 0, i32 3
  %119 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %116, i32* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %126

122:                                              ; preds = %112
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %7, align 4
  br label %130

126:                                              ; preds = %121, %111, %104, %87, %75, %53, %36
  %127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %128 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %129 = call i32 @nla_nest_cancel(%struct.sk_buff* %127, %struct.nlattr* %128)
  store i32 -1, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %122, %21
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

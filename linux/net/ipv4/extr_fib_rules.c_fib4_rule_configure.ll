; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_configure.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i32, i64, i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fib4_rule = type { i32, i64, i8*, i64, i8*, i64, i8*, i8* }
%struct.fib_table = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPTOS_TOS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Invalid tos\00", align 1
@RT_TABLE_UNSPEC = common dso_local global i64 0, align 8
@FR_ACT_TO_TBL = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@FRA_FLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @fib4_rule_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib4_rule_configure(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.fib_rule*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.fib_rule_hdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fib4_rule*, align 8
  %14 = alloca %struct.fib_table*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %11, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %22 = bitcast %struct.fib_rule* %21 to %struct.fib4_rule*
  store %struct.fib4_rule* %22, %struct.fib4_rule** %13, align 8
  %23 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IPTOS_TOS_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %32 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %138

33:                                               ; preds = %5
  %34 = load %struct.net*, %struct.net** %11, align 8
  %35 = call i32 @fib_unmerge(%struct.net* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %138

39:                                               ; preds = %33
  %40 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %41 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RT_TABLE_UNSPEC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %47 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %45
  %51 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %52 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FR_ACT_TO_TBL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.net*, %struct.net** %11, align 8
  %58 = call %struct.fib_table* @fib_empty_table(%struct.net* %57)
  store %struct.fib_table* %58, %struct.fib_table** %14, align 8
  %59 = load %struct.fib_table*, %struct.fib_table** %14, align 8
  %60 = icmp ne %struct.fib_table* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOBUFS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %138

64:                                               ; preds = %56
  %65 = load %struct.fib_table*, %struct.fib_table** %14, align 8
  %66 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %69 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %50
  br label %71

71:                                               ; preds = %70, %45, %39
  %72 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %73 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %78 = load i64, i64* @FRA_SRC, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i8* @nla_get_in_addr(%struct.nlattr* %80)
  %82 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %83 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %71
  %85 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %86 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %91 = load i64, i64* @FRA_DST, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i8* @nla_get_in_addr(%struct.nlattr* %93)
  %95 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %96 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %89, %84
  %98 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %99 = call i64 @fib_rule_requires_fldissect(%struct.fib_rule* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.net*, %struct.net** %11, align 8
  %103 = getelementptr inbounds %struct.net, %struct.net* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %97
  %108 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %109 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %112 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %114 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @inet_make_mask(i64 %115)
  %117 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %118 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %120 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %123 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %125 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @inet_make_mask(i64 %126)
  %128 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %129 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %131 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fib4_rule*, %struct.fib4_rule** %13, align 8
  %134 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.net*, %struct.net** %11, align 8
  %136 = getelementptr inbounds %struct.net, %struct.net* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %107, %61, %38, %30
  %139 = load i32, i32* %12, align 4
  ret i32 %139
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @fib_unmerge(%struct.net*) #1

declare dso_local %struct.fib_table* @fib_empty_table(%struct.net*) #1

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i64 @fib_rule_requires_fldissect(%struct.fib_rule*) #1

declare dso_local i8* @inet_make_mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

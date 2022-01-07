; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_packet_report_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_packet_report_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@NET_DM_MAX_SYMBOL_LEN = common dso_local global i32 0, align 4
@net_drop_monitor_family = common dso_local global i32 0, align 4
@NET_DM_CMD_PACKET_ALERT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NET_DM_ATTR_ORIGIN = common dso_local global i32 0, align 4
@NET_DM_ORIGIN_SW = common dso_local global i32 0, align 4
@NET_DM_ATTR_PC = common dso_local global i32 0, align 4
@NET_DM_ATTR_PAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pS\00", align 1
@NET_DM_ATTR_SYMBOL = common dso_local global i32 0, align 4
@NET_DM_ATTR_TIMESTAMP = common dso_local global i32 0, align 4
@NET_DM_ATTR_ORIG_LEN = common dso_local global i32 0, align 4
@NET_DM_ATTR_PROTO = common dso_local global i32 0, align 4
@NET_DM_ATTR_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff*, i64)* @net_dm_packet_report_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dm_packet_report_fill(%struct.sk_buff* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.TYPE_2__* @NET_DM_SKB_CB(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @NET_DM_MAX_SYMBOL_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @NET_DM_CMD_PACKET_ALERT, align 4
  %26 = call i8* @genlmsg_put(%struct.sk_buff* %24, i32 0, i32 0, i32* @net_drop_monitor_family, i32 0, i32 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %132

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @NET_DM_ATTR_ORIGIN, align 4
  %35 = load i32, i32* @NET_DM_ORIGIN_SW, align 4
  %36 = call i64 @nla_put_u16(%struct.sk_buff* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %126

39:                                               ; preds = %32
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @NET_DM_ATTR_PC, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @NET_DM_ATTR_PAD, align 4
  %44 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %126

47:                                               ; preds = %39
  %48 = trunc i64 %21 to i32
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call %struct.TYPE_2__* @NET_DM_SKB_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @snprintf(i8* %23, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* @NET_DM_ATTR_SYMBOL, align 4
  %56 = call i64 @nla_put_string(%struct.sk_buff* %54, i32 %55, i8* %23)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %126

59:                                               ; preds = %47
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @net_dm_packet_report_in_port_put(%struct.sk_buff* %60, i32 %63, i32* null)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %126

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load i32, i32* @NET_DM_ATTR_TIMESTAMP, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ktime_to_ns(i32 %73)
  %75 = load i32, i32* @NET_DM_ATTR_PAD, align 4
  %76 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %69, i32 %70, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %126

79:                                               ; preds = %68
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load i32, i32* @NET_DM_ATTR_ORIG_LEN, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @nla_put_u32(%struct.sk_buff* %80, i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %126

88:                                               ; preds = %79
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %122

92:                                               ; preds = %88
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load i32, i32* @NET_DM_ATTR_PROTO, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be16_to_cpu(i32 %97)
  %99 = call i64 @nla_put_u16(%struct.sk_buff* %93, i32 %94, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %126

102:                                              ; preds = %92
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @nla_total_size(i64 %104)
  %106 = call %struct.nlattr* @skb_put(%struct.sk_buff* %103, i32 %105)
  store %struct.nlattr* %106, %struct.nlattr** %11, align 8
  %107 = load i32, i32* @NET_DM_ATTR_PAYLOAD, align 4
  %108 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %109 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @nla_attr_size(i64 %110)
  %112 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %113 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %116 = call i32 @nla_data(%struct.nlattr* %115)
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @skb_copy_bits(%struct.sk_buff* %114, i32 0, i32 %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %102
  br label %126

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %91
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @genlmsg_end(%struct.sk_buff* %123, i8* %124)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %132

126:                                              ; preds = %120, %101, %87, %78, %67, %58, %46, %38
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @genlmsg_cancel(%struct.sk_buff* %127, i8* %128)
  %130 = load i32, i32* @EMSGSIZE, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %126, %122, %29
  %133 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_2__* @NET_DM_SKB_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @net_dm_packet_report_in_port_put(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.nlattr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_total_size(i64) #1

declare dso_local i32 @nla_attr_size(i64) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

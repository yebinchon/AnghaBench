; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_geneve_opts_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_geneve_opts_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { i32 }
%struct.nlattr = type { i32 }
%struct.geneve_opt = type { i32, i32, i32 }

@TCA_TUNNEL_KEY_ENC_OPTS_GENEVE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_OPT_GENEVE_CLASS = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_OPT_GENEVE_TYPE = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_tunnel_info*)* @tunnel_key_geneve_opts_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel_key_geneve_opts_dump(%struct.sk_buff* %0, %struct.ip_tunnel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_tunnel_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.geneve_opt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_tunnel_info* %1, %struct.ip_tunnel_info** %5, align 8
  %10 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %14 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %13, i64 1
  %15 = bitcast %struct.ip_tunnel_info* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @TCA_TUNNEL_KEY_ENC_OPTS_GENEVE, align 4
  %18 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %16, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %8, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to %struct.geneve_opt*
  store %struct.geneve_opt* %30, %struct.geneve_opt** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_CLASS, align 4
  %33 = load %struct.geneve_opt*, %struct.geneve_opt** %9, align 8
  %34 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_be16(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_TYPE, align 4
  %41 = load %struct.geneve_opt*, %struct.geneve_opt** %9, align 8
  %42 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u8(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA, align 4
  %49 = load %struct.geneve_opt*, %struct.geneve_opt** %9, align 8
  %50 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 4
  %53 = load %struct.geneve_opt*, %struct.geneve_opt** %9, align 8
  %54 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %53, i64 1
  %55 = call i64 @nla_put(%struct.sk_buff* %47, i32 %48, i32 %52, %struct.geneve_opt* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46, %38, %28
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %60 = call i32 @nla_nest_cancel(%struct.sk_buff* %58, %struct.nlattr* %59)
  %61 = load i32, i32* @EMSGSIZE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %86

63:                                               ; preds = %46
  %64 = load %struct.geneve_opt*, %struct.geneve_opt** %9, align 8
  %65 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = add i64 12, %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load %struct.geneve_opt*, %struct.geneve_opt** %9, align 8
  %75 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = add i64 12, %78
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %7, align 8
  br label %25

82:                                               ; preds = %25
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %85 = call i32 @nla_nest_end(%struct.sk_buff* %83, %struct.nlattr* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %57, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.geneve_opt*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

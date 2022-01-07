; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_geneve_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_geneve_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector_key_enc_opts = type { i32, i32* }
%struct.geneve_opt = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_FLOWER_KEY_ENC_OPTS_GENEVE = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.flow_dissector_key_enc_opts*)* @fl_dump_key_geneve_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_dump_key_geneve_opt(%struct.sk_buff* %0, %struct.flow_dissector_key_enc_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.flow_dissector_key_enc_opts*, align 8
  %6 = alloca %struct.geneve_opt*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.flow_dissector_key_enc_opts* %1, %struct.flow_dissector_key_enc_opts** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPTS_GENEVE, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %7, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %75

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %60, %15
  %17 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %5, align 8
  %18 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %5, align 8
  %24 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to %struct.geneve_opt*
  store %struct.geneve_opt* %29, %struct.geneve_opt** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS, align 4
  %32 = load %struct.geneve_opt*, %struct.geneve_opt** %6, align 8
  %33 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_be16(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %75

38:                                               ; preds = %22
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE, align 4
  %41 = load %struct.geneve_opt*, %struct.geneve_opt** %6, align 8
  %42 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u8(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %75

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA, align 4
  %50 = load %struct.geneve_opt*, %struct.geneve_opt** %6, align 8
  %51 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 4
  %54 = load %struct.geneve_opt*, %struct.geneve_opt** %6, align 8
  %55 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_put(%struct.sk_buff* %48, i32 %49, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %75

60:                                               ; preds = %47
  %61 = load %struct.geneve_opt*, %struct.geneve_opt** %6, align 8
  %62 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = add i64 16, %65
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %16

71:                                               ; preds = %16
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %74 = call i32 @nla_nest_end(%struct.sk_buff* %72, %struct.nlattr* %73)
  store i32 0, i32* %3, align 4
  br label %81

75:                                               ; preds = %59, %46, %37, %14
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %78 = call i32 @nla_nest_cancel(%struct.sk_buff* %76, %struct.nlattr* %77)
  %79 = load i32, i32* @EMSGSIZE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

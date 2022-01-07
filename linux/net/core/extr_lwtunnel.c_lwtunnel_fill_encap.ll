; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_fill_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_fill_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lwtunnel_state = type { i64 }
%struct.lwtunnel_encap_ops = type { i32 (%struct.sk_buff*, %struct.lwtunnel_state*)* }
%struct.nlattr = type { i32 }

@LWTUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@LWTUNNEL_ENCAP_MAX = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@lwtun_encaps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_fill_encap(%struct.sk_buff* %0, %struct.lwtunnel_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.lwtunnel_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lwtunnel_encap_ops*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %7, align 8
  %14 = icmp ne %struct.lwtunnel_state* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

16:                                               ; preds = %4
  %17 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %7, align 8
  %18 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LWTUNNEL_ENCAP_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %7, align 8
  %24 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LWTUNNEL_ENCAP_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16
  store i32 0, i32* %5, align 4
  br label %100

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %30, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %11, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EMSGSIZE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %100

38:                                               ; preds = %29
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load i32*, i32** @lwtun_encaps, align 8
  %43 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %7, align 8
  %44 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.lwtunnel_encap_ops* @rcu_dereference(i32 %47)
  store %struct.lwtunnel_encap_ops* %48, %struct.lwtunnel_encap_ops** %10, align 8
  %49 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %10, align 8
  %50 = icmp ne %struct.lwtunnel_encap_ops* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %10, align 8
  %53 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.sk_buff*, %struct.lwtunnel_state*)*, i32 (%struct.sk_buff*, %struct.lwtunnel_state*)** %53, align 8
  %55 = icmp ne i32 (%struct.sk_buff*, %struct.lwtunnel_state*)* %54, null
  br label %56

56:                                               ; preds = %51, %38
  %57 = phi i1 [ false, %38 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %10, align 8
  %63 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.sk_buff*, %struct.lwtunnel_state*)*, i32 (%struct.sk_buff*, %struct.lwtunnel_state*)** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %7, align 8
  %67 = call i32 %64(%struct.sk_buff* %65, %struct.lwtunnel_state* %66)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = call i32 (...) @rcu_read_unlock()
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %87

73:                                               ; preds = %68
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %76 = call i32 @nla_nest_end(%struct.sk_buff* %74, %struct.nlattr* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %7, align 8
  %80 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @nla_put_u16(%struct.sk_buff* %77, i32 %78, i64 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %87

86:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %100

87:                                               ; preds = %85, %72
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %90 = call i32 @nla_nest_cancel(%struct.sk_buff* %88, %struct.nlattr* %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %95
  %99 = phi i32 [ 0, %95 ], [ %97, %96 ]
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %86, %35, %28, %15
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.lwtunnel_encap_ops* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

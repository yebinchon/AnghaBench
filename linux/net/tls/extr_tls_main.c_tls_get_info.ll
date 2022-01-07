; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tls_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@INET_ULP_INFO_TLS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TLS_INFO_VERSION = common dso_local global i32 0, align 4
@TLS_INFO_CIPHER = common dso_local global i32 0, align 4
@TLS_INFO_TXCONF = common dso_local global i32 0, align 4
@TLS_INFO_RXCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tls_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_get_info(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tls_context*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @INET_ULP_INFO_TLS, align 4
  %13 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %9, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EMSGSIZE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tls_context* @rcu_dereference(i32 %24)
  store %struct.tls_context* %25, %struct.tls_context** %8, align 8
  %26 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %27 = icmp ne %struct.tls_context* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %84

29:                                               ; preds = %19
  %30 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %31 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @TLS_INFO_VERSION, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @nla_put_u16(%struct.sk_buff* %37, i32 %38, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %84

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %47 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @TLS_INFO_CIPHER, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @nla_put_u16(%struct.sk_buff* %53, i32 %54, i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %84

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load i32, i32* @TLS_INFO_TXCONF, align 4
  %64 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %65 = call i64 @tls_user_config(%struct.tls_context* %64, i32 1)
  %66 = call i32 @nla_put_u16(%struct.sk_buff* %62, i32 %63, i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %84

70:                                               ; preds = %61
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i32, i32* @TLS_INFO_RXCONF, align 4
  %73 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %74 = call i64 @tls_user_config(%struct.tls_context* %73, i32 0)
  %75 = call i32 @nla_put_u16(%struct.sk_buff* %71, i32 %72, i64 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %84

79:                                               ; preds = %70
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %83 = call i32 @nla_nest_end(%struct.sk_buff* %81, %struct.nlattr* %82)
  store i32 0, i32* %3, align 4
  br label %90

84:                                               ; preds = %78, %69, %59, %43, %28
  %85 = call i32 (...) @rcu_read_unlock()
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %88 = call i32 @nla_nest_cancel(%struct.sk_buff* %86, %struct.nlattr* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %79, %16
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tls_context* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @tls_user_config(%struct.tls_context*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

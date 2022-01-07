; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_helper.c_helper_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_helper.c_helper_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_helper_info* }
%struct.xt_helper_info = type { i32, i8* }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_helper = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @helper_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helper_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_helper_info*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.nf_conn_help*, align 8
  %9 = alloca %struct.nf_conntrack_helper*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load %struct.xt_helper_info*, %struct.xt_helper_info** %13, align 8
  store %struct.xt_helper_info* %14, %struct.xt_helper_info** %6, align 8
  %15 = load %struct.xt_helper_info*, %struct.xt_helper_info** %6, align 8
  %16 = getelementptr inbounds %struct.xt_helper_info, %struct.xt_helper_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %18, i32* %10)
  store %struct.nf_conn* %19, %struct.nf_conn** %7, align 8
  %20 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %21 = icmp ne %struct.nf_conn* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %24 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %22
  %30 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %31 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.nf_conn_help* @nfct_help(i32 %32)
  store %struct.nf_conn_help* %33, %struct.nf_conn_help** %8, align 8
  %34 = load %struct.nf_conn_help*, %struct.nf_conn_help** %8, align 8
  %35 = icmp ne %struct.nf_conn_help* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %29
  %39 = load %struct.nf_conn_help*, %struct.nf_conn_help** %8, align 8
  %40 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %41)
  store %struct.nf_conntrack_helper* %42, %struct.nf_conntrack_helper** %9, align 8
  %43 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %44 = icmp ne %struct.nf_conntrack_helper* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %79

47:                                               ; preds = %38
  %48 = load %struct.xt_helper_info*, %struct.xt_helper_info** %6, align 8
  %49 = getelementptr inbounds %struct.xt_helper_info, %struct.xt_helper_info* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %11, align 4
  br label %77

60:                                               ; preds = %47
  %61 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xt_helper_info*, %struct.xt_helper_info** %6, align 8
  %65 = getelementptr inbounds %struct.xt_helper_info, %struct.xt_helper_info* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %68 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = call i32 @strncmp(i32 %63, i8* %66, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %11, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %60, %55
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %45, %36, %27
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(i32) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

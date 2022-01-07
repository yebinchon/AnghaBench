; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_resolve_normal_ct.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_resolve_normal_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32, i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Can't get tuple\0A\00", align 1
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@IP_CT_ESTABLISHED_REPLY = common dso_local global i32 0, align 4
@IPS_SEEN_REPLY_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"normal packet for %p\0A\00", align 1
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"related packet for %p\0A\00", align 1
@IP_CT_RELATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"new packet for %p\0A\00", align 1
@IP_CT_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32, i32, %struct.nf_hook_state*)* @resolve_normal_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_normal_ct(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.nf_hook_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_hook_state*, align 8
  %12 = alloca %struct.nf_conntrack_zone*, align 8
  %13 = alloca %struct.nf_conntrack_tuple, align 4
  %14 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nf_conntrack_zone, align 4
  %17 = alloca %struct.nf_conn*, align 8
  %18 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nf_hook_state* %4, %struct.nf_hook_state** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call i32 @skb_network_offset(%struct.sk_buff* %20)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %24 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %28 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nf_ct_get_tuple(%struct.sk_buff* %19, i32 %21, i32 %22, i32 %25, i32 %26, i32 %29, %struct.nf_conntrack_tuple* %13)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %5
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %110

34:                                               ; preds = %5
  %35 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call %struct.nf_conntrack_zone* @nf_ct_zone_tmpl(%struct.nf_conn* %35, %struct.sk_buff* %36, %struct.nf_conntrack_zone* %16)
  store %struct.nf_conntrack_zone* %37, %struct.nf_conntrack_zone** %12, align 8
  %38 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %39 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hash_conntrack_raw(%struct.nf_conntrack_tuple* %13, i32 %40)
  store i32 %41, i32* %18, align 4
  %42 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %43 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %12, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find_get(i32 %44, %struct.nf_conntrack_zone* %45, %struct.nf_conntrack_tuple* %13, i32 %46)
  store %struct.nf_conntrack_tuple_hash* %47, %struct.nf_conntrack_tuple_hash** %14, align 8
  %48 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %49 = icmp ne %struct.nf_conntrack_tuple_hash* %48, null
  br i1 %49, label %70, label %50

50:                                               ; preds = %34
  %51 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %52 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call %struct.nf_conntrack_tuple_hash* @init_conntrack(i32 %53, %struct.nf_conn* %54, %struct.nf_conntrack_tuple* %13, %struct.sk_buff* %55, i32 %56, i32 %57)
  store %struct.nf_conntrack_tuple_hash* %58, %struct.nf_conntrack_tuple_hash** %14, align 8
  %59 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %60 = icmp ne %struct.nf_conntrack_tuple_hash* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %110

62:                                               ; preds = %50
  %63 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %64 = call i64 @IS_ERR(%struct.nf_conntrack_tuple_hash* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %68 = call i32 @PTR_ERR(%struct.nf_conntrack_tuple_hash* %67)
  store i32 %68, i32* %6, align 4
  br label %110

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %72 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %71)
  store %struct.nf_conn* %72, %struct.nf_conn** %17, align 8
  %73 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %74 = call i64 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash* %73)
  %75 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @IP_CT_ESTABLISHED_REPLY, align 4
  store i32 %78, i32* %15, align 4
  br label %105

79:                                               ; preds = %70
  %80 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %81 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %82 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %81, i32 0, i32 0
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %87 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.nf_conn* %86)
  %88 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  store i32 %88, i32* %15, align 4
  br label %104

89:                                               ; preds = %79
  %90 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %91 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %92 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %91, i32 0, i32 0
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.nf_conn* %96)
  %98 = load i32, i32* @IP_CT_RELATED, align 4
  store i32 %98, i32* %15, align 4
  br label %103

99:                                               ; preds = %89
  %100 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %101 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.nf_conn* %100)
  %102 = load i32, i32* @IP_CT_NEW, align 4
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %85
  br label %105

105:                                              ; preds = %104, %77
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @nf_ct_set(%struct.sk_buff* %106, %struct.nf_conn* %107, i32 %108)
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %105, %66, %61, %32
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @nf_ct_get_tuple(%struct.sk_buff*, i32, i32, i32, i32, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.nf_conntrack_zone* @nf_ct_zone_tmpl(%struct.nf_conn*, %struct.sk_buff*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @hash_conntrack_raw(%struct.nf_conntrack_tuple*, i32) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find_get(i32, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @init_conntrack(i32, %struct.nf_conn*, %struct.nf_conntrack_tuple*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @PTR_ERR(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, %struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

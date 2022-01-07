; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmpv6.c_nf_conntrack_icmpv6_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmpv6.c_nf_conntrack_icmpv6_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i64 }

@nf_conntrack_icmpv6_packet.valid_new = internal constant [2 x i32] [i32 1, i32 1], align 4
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"icmpv6: can't create new conn with type %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_icmpv6_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, %struct.nf_hook_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_hook_state*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nf_hook_state* %3, %struct.nf_hook_state** %9, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %13 = call i32* @nf_ct_timeout_lookup(%struct.nf_conn* %12)
  store i32* %13, i32** %10, align 8
  %14 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %15 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFPROTO_IPV6, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @NF_ACCEPT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %78

22:                                               ; preds = %4
  %23 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %24 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %22
  %27 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 128
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 8
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* @nf_conntrack_icmpv6_packet.valid_new, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44, %40, %26
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 128
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %55 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @nf_ct_dump_tuple_ipv6(%struct.TYPE_10__* %58)
  %60 = load i32, i32* @NF_ACCEPT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %78

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %22
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %68 = call i32 @nf_ct_net(%struct.nf_conn* %67)
  %69 = call i32* @icmpv6_get_timeouts(i32 %68)
  store i32* %69, i32** %10, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %71, i32 %72, %struct.sk_buff* %73, i32 %75)
  %77 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %70, %50, %19
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32* @nf_ct_timeout_lookup(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @nf_ct_dump_tuple_ipv6(%struct.TYPE_10__*) #1

declare dso_local i32* @icmpv6_get_timeouts(i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

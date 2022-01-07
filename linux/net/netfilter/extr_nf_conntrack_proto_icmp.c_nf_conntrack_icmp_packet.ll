; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_nf_conntrack_icmp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_nf_conntrack_icmp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i64 }
%struct.TYPE_11__ = type { i32 }

@nf_conntrack_icmp_packet.valid_new = internal constant [132 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1], align 16
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"icmp: can't create new conn with type %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_icmp_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, %struct.nf_hook_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_hook_state*, align 8
  %10 = alloca i32*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nf_hook_state* %3, %struct.nf_hook_state** %9, align 8
  %11 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %12 = call i32* @nf_ct_timeout_lookup(%struct.nf_conn* %11)
  store i32* %12, i32** %10, align 8
  %13 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %14 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NFPROTO_IPV4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @NF_ACCEPT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %86

21:                                               ; preds = %4
  %22 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %23 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 528
  br i1 %33, label %49, label %34

34:                                               ; preds = %21
  %35 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %36 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [132 x i32], [132 x i32]* @nf_conntrack_icmp_packet.valid_new, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %34, %21
  %50 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %51 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %63 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = call i32 @nf_ct_dump_tuple_ip(%struct.TYPE_12__* %66)
  %68 = load i32, i32* @NF_ACCEPT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %86

70:                                               ; preds = %34
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %75 = call i32 @nf_ct_net(%struct.nf_conn* %74)
  %76 = call %struct.TYPE_11__* @nf_icmp_pernet(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %79, i32 %80, %struct.sk_buff* %81, i32 %83)
  %85 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %78, %49, %18
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32* @nf_ct_timeout_lookup(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @nf_ct_dump_tuple_ip(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @nf_icmp_pernet(i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

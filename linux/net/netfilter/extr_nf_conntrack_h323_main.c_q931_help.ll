; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_q931_help.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_q931_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@q931_help.q931 = internal global i32 0, align 4
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED_REPLY = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nf_ct_q931: skblen = %u\0A\00", align 1
@nf_h323_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"nf_ct_q931: TPKT len=%d \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"nf_ct_q931: decoding error: %s\0A\00", align 1
@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"out of bound\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot process Q.931 message\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @q931_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q931_help(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IP_CT_ESTABLISHED_REPLY, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %22, i32* %5, align 4
  br label %78

23:                                               ; preds = %17, %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @spin_lock_bh(i32* @nf_h323_lock)
  br label %29

29:                                               ; preds = %68, %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @get_tpkt_data(%struct.sk_buff* %30, i32 %31, %struct.nf_conn* %32, i32 %33, i8** %10, i32* %11, i32* %12)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @CTINFO2DIR(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @nf_ct_dump_tuple(i32* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @DecodeQ931(i8* %47, i32 %48, i32* @q931_help.q931)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %36
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @H323_ERROR_BOUND, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %69

59:                                               ; preds = %36
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @process_q931(%struct.sk_buff* %60, %struct.nf_conn* %61, i32 %62, i32 %63, i8** %10, i32 %64, i32* @q931_help.q931)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %72

68:                                               ; preds = %59
  br label %29

69:                                               ; preds = %52, %29
  %70 = call i32 @spin_unlock_bh(i32* @nf_h323_lock)
  %71 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %71, i32* %5, align 4
  br label %78

72:                                               ; preds = %67
  %73 = call i32 @spin_unlock_bh(i32* @nf_h323_lock)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %76 = call i32 @nf_ct_helper_log(%struct.sk_buff* %74, %struct.nf_conn* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @NF_DROP, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %69, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @get_tpkt_data(%struct.sk_buff*, i32, %struct.nf_conn*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @nf_ct_dump_tuple(i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @DecodeQ931(i8*, i32, i32*) #1

declare dso_local i64 @process_q931(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

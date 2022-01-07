; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_ras_help.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_ras_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ras_help.ras = internal global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nf_ct_ras: skblen = %u\0A\00", align 1
@nf_h323_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"nf_ct_ras: RAS message len=%d \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"nf_ct_ras: decoding error: %s\0A\00", align 1
@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"out of bound\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cannot process RAS message\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @ras_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ras_help(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @spin_lock_bh(i32* @nf_h323_lock)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @get_udp_data(%struct.sk_buff* %18, i32 %19, i32* %11)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %56

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @CTINFO2DIR(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @nf_ct_dump_tuple(i32* %33)
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @DecodeRasMessage(i8* %35, i32 %36, i32* @ras_help.ras)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @H323_ERROR_BOUND, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %46 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %56

47:                                               ; preds = %24
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @process_ras(%struct.sk_buff* %48, %struct.nf_conn* %49, i32 %50, i32 %51, i8** %10, i32* @ras_help.ras)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %59

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %40, %23
  %57 = call i32 @spin_unlock_bh(i32* @nf_h323_lock)
  %58 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %54
  %60 = call i32 @spin_unlock_bh(i32* @nf_h323_lock)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %63 = call i32 @nf_ct_helper_log(%struct.sk_buff* %61, %struct.nf_conn* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* @NF_DROP, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @get_udp_data(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @nf_ct_dump_tuple(i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @DecodeRasMessage(i8*, i32, i32*) #1

declare dso_local i64 @process_ras(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

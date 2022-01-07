; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid3_hc_tx_sock = type { i32, i32 }

@DCCP_PKT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s(%p), invalid len %d for %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s(%p), RECEIVE_RATE=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s(%p), LOSS_EVENT_RATE=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32, i32*, i32)* @ccid3_hc_tx_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid3_hc_tx_parse_options(%struct.sock* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %14)
  store %struct.ccid3_hc_tx_sock* %15, %struct.ccid3_hc_tx_sock** %12, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %67 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %5, %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @DCCP_PKT_DATA, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %67

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 4
  %25 = zext i1 %24 to i32
  %26 = call i32 @unlikely(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %7, align 8
  %30 = call i32 @dccp_role(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30, %struct.sock* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %68

37:                                               ; preds = %22
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @get_unaligned(i32* %38)
  %40 = call i32 @ntohl(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %12, align 8
  %46 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %12, align 8
  %48 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 6
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = call i32 @dccp_role(%struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.sock* %53, i32 %54)
  br label %66

56:                                               ; preds = %37
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @tfrc_invert_loss_event_rate(i32 %57)
  %59 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %12, align 8
  %60 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = call i32 @dccp_role(%struct.sock* %61)
  %63 = load %struct.sock*, %struct.sock** %7, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %62, %struct.sock* %63, i32 %64)
  br label %66

66:                                               ; preds = %56, %43
  br label %67

67:                                               ; preds = %66, %5, %21
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %28
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @DCCP_WARN(i8*, i32, %struct.sock*, i32, i32) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i32, %struct.sock*, i32) #1

declare dso_local i32 @tfrc_invert_loss_event_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

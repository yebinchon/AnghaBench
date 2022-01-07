; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_mangle_content_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_mangle_content_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }

@SDP_HDR_VERSION = common dso_local global i32 0, align 4
@SDP_HDR_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v=\00", align 1
@SIP_HDR_CONTENT_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*)* @mangle_content_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mangle_content_len(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i8], align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %19, i32* %12)
  store %struct.nf_conn* %20, %struct.nf_conn** %13, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %22 = load i8**, i8*** %10, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SDP_HDR_VERSION, align 4
  %27 = load i32, i32* @SDP_HDR_UNSPEC, align 4
  %28 = call i64 @ct_sip_get_sdp_header(%struct.nf_conn* %21, i8* %23, i32 0, i32 %25, i32 %26, i32 %27, i32* %14, i32* %15)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %61

31:                                               ; preds = %5
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = sub i32 %33, %34
  %36 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = add i32 %35, %36
  store i32 %37, i32* %18, align 4
  %38 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %39 = load i8**, i8*** %10, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SIP_HDR_CONTENT_LENGTH, align 4
  %44 = call i64 @ct_sip_get_header(%struct.nf_conn* %38, i8* %40, i32 0, i32 %42, i32 %43, i32* %14, i32* %15)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %61

47:                                               ; preds = %31
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %16, i64 0, i64 0
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i8**, i8*** %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %16, i64 0, i64 0
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @mangle_packet(%struct.sk_buff* %51, i32 %52, i32 %53, i8** %54, i32* %55, i32 %56, i32 %57, i8* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %47, %46, %30
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @ct_sip_get_sdp_header(%struct.nf_conn*, i8*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mangle_packet(%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

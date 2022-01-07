; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_mangle_sdp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_mangle_sdp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i32, i8*, i32)* @mangle_sdp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mangle_sdp_packet(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.nf_conn*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i8** %3, i8*** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %27 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %26, i32* %22)
  store %struct.nf_conn* %27, %struct.nf_conn** %23, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %23, align 8
  %29 = load i8**, i8*** %15, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %19, align 4
  %36 = call i64 @ct_sip_get_sdp_header(%struct.nf_conn* %28, i8* %30, i32 %31, i32 %33, i32 %34, i32 %35, i32* %25, i32* %24)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %10
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %59

41:                                               ; preds = %10
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i8**, i8*** %15, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %25, align 4
  %48 = load i32, i32* %24, align 4
  %49 = load i8*, i8** %20, align 8
  %50 = load i32, i32* %21, align 4
  %51 = call i64 @mangle_packet(%struct.sk_buff* %42, i32 %43, i32 %44, i8** %45, i32* %46, i32 %47, i32 %48, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @ct_sip_get_sdp_header(%struct.nf_conn*, i8*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @mangle_packet(%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

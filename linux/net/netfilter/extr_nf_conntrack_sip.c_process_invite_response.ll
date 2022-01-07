; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_invite_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_invite_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_ct_sip_master = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)* @process_invite_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_invite_response(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_conn*, align 8
  %18 = alloca %struct.nf_ct_sip_master*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %19, i32* %16)
  store %struct.nf_conn* %20, %struct.nf_conn** %17, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %22 = call %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn* %21)
  store %struct.nf_ct_sip_master* %22, %struct.nf_ct_sip_master** %18, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp uge i32 %23, 100
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* %15, align 4
  %27 = icmp ule i32 %26, 199
  br i1 %27, label %34, label %28

28:                                               ; preds = %25, %7
  %29 = load i32, i32* %15, align 4
  %30 = icmp uge i32 %29, 200
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = icmp ule i32 %32, 299
  br i1 %33, label %34, label %42

34:                                               ; preds = %31, %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i8**, i8*** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @process_sdp(%struct.sk_buff* %35, i32 %36, i32 %37, i8** %38, i32* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %54

42:                                               ; preds = %31, %28
  %43 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %18, align 8
  %44 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %50 = call i32 @flush_expectations(%struct.nf_conn* %49, i32 1)
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %34
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @process_sdp(%struct.sk_buff*, i32, i32, i8**, i32*, i32) #1

declare dso_local i32 @flush_expectations(%struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

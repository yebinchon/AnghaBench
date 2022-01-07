; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_sip_sprintf_addr_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_sip_sprintf_addr_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%pI4:%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[%pI6c]:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, %union.nf_inet_addr*, i32)* @sip_sprintf_addr_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sip_sprintf_addr_port(%struct.nf_conn* %0, i8* %1, %union.nf_inet_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.nf_inet_addr*, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i8* %1, i8** %7, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %11 = call i64 @nf_ct_l3num(%struct.nf_conn* %10)
  %12 = load i64, i64* @NFPROTO_IPV4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %17 = bitcast %union.nf_inet_addr* %16 to i32*
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %23 = bitcast %union.nf_inet_addr* %22 to i32*
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i64 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

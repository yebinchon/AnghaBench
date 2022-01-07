; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_sip_sprintf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_sip_sprintf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[%pI6c]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%pI6c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, %union.nf_inet_addr*, i32)* @sip_sprintf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sip_sprintf_addr(%struct.nf_conn* %0, i8* %1, %union.nf_inet_addr* %2, i32 %3) #0 {
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
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %17 = bitcast %union.nf_inet_addr* %16 to i32*
  %18 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32 %18, i32* %5, align 4
  br label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %25 = bitcast %union.nf_inet_addr* %24 to i32*
  %26 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %30 = bitcast %union.nf_inet_addr* %29 to i32*
  %31 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %22, %14
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

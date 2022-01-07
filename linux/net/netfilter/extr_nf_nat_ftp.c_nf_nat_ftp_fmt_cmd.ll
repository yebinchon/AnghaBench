; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_ftp.c_nf_nat_ftp_fmt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_ftp.c_nf_nat_ftp_fmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%u,%u,%u,%u,%u,%u\00", align 1
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"|1|%pI4|%u|\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"|2|%pI6|%u|\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"|||%u|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i32, i8*, i64, %union.nf_inet_addr*, i32)* @nf_nat_ftp_fmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_ftp_fmt_cmd(%struct.nf_conn* %0, i32 %1, i8* %2, i64 %3, %union.nf_inet_addr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.nf_inet_addr*, align 8
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %union.nf_inet_addr* %4, %union.nf_inet_addr** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %73 [
    i32 128, label %15
    i32 129, label %15
    i32 131, label %47
    i32 130, label %68
  ]

15:                                               ; preds = %6, %6
  %16 = load i8*, i8** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %19 = bitcast %union.nf_inet_addr* %18 to i32*
  %20 = bitcast i32* %19 to i8*
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 4
  %23 = zext i8 %22 to i32
  %24 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %25 = bitcast %union.nf_inet_addr* %24 to i32*
  %26 = bitcast i32* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %31 = bitcast %union.nf_inet_addr* %30 to i32*
  %32 = bitcast i32* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 2
  %35 = zext i8 %34 to i32
  %36 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %37 = bitcast %union.nf_inet_addr* %36 to i32*
  %38 = bitcast i32* %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %13, align 4
  %43 = ashr i32 %42, 8
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, 255
  %46 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %16, i64 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29, i32 %35, i32 %41, i32 %43, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %74

47:                                               ; preds = %6
  %48 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %49 = call i32 @nf_ct_l3num(%struct.nf_conn* %48)
  %50 = load i32, i32* @NFPROTO_IPV4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %56 = bitcast %union.nf_inet_addr* %55 to i32*
  %57 = ptrtoint i32* %56 to i32
  %58 = load i32, i32* %13, align 4
  %59 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %74

60:                                               ; preds = %47
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %64 = bitcast %union.nf_inet_addr* %63 to i32*
  %65 = ptrtoint i32* %64 to i32
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %74

68:                                               ; preds = %6
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %7, align 4
  br label %74

73:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %68, %60, %52, %15
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

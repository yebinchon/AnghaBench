; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_epaddr_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_epaddr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ip: %s parse failed.!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i8*, i32*)* @epaddr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epaddr_len(%struct.nf_conn* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.nf_inet_addr, align 4
  %11 = alloca i8*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %11, align 8
  %13 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @sip_parse_addr(%struct.nf_conn* %13, i8* %14, i8** %7, %union.nf_inet_addr* %10, i8* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 0, i32* %5, align 4
  br label %44

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  %29 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @digits_len(%struct.nf_conn* %29, i8* %30, i8* %31, i32* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %26, %21
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %37, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @sip_parse_addr(%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @digits_len(%struct.nf_conn*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

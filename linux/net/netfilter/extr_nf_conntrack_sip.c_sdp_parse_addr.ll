; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sdp_parse_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sdp_parse_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*)* @sdp_parse_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_parse_addr(%struct.nf_conn* %0, i8* %1, i8** %2, %union.nf_inet_addr* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %union.nf_inet_addr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %15 = call i32 @memset(%union.nf_inet_addr* %14, i32 0, i32 4)
  %16 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %17 = call i32 @nf_ct_l3num(%struct.nf_conn* %16)
  switch i32 %17, label %40 [
    i32 129, label %18
    i32 128, label %29
  ]

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %27 = bitcast %union.nf_inet_addr* %26 to i32*
  %28 = call i32 @in4_pton(i8* %19, i32 %25, i32* %27, i32 -1, i8** %12)
  store i32 %28, i32* %13, align 4
  br label %42

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %38 = bitcast %union.nf_inet_addr* %37 to i32*
  %39 = call i32 @in6_pton(i8* %30, i32 %36, i32* %38, i32 -1, i8** %12)
  store i32 %39, i32* %13, align 4
  br label %42

40:                                               ; preds = %5
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %40, %29, %18
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %53

46:                                               ; preds = %42
  %47 = load i8**, i8*** %9, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %12, align 8
  %51 = load i8**, i8*** %9, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%union.nf_inet_addr*, i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @in4_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i32 @in6_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

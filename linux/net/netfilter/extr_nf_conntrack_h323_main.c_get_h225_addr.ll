; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_get_h225_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_get_h225_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_h225_addr(%struct.nf_conn* %0, i8* %1, %struct.TYPE_7__* %2, %union.nf_inet_addr* %3, %union.nf_inet_addr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %union.nf_inet_addr*, align 8
  %11 = alloca %union.nf_inet_addr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %10, align 8
  store %union.nf_inet_addr* %4, %union.nf_inet_addr** %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %45 [
    i32 128, label %17
    i32 129, label %31
  ]

17:                                               ; preds = %5
  %18 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %19 = call i32 @nf_ct_l3num(%struct.nf_conn* %18)
  %20 = load i32, i32* @AF_INET, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %67

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  store i8* %30, i8** %12, align 8
  store i32 4, i32* %13, align 4
  br label %46

31:                                               ; preds = %5
  %32 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %33 = call i32 @nf_ct_l3num(%struct.nf_conn* %32)
  %34 = load i32, i32* @AF_INET6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %67

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  store i8* %44, i8** %12, align 8
  store i32 16, i32* %13, align 4
  br label %46

45:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %67

46:                                               ; preds = %37, %23
  %47 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @memcpy(%union.nf_inet_addr* %47, i8* %48, i32 %49)
  %51 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %52 = bitcast %union.nf_inet_addr* %51 to i8*
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(i8* %55, i32 0, i32 %59)
  %61 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @memcpy(%union.nf_inet_addr* %61, i8* %65, i32 4)
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %46, %45, %36, %22
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @memcpy(%union.nf_inet_addr*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

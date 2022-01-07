; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_h245.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_h245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@eRequestMessage_openLogicalChannel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"nf_ct_h323: H.245 Request %d\0A\00", align 1
@eResponseMessage_openLogicalChannelAck = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"nf_ct_h323: H.245 Response %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"nf_ct_h323: H.245 signal %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, %struct.TYPE_7__*)* @process_h245 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_h245(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, %struct.TYPE_7__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %67 [
    i32 129, label %19
    i32 128, label %43
  ]

19:                                               ; preds = %7
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @eRequestMessage_openLogicalChannel, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i8**, i8*** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = call i32 @process_olc(%struct.sk_buff* %27, %struct.nf_conn* %28, i32 %29, i32 %30, i8** %31, i32 %32, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %73

37:                                               ; preds = %19
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %72

43:                                               ; preds = %7
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @eResponseMessage_openLogicalChannelAck, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i8**, i8*** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = call i32 @process_olca(%struct.sk_buff* %51, %struct.nf_conn* %52, i32 %53, i32 %54, i8** %55, i32 %56, i32* %59)
  store i32 %60, i32* %8, align 4
  br label %73

61:                                               ; preds = %43
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %72

67:                                               ; preds = %7
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %67, %61, %37
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %50, %26
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @process_olc(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @process_olca(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

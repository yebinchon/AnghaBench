; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_debug.c_sctp_cname.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_debug.c_sctp_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_subtype = type { i64 }

@SCTP_CID_BASE_MAX = common dso_local global i64 0, align 8
@sctp_cid_tbl = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"ASCONF\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ASCONF_ACK\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FWD_TSN\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"RECONF\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"I_DATA\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"I_FWD_TSN\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"unknown chunk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sctp_cname(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.sctp_subtype, align 8
  %4 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = bitcast %union.sctp_subtype* %3 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SCTP_CID_BASE_MAX, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i8**, i8*** @sctp_cid_tbl, align 8
  %11 = bitcast %union.sctp_subtype* %3 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %27

15:                                               ; preds = %1
  %16 = bitcast %union.sctp_subtype* %3 to i64*
  %17 = load i64, i64* %16, align 8
  switch i64 %17, label %25 [
    i64 134, label %18
    i64 133, label %19
    i64 131, label %20
    i64 132, label %21
    i64 128, label %22
    i64 130, label %23
    i64 129, label %24
  ]

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %27

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %27

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %27

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %27

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %27

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %27

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %27

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %27

27:                                               ; preds = %26, %24, %23, %22, %21, %20, %19, %18, %9
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

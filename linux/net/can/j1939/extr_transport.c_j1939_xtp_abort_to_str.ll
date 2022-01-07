; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_abort_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_abort_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [79 x i8] c"Already in one or more connection managed sessions and cannot support another.\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"System resources were needed for another task so this connection managed session was terminated.\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"A timeout occurred and this is the connection abort to close the session.\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"CTS messages received when data transfer is in progress\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Maximal retransmit request limit reached\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unexpected data transfer packet\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Bad sequence number (and software is not able to recover)\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"Duplicate sequence number (and software is not able to recover)\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Unexpected EDPO packet (ETP) or Message size > 1785 bytes (TP)\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Unexpected EDPO PGN (PGN in EDPO is bad)\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"EDPO number of packets is greater than CTS\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Bad EDPO offset\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Deprecated. Use 250 instead (Any other reason)\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Unexpected ECTS PGN (PGN in ECTS is bad)\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"ECTS requested packets exceeds message size\00", align 1
@.str.15 = private unnamed_addr constant [107 x i8] c"Any other reason (if a Connection Abort reason is identified that is not listed in the table use code 250)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @j1939_xtp_abort_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @j1939_xtp_abort_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 140, label %5
    i32 130, label %6
    i32 129, label %7
    i32 133, label %8
    i32 134, label %9
    i32 128, label %10
    i32 141, label %11
    i32 139, label %12
    i32 135, label %13
    i32 142, label %14
    i32 136, label %15
    i32 143, label %16
    i32 131, label %17
    i32 137, label %18
    i32 138, label %19
    i32 132, label %20
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %22

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %22

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %22

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %22

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %22

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %22

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %22

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %22

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %22

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %22

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %22

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %22

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %22

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %22

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %22

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %22

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

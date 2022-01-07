; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_get_protocol_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_get_protocol_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"9p2000\00", align 1
@p9_proto_legacy = common dso_local global i32 0, align 4
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Protocol version: Legacy\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"9p2000.u\00", align 1
@p9_proto_2000u = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Protocol version: 9P2000.u\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"9p2000.L\00", align 1
@p9_proto_2000L = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Protocol version: 9P2000.L\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unknown protocol version %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_protocol_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_protocol_version(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @p9_proto_legacy, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @P9_DEBUG_9P, align 4
  %12 = call i32 @p9_debug(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %34

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @p9_proto_2000u, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @P9_DEBUG_9P, align 4
  %20 = call i32 @p9_debug(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %33

21:                                               ; preds = %13
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @p9_proto_2000L, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @P9_DEBUG_9P, align 4
  %28 = call i32 @p9_debug(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %17
  br label %34

34:                                               ; preds = %33, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

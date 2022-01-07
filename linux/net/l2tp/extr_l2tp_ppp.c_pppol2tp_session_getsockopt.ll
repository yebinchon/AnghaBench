; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_session_getsockopt.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_session_getsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2tp_session = type { i32, i32, i32, i32, i32, i32 }

@L2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: get recv_seq=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: get send_seq=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: get lns_mode=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: get debug=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: get reorder_timeout=%d\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.l2tp_session*, i32, i32*)* @pppol2tp_session_getsockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_session_getsockopt(%struct.sock* %0, %struct.l2tp_session* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.l2tp_session* %1, %struct.l2tp_session** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %78 [
    i32 130, label %11
    i32 128, label %24
    i32 131, label %37
    i32 132, label %50
    i32 129, label %63
  ]

11:                                               ; preds = %4
  %12 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %13 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %17 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %18 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %19 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @l2tp_info(%struct.l2tp_session* %16, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  br label %81

24:                                               ; preds = %4
  %25 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %26 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %30 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %31 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %32 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @l2tp_info(%struct.l2tp_session* %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  br label %81

37:                                               ; preds = %4
  %38 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %39 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %43 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %44 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %45 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @l2tp_info(%struct.l2tp_session* %42, i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  br label %81

50:                                               ; preds = %4
  %51 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %52 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %56 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %57 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %58 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @l2tp_info(%struct.l2tp_session* %55, i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %61)
  br label %81

63:                                               ; preds = %4
  %64 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %65 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @jiffies_to_msecs(i32 %66)
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %71 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %72 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %73 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @l2tp_info(%struct.l2tp_session* %70, i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %76)
  br label %81

78:                                               ; preds = %4
  %79 = load i32, i32* @ENOPROTOOPT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %63, %50, %37, %24, %11
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @l2tp_info(%struct.l2tp_session*, i32, i8*, i32, i32) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

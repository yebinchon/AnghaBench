; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_read_flag.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_read_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_PKT_FLAGS = common dso_local global i64 0, align 8
@CONFIG_XFRM = common dso_local global i32 0, align 4
@IPSEC_SHIFT = common dso_local global i64 0, align 8
@IPV6_SHIFT = common dso_local global i64 0, align 8
@pkt_flag_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"FLOW_RND\00", align 1
@F_FLOW_SEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*)* @pktgen_read_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pktgen_read_flag(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 33
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  store i32 1, i32* %13, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %12, %2
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @NR_PKT_FLAGS, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load i32, i32* @CONFIG_XFRM, align 4
  %23 = call i32 @IS_ENABLED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @IPSEC_SHIFT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %53

30:                                               ; preds = %25, %21
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @IPV6_SHIFT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %53

39:                                               ; preds = %34, %30
  %40 = load i8*, i8** %4, align 8
  %41 = load i8**, i8*** @pkt_flag_names, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %40, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %3, align 8
  br label %69

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %38, %29
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %17

56:                                               ; preds = %17
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i64, i64* @F_FLOW_SEQ, align 8
  store i64 %67, i64* %3, align 8
  br label %69

68:                                               ; preds = %56
  store i64 0, i64* %3, align 8
  br label %69

69:                                               ; preds = %68, %60, %47
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_parse_ports.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_parse_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid port(s):%s\0A\00", align 1
@MAX_IPTNL_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Port range (%s) is larger than %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @parse_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ports(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** @optarg, align 8
  %12 = call i64 @strtol(i8* %11, i8** %8, i32 10)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp slt i64 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %9, align 8
  %17 = icmp sgt i64 %16, 65535
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %4, align 4
  br label %71

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strtol(i8* %30, i8** null, i32 10)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %10, align 8
  %36 = icmp sgt i64 %35, 65535
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %27
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 1, i32* %4, align 4
  br label %71

41:                                               ; preds = %34
  br label %44

42:                                               ; preds = %22
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 1, i32* %4, align 4
  br label %71

52:                                               ; preds = %44
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %53, %54
  %56 = add nsw i64 %55, 1
  %57 = load i64, i64* @MAX_IPTNL_ENTRIES, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* @MAX_IPTNL_ENTRIES, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %61, i64 %62)
  store i32 1, i32* %4, align 4
  br label %71

64:                                               ; preds = %52
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i64, i64* %10, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %59, %48, %37, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

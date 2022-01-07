; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"transport=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i32, i32, i64*)* @ct_sip_parse_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_sip_parse_transport(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @ct_sip_parse_param(%struct.nf_conn* %14, i8* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %13)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @strncasecmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* @IPPROTO_TCP, align 8
  %30 = load i64*, i64** %11, align 8
  store i64 %29, i64* %30, align 8
  br label %44

31:                                               ; preds = %20
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @strncasecmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* @IPPROTO_UDP, align 8
  %41 = load i64*, i64** %11, align 8
  store i64 %40, i64* %41, align 8
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %57

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i64*, i64** %11, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %48 = call i64 @nf_ct_protonum(%struct.nf_conn* %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %57

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %5
  %53 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %54 = call i64 @nf_ct_protonum(%struct.nf_conn* %53)
  %55 = load i64*, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %51
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %50, %42
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @ct_sip_parse_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

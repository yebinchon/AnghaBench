; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_address_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_address_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_parse_address_param(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6, %union.nf_inet_addr* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %union.nf_inet_addr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store %union.nf_inet_addr* %7, %union.nf_inet_addr** %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %14, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %20, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8*, i8** %20, align 8
  %32 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = call i8* @ct_sip_header_search(i8* %30, i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %20, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %9
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %20, align 8
  br label %41

41:                                               ; preds = %36, %9
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8*, i8** %20, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i8* @ct_sip_header_search(i8* %45, i8* %46, i8* %47, i32 %49)
  store i8* %50, i8** %21, align 8
  %51 = load i8*, i8** %21, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %83

54:                                               ; preds = %41
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = load i8*, i8** %21, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %21, align 8
  %60 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %61 = load i8*, i8** %21, align 8
  %62 = load %union.nf_inet_addr*, %union.nf_inet_addr** %18, align 8
  %63 = load i8*, i8** %20, align 8
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @sip_parse_addr(%struct.nf_conn* %60, i8* %61, i8** %22, %union.nf_inet_addr* %62, i8* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %83

68:                                               ; preds = %54
  %69 = load i8*, i8** %21, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %16, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i8*, i8** %22, align 8
  %77 = load i8*, i8** %21, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %17, align 8
  store i32 %81, i32* %82, align 4
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %68, %67, %53
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i8* @ct_sip_header_search(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sip_parse_addr(%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

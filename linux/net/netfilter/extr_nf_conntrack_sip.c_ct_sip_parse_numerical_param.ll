; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_numerical_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_numerical_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_parse_numerical_param(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %13, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %18, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8*, i8** %18, align 8
  %30 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = call i8* @ct_sip_header_search(i8* %28, i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %18, align 8
  br label %39

39:                                               ; preds = %34, %8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** %18, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i8* @ct_sip_header_search(i8* %43, i8* %44, i8* %45, i32 %47)
  store i8* %48, i8** %19, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %87

52:                                               ; preds = %39
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = load i8*, i8** %19, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %19, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = call i32 @simple_strtoul(i8* %58, i8** %20, i32 0)
  %60 = load i32*, i32** %17, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i8*, i8** %19, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %87

65:                                               ; preds = %52
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i8*, i8** %19, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %15, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i8*, i8** %20, align 8
  %80 = load i8*, i8** %19, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %16, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %71, %68, %65
  store i32 1, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %64, %51
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i8* @ct_sip_header_search(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sip_parse_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sip_parse_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*, i32)* @sip_parse_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sip_parse_addr(%struct.nf_conn* %0, i8* %1, i8** %2, %union.nf_inet_addr* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %union.nf_inet_addr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %17 = icmp ne %struct.nf_conn* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %97

19:                                               ; preds = %6
  %20 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %21 = call i32 @memset(%union.nf_inet_addr* %20, i32 0, i32 4)
  %22 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %23 = call i32 @nf_ct_l3num(%struct.nf_conn* %22)
  switch i32 %23, label %88 [
    i32 129, label %24
    i32 128, label %39
  ]

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %33 = bitcast %union.nf_inet_addr* %32 to i32*
  %34 = call i32 @in4_pton(i8* %25, i32 %31, i32* %33, i32 -1, i8** %14)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %97

38:                                               ; preds = %24
  br label %90

39:                                               ; preds = %19
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 91
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  br label %56

51:                                               ; preds = %43, %39
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %97

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %65 = bitcast %union.nf_inet_addr* %64 to i32*
  %66 = call i32 @in6_pton(i8* %57, i32 %63, i32* %65, i32 -1, i8** %14)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %97

70:                                               ; preds = %56
  %71 = load i8*, i8** %14, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i8*, i8** %14, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 93
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %14, align 8
  br label %87

82:                                               ; preds = %74, %70
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %97

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86, %79
  br label %90

88:                                               ; preds = %19
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %87, %38
  %91 = load i8**, i8*** %10, align 8
  %92 = icmp ne i8** %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** %14, align 8
  %95 = load i8**, i8*** %10, align 8
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %85, %69, %54, %37, %18
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%union.nf_inet_addr*, i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @in4_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i32 @in6_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_addrinfo_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_addrinfo_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }

@NLBL_UNLABEL_A_IPV4ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV4MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_IPV6ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV6MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i8**, i8**, i32*)* @netlbl_unlabel_addrinfo_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlabel_addrinfo_get(%struct.genl_info* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %69

18:                                               ; preds = %4
  %19 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @NLBL_UNLABEL_A_IPV4MASK, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %18
  %27 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nla_len(i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @NLBL_UNLABEL_A_IPV4MASK, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @nla_len(i64 %44)
  %46 = icmp ne i32 %38, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %124

50:                                               ; preds = %37, %26
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %54 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @nla_data(i64 %58)
  %60 = load i8**, i8*** %7, align 8
  store i8* %59, i8** %60, align 8
  %61 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %62 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @NLBL_UNLABEL_A_IPV4MASK, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @nla_data(i64 %66)
  %68 = load i8**, i8*** %8, align 8
  store i8* %67, i8** %68, align 8
  store i32 0, i32* %5, align 4
  br label %124

69:                                               ; preds = %18, %4
  %70 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %69
  %78 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @nla_len(i64 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ne i64 %86, 4
  br i1 %87, label %88, label %101

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @NLBL_UNLABEL_A_IPV6MASK, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @nla_len(i64 %95)
  %97 = icmp ne i32 %89, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %124

101:                                              ; preds = %88, %77
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %105 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i8* @nla_data(i64 %109)
  %111 = load i8**, i8*** %7, align 8
  store i8* %110, i8** %111, align 8
  %112 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @NLBL_UNLABEL_A_IPV6MASK, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i8* @nla_data(i64 %117)
  %119 = load i8**, i8*** %8, align 8
  store i8* %118, i8** %119, align 8
  store i32 0, i32* %5, align 4
  br label %124

120:                                              ; preds = %69
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %101, %98, %50, %47
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @nla_len(i64) #1

declare dso_local i8* @nla_data(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

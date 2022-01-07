; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_mcast_addr_compress.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_mcast_addr_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"compressed to 1 octet\0A\00", align 1
@LOWPAN_IPHC_DAM_11 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"compressed to 4 octets\0A\00", align 1
@LOWPAN_IPHC_DAM_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"compressed to 6 octets\0A\00", align 1
@LOWPAN_IPHC_DAM_01 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"using full address\0A\00", align 1
@LOWPAN_IPHC_DAM_00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.in6_addr*)* @lowpan_iphc_mcast_addr_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_iphc_mcast_addr_compress(i32** %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %6 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %7 = call i64 @lowpan_is_mcast_addr_compressable8(%struct.in6_addr* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32**, i32*** %3, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %13 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 15
  %16 = call i32 @lowpan_push_hc_data(i32** %11, i32* %15, i32 1)
  %17 = load i32, i32* @LOWPAN_IPHC_DAM_11, align 4
  store i32 %17, i32* %5, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %20 = call i64 @lowpan_is_mcast_addr_compressable32(%struct.in6_addr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32**, i32*** %3, align 8
  %25 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %26 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i32 @lowpan_push_hc_data(i32** %24, i32* %28, i32 1)
  %30 = load i32**, i32*** %3, align 8
  %31 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 13
  %35 = call i32 @lowpan_push_hc_data(i32** %30, i32* %34, i32 3)
  %36 = load i32, i32* @LOWPAN_IPHC_DAM_10, align 4
  store i32 %36, i32* %5, align 4
  br label %65

37:                                               ; preds = %18
  %38 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %39 = call i64 @lowpan_is_mcast_addr_compressable48(%struct.in6_addr* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32**, i32*** %3, align 8
  %44 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @lowpan_push_hc_data(i32** %43, i32* %47, i32 1)
  %49 = load i32**, i32*** %3, align 8
  %50 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 11
  %54 = call i32 @lowpan_push_hc_data(i32** %49, i32* %53, i32 5)
  %55 = load i32, i32* @LOWPAN_IPHC_DAM_01, align 4
  store i32 %55, i32* %5, align 4
  br label %64

56:                                               ; preds = %37
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32**, i32*** %3, align 8
  %59 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %60 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @lowpan_push_hc_data(i32** %58, i32* %61, i32 16)
  %63 = load i32, i32* @LOWPAN_IPHC_DAM_00, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %56, %41
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65, %9
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @lowpan_is_mcast_addr_compressable8(%struct.in6_addr*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @lowpan_push_hc_data(i32**, i32*, i32) #1

declare dso_local i64 @lowpan_is_mcast_addr_compressable32(%struct.in6_addr*) #1

declare dso_local i64 @lowpan_is_mcast_addr_compressable48(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

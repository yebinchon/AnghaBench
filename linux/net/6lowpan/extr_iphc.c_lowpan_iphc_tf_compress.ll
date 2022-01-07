; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_tf_compress.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_tf_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"tc 0x%02x\0A\00", align 1
@LOWPAN_IPHC_TF_11 = common dso_local global i32 0, align 4
@LOWPAN_IPHC_TF_10 = common dso_local global i32 0, align 4
@LOWPAN_IPHC_TF_01 = common dso_local global i32 0, align 4
@LOWPAN_IPHC_TF_00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.ipv6hdr*)* @lowpan_iphc_tf_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_iphc_tf_compress(i32** %0, %struct.ipv6hdr* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %4, align 8
  %8 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %9 = call i32 @lowpan_iphc_get_tc(%struct.ipv6hdr* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %13 = call i64 @lowpan_iphc_is_flow_lbl_zero(%struct.ipv6hdr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @LOWPAN_IPHC_TF_11, align 4
  store i32 %19, i32* %7, align 4
  br label %24

20:                                               ; preds = %15
  %21 = load i32**, i32*** %3, align 8
  %22 = call i32 @lowpan_push_hc_data(i32** %21, i32* %5, i32 4)
  %23 = load i32, i32* @LOWPAN_IPHC_TF_10, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %18
  br label %65

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 63
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %32 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @memcpy(i32* %30, i32* %34, i32 3)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = and i32 %37, -241
  store i32 %38, i32* %36, align 16
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 192
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 16
  %44 = load i32**, i32*** %3, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %46 = call i32 @lowpan_push_hc_data(i32** %44, i32* %45, i32 3)
  %47 = load i32, i32* @LOWPAN_IPHC_TF_01, align 4
  store i32 %47, i32* %7, align 4
  br label %64

48:                                               ; preds = %25
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %50 = call i32 @memcpy(i32* %49, i32* %5, i32 4)
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @memcpy(i32* %51, i32* %55, i32 3)
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -241
  store i32 %59, i32* %57, align 4
  %60 = load i32**, i32*** %3, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %62 = call i32 @lowpan_push_hc_data(i32** %60, i32* %61, i32 4)
  %63 = load i32, i32* @LOWPAN_IPHC_TF_00, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %48, %29
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @lowpan_iphc_get_tc(%struct.ipv6hdr*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @lowpan_iphc_is_flow_lbl_zero(%struct.ipv6hdr*) #1

declare dso_local i32 @lowpan_push_hc_data(i32**, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

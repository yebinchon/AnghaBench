; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ipv6_clear_mutable_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ipv6_clear_mutable_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32 }
%union.anon = type { %struct.ipv6hdr* }
%struct.ipv6_opt_hdr = type { i32 }
%struct.ipv6_rt_hdr = type { i32 }

@XFRM_POLICY_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"overrun %sopts\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hop\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6hdr*, i32, i32)* @ipv6_clear_mutable_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_clear_mutable_options(%struct.ipv6hdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %12 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  store %struct.ipv6hdr* %12, %struct.ipv6hdr** %11, align 8
  %13 = bitcast %union.anon* %8 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %9, align 8
  %18 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %19 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %21, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 1
  store %struct.ipv6hdr* %23, %struct.ipv6hdr** %21, align 8
  br label %24

24:                                               ; preds = %61, %3
  %25 = bitcast %union.anon* %8 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %60 [
    i32 130, label %31
    i32 129, label %41
    i32 128, label %55
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @XFRM_POLICY_OUT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %37 = bitcast %union.anon* %8 to %struct.ipv6_opt_hdr**
  %38 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %37, align 8
  %39 = call i32 @ipv6_rearrange_destopt(%struct.ipv6hdr* %36, %struct.ipv6_opt_hdr* %38)
  br label %40

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %29, %40
  %42 = bitcast %union.anon* %8 to %struct.ipv6_opt_hdr**
  %43 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %42, align 8
  %44 = call i32 @zero_out_mutable_opts(%struct.ipv6_opt_hdr* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 129
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %74

54:                                               ; preds = %41
  br label %61

55:                                               ; preds = %29
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %57 = bitcast %union.anon* %8 to %struct.ipv6_rt_hdr**
  %58 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %57, align 8
  %59 = call i32 @ipv6_rearrange_rthdr(%struct.ipv6hdr* %56, %struct.ipv6_rt_hdr* %58)
  br label %61

60:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %74

61:                                               ; preds = %55, %54
  %62 = bitcast %union.anon* %8 to %struct.ipv6_opt_hdr**
  %63 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %62, align 8
  %64 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = bitcast %union.anon* %8 to %struct.ipv6_opt_hdr**
  %67 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %66, align 8
  %68 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %67)
  %69 = bitcast %union.anon* %8 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = sext i32 %68 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %69, align 8
  br label %24

73:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %60, %46
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @ipv6_rearrange_destopt(%struct.ipv6hdr*, %struct.ipv6_opt_hdr*) #1

declare dso_local i32 @zero_out_mutable_opts(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i8*) #1

declare dso_local i32 @ipv6_rearrange_rthdr(%struct.ipv6hdr*, %struct.ipv6_rt_hdr*) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

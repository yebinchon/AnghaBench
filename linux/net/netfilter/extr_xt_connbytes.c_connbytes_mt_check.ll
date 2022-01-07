; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connbytes.c_connbytes_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connbytes.c_connbytes_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, i32, %struct.xt_connbytes_info* }
%struct.xt_connbytes_info = type { i64, i64 }

@XT_CONNBYTES_PKTS = common dso_local global i64 0, align 8
@XT_CONNBYTES_BYTES = common dso_local global i64 0, align 8
@XT_CONNBYTES_AVGPKT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XT_CONNBYTES_DIR_ORIGINAL = common dso_local global i64 0, align 8
@XT_CONNBYTES_DIR_REPLY = common dso_local global i64 0, align 8
@XT_CONNBYTES_DIR_BOTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"cannot load conntrack support for proto=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Forcing CT accounting to be enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @connbytes_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connbytes_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_connbytes_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 2
  %8 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %7, align 8
  store %struct.xt_connbytes_info* %8, %struct.xt_connbytes_info** %4, align 8
  %9 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %4, align 8
  %10 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XT_CONNBYTES_PKTS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %4, align 8
  %16 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XT_CONNBYTES_BYTES, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %4, align 8
  %22 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XT_CONNBYTES_AVGPKT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %20, %14, %1
  %30 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %4, align 8
  %31 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XT_CONNBYTES_DIR_ORIGINAL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %4, align 8
  %37 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XT_CONNBYTES_DIR_REPLY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %4, align 8
  %43 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XT_CONNBYTES_DIR_BOTH, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %79

50:                                               ; preds = %41, %35, %29
  %51 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %52 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %55 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nf_ct_netns_get(i32 %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %62 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %50
  %66 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %67 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @nf_ct_acct_enabled(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %74 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @nf_ct_set_acct(i32 %75, i32 1)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %47, %26
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

declare dso_local i32 @nf_ct_acct_enabled(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @nf_ct_set_acct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

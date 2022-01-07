; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connlabel.c_connlabel_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connlabel.c_connlabel_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, i32, %struct.xt_connlabel_mtinfo* }
%struct.xt_connlabel_mtinfo = type { i32, i32 }

@XT_CONNLABEL_OP_INVERT = common dso_local global i32 0, align 4
@XT_CONNLABEL_OP_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown options in mask %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot load conntrack support for proto=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @connlabel_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connlabel_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xt_connlabel_mtinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %7 = load i32, i32* @XT_CONNLABEL_OP_INVERT, align 4
  %8 = load i32, i32* @XT_CONNLABEL_OP_SET, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %11 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %10, i32 0, i32 2
  %12 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %11, align 8
  store %struct.xt_connlabel_mtinfo* %12, %struct.xt_connlabel_mtinfo** %5, align 8
  %13 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %5, align 8
  %14 = getelementptr inbounds %struct.xt_connlabel_mtinfo, %struct.xt_connlabel_mtinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %5, align 8
  %22 = getelementptr inbounds %struct.xt_connlabel_mtinfo, %struct.xt_connlabel_mtinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %1
  %28 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %29 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %32 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @nf_ct_netns_get(i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %39 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %63

43:                                               ; preds = %27
  %44 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %45 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %5, align 8
  %48 = getelementptr inbounds %struct.xt_connlabel_mtinfo, %struct.xt_connlabel_mtinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nf_connlabels_get(i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %55 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %58 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nf_ct_netns_put(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %53, %43
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %37, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

declare dso_local i32 @nf_connlabels_get(i32, i32) #1

declare dso_local i32 @nf_ct_netns_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

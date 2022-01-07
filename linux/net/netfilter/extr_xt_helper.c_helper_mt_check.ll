; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_helper.c_helper_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_helper.c_helper_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, i32, %struct.xt_helper_info* }
%struct.xt_helper_info = type { i8* }

@.str = private unnamed_addr constant [44 x i8] c"cannot load conntrack support for proto=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @helper_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helper_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_helper_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 2
  %8 = load %struct.xt_helper_info*, %struct.xt_helper_info** %7, align 8
  store %struct.xt_helper_info* %8, %struct.xt_helper_info** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %13 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @nf_ct_netns_get(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %20 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.xt_helper_info*, %struct.xt_helper_info** %4, align 8
  %26 = getelementptr inbounds %struct.xt_helper_info, %struct.xt_helper_info* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 7
  store i8 0, i8* %28, align 1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

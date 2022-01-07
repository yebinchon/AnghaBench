; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connlimit.c_connlimit_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connlimit.c_connlimit_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i64, i32, %struct.xt_connlimit_info* }
%struct.xt_connlimit_info = type { i32 }

@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @connlimit_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connlimit_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca %struct.xt_mtchk_param*, align 8
  %3 = alloca %struct.xt_connlimit_info*, align 8
  %4 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %2, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 2
  %7 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %6, align 8
  store %struct.xt_connlimit_info* %7, %struct.xt_connlimit_info** %3, align 8
  store i32 4, i32* %4, align 4
  %8 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %9 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NFPROTO_IPV6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %25 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %28 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @nf_conncount_init(i32 %26, i64 %29, i32 %30)
  %32 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %3, align 8
  %33 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %3, align 8
  %35 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR_OR_ZERO(i32 %36)
  ret i32 %37
}

declare dso_local i32 @nf_conncount_init(i32, i64, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

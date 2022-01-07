; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_v2.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_hashlimit_mtinfo2* }
%struct.xt_hashlimit_mtinfo2 = type { i32, %struct.xt_hashlimit_htable* }
%struct.xt_hashlimit_htable = type { i32 }
%struct.hashlimit_cfg3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @hashlimit_mt_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashlimit_mt_v2(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_hashlimit_mtinfo2*, align 8
  %7 = alloca %struct.xt_hashlimit_htable*, align 8
  %8 = alloca %struct.hashlimit_cfg3, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %10, i32 0, i32 0
  %12 = load %struct.xt_hashlimit_mtinfo2*, %struct.xt_hashlimit_mtinfo2** %11, align 8
  store %struct.xt_hashlimit_mtinfo2* %12, %struct.xt_hashlimit_mtinfo2** %6, align 8
  %13 = load %struct.xt_hashlimit_mtinfo2*, %struct.xt_hashlimit_mtinfo2** %6, align 8
  %14 = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, %struct.xt_hashlimit_mtinfo2* %13, i32 0, i32 1
  %15 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %14, align 8
  store %struct.xt_hashlimit_htable* %15, %struct.xt_hashlimit_htable** %7, align 8
  %16 = bitcast %struct.hashlimit_cfg3* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.xt_hashlimit_mtinfo2*, %struct.xt_hashlimit_mtinfo2** %6, align 8
  %18 = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, %struct.xt_hashlimit_mtinfo2* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @cfg_copy(%struct.hashlimit_cfg3* %8, i8* %19, i32 2)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %28 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %7, align 8
  %29 = call i32 @hashlimit_mt_common(%struct.sk_buff* %26, %struct.xt_action_param* %27, %struct.xt_hashlimit_htable* %28, %struct.hashlimit_cfg3* %8, i32 2)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cfg_copy(%struct.hashlimit_cfg3*, i8*, i32) #2

declare dso_local i32 @hashlimit_mt_common(%struct.sk_buff*, %struct.xt_action_param*, %struct.xt_hashlimit_htable*, %struct.hashlimit_cfg3*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

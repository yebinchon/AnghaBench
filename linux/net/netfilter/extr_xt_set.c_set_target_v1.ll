; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_set_info_target_v1* }
%struct.xt_set_info_target_v1 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@add_opt = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@del_opt = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @set_target_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v1(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_set_info_target_v1*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %7, align 8
  store %struct.xt_set_info_target_v1* %8, %struct.xt_set_info_target_v1** %5, align 8
  %9 = load i32, i32* @add_opt, align 4
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %11 = call i32 @xt_family(%struct.xt_action_param* %10)
  %12 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %13 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %17 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UINT_MAX, align 4
  %21 = call i32 @ADT_OPT(i32 %9, i32 %11, i32 %15, i32 %19, i32 0, i32 %20, i32 0, i32 0, i32 0, i32 0)
  %22 = load i32, i32* @del_opt, align 4
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %24 = call i32 @xt_family(%struct.xt_action_param* %23)
  %25 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %26 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %30 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UINT_MAX, align 4
  %34 = call i32 @ADT_OPT(i32 %22, i32 %24, i32 %28, i32 %32, i32 0, i32 %33, i32 0, i32 0, i32 0, i32 0)
  %35 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %36 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IPSET_INVALID_ID, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %43 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %48 = call i32 @ip_set_add(i64 %45, %struct.sk_buff* %46, %struct.xt_action_param* %47, i32* @add_opt)
  br label %49

49:                                               ; preds = %41, %2
  %50 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %51 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPSET_INVALID_ID, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %5, align 8
  %58 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %63 = call i32 @ip_set_del(i64 %60, %struct.sk_buff* %61, %struct.xt_action_param* %62, i32* @del_opt)
  br label %64

64:                                               ; preds = %56, %49
  %65 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %65
}

declare dso_local i32 @ADT_OPT(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @ip_set_add(i64, %struct.sk_buff*, %struct.xt_action_param*, i32*) #1

declare dso_local i32 @ip_set_del(i64, %struct.sk_buff*, %struct.xt_action_param*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

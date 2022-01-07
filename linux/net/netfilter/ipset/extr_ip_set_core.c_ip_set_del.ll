; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32 }
%struct.ip_set_adt_opt = type { i64, i64 }
%struct.ip_set = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"set %s, index %u\0A\00", align 1
@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@IPSET_ERR_TYPE_MISMATCH = common dso_local global i32 0, align 4
@IPSET_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_del(i32 %0, %struct.sk_buff* %1, %struct.xt_action_param* %2, %struct.ip_set_adt_opt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.xt_action_param*, align 8
  %9 = alloca %struct.ip_set_adt_opt*, align 8
  %10 = alloca %struct.ip_set*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.xt_action_param* %2, %struct.xt_action_param** %8, align 8
  store %struct.ip_set_adt_opt* %3, %struct.ip_set_adt_opt** %9, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %13 = call i32 @xt_net(%struct.xt_action_param* %12)
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.ip_set* @ip_set_rcu_get(i32 %13, i32 %14)
  store %struct.ip_set* %15, %struct.ip_set** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %17 = icmp ne %struct.ip_set* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %22 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %9, align 8
  %27 = getelementptr inbounds %struct.ip_set_adt_opt, %struct.ip_set_adt_opt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %30 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %4
  %36 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %9, align 8
  %37 = getelementptr inbounds %struct.ip_set_adt_opt, %struct.ip_set_adt_opt* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %40 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %45 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %4
  %50 = load i32, i32* @IPSET_ERR_TYPE_MISMATCH, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %71

52:                                               ; preds = %43, %35
  %53 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %54 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %57 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)*, i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)** %59, align 8
  %61 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %64 = load i32, i32* @IPSET_DEL, align 4
  %65 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %9, align 8
  %66 = call i32 %60(%struct.ip_set* %61, %struct.sk_buff* %62, %struct.xt_action_param* %63, i32 %64, %struct.ip_set_adt_opt* %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %68 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_bh(i32* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %52, %49
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.ip_set* @ip_set_rcu_get(i32, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

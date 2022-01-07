; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_test.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32 }
%struct.ip_set_adt_opt = type { i64, i64, i32 }
%struct.ip_set = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)* }

@.str = private unnamed_addr constant [18 x i8] c"set %s, index %u\0A\00", align 1
@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@IPSET_TEST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"element must be completed, ADD is triggered\0A\00", align 1
@IPSET_ADD = common dso_local global i32 0, align 4
@IPSET_FLAG_RETURN_NOMATCH = common dso_local global i32 0, align 4
@IPSET_TYPE_NOMATCH = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_test(i32 %0, %struct.sk_buff* %1, %struct.xt_action_param* %2, %struct.ip_set_adt_opt* %3) #0 {
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
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %9, align 8
  %27 = getelementptr inbounds %struct.ip_set_adt_opt, %struct.ip_set_adt_opt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %30 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
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
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %45 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %4
  store i32 0, i32* %5, align 4
  br label %123

50:                                               ; preds = %43, %35
  %51 = call i32 (...) @rcu_read_lock_bh()
  %52 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %53 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)*, i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)** %55, align 8
  %57 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %60 = load i32, i32* @IPSET_TEST, align 4
  %61 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %9, align 8
  %62 = call i32 %56(%struct.ip_set* %57, %struct.sk_buff* %58, %struct.xt_action_param* %59, i32 %60, %struct.ip_set_adt_opt* %61)
  store i32 %62, i32* %11, align 4
  %63 = call i32 (...) @rcu_read_unlock_bh()
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %50
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %71 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %70, i32 0, i32 2
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %74 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)*, i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)** %76, align 8
  %78 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %81 = load i32, i32* @IPSET_ADD, align 4
  %82 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %9, align 8
  %83 = call i32 %77(%struct.ip_set* %78, %struct.sk_buff* %79, %struct.xt_action_param* %80, i32 %81, %struct.ip_set_adt_opt* %82)
  %84 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %85 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %84, i32 0, i32 2
  %86 = call i32 @spin_unlock_bh(i32* %85)
  store i32 1, i32* %11, align 4
  br label %115

87:                                               ; preds = %50
  %88 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %9, align 8
  %89 = getelementptr inbounds %struct.ip_set_adt_opt, %struct.ip_set_adt_opt* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IPSET_FLAG_RETURN_NOMATCH, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %96 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IPSET_TYPE_NOMATCH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @ENOTEMPTY, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %111, %106, %94, %87
  br label %115

115:                                              ; preds = %114, %68
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  br label %121

121:                                              ; preds = %119, %118
  %122 = phi i32 [ 0, %118 ], [ %120, %119 ]
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %49
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.ip_set* @ip_set_rcu_get(i32, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

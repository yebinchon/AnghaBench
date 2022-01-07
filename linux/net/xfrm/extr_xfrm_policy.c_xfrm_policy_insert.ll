; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.hlist_head = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_policy_insert(i32 %0, %struct.xfrm_policy* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca %struct.hlist_head*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %12 = call %struct.net* @xp_net(%struct.xfrm_policy* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = load %struct.net*, %struct.net** %8, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 5
  %20 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.hlist_head* @policy_hash_bysel(%struct.net* %17, i32* %19, i32 %22, i32 %23)
  store %struct.hlist_head* %24, %struct.hlist_head** %10, align 8
  %25 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %26 = icmp ne %struct.hlist_head* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %29 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.xfrm_policy* @xfrm_policy_insert_list(%struct.hlist_head* %28, %struct.xfrm_policy* %29, i32 %30)
  store %struct.xfrm_policy* %31, %struct.xfrm_policy** %9, align 8
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.xfrm_policy* @xfrm_policy_inexact_insert(%struct.xfrm_policy* %33, i32 %34, i32 %35)
  store %struct.xfrm_policy* %36, %struct.xfrm_policy** %9, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %39 = call i64 @IS_ERR(%struct.xfrm_policy* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.net*, %struct.net** %8, align 8
  %43 = getelementptr inbounds %struct.net, %struct.net* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %47 = call i32 @PTR_ERR(%struct.xfrm_policy* %46)
  store i32 %47, i32* %4, align 4
  br label %143

48:                                               ; preds = %37
  %49 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @__xfrm_policy_link(%struct.xfrm_policy* %49, i32 %50)
  %52 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %53 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AF_INET, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.net*, %struct.net** %8, align 8
  %59 = call i32 @rt_genid_bump_ipv4(%struct.net* %58)
  br label %63

60:                                               ; preds = %48
  %61 = load %struct.net*, %struct.net** %8, align 8
  %62 = call i32 @rt_genid_bump_ipv6(%struct.net* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %65 = icmp ne %struct.xfrm_policy* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %68 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %69 = call i32 @xfrm_policy_requeue(%struct.xfrm_policy* %67, %struct.xfrm_policy* %68)
  %70 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @__xfrm_policy_unlink(%struct.xfrm_policy* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %63
  %74 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %75 = icmp ne %struct.xfrm_policy* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %78 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  br label %87

80:                                               ; preds = %73
  %81 = load %struct.net*, %struct.net** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %84 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @xfrm_gen_index(%struct.net* %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %80, %76
  %88 = phi i32 [ %79, %76 ], [ %86, %80 ]
  %89 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %90 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %92 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %91, i32 0, i32 3
  %93 = load %struct.net*, %struct.net** %8, align 8
  %94 = getelementptr inbounds %struct.net, %struct.net* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.net*, %struct.net** %8, align 8
  %98 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %99 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @idx_hash(%struct.net* %97, i32 %100)
  %102 = add nsw i64 %96, %101
  %103 = call i32 @hlist_add_head(i32* %92, i64 %102)
  %104 = call i32 (...) @ktime_get_real_seconds()
  %105 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %106 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %109 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %112 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %111, i32 0, i32 0
  %113 = load i64, i64* @jiffies, align 8
  %114 = load i64, i64* @HZ, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @mod_timer(i32* %112, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %87
  %119 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %120 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %119)
  br label %121

121:                                              ; preds = %118, %87
  %122 = load %struct.net*, %struct.net** %8, align 8
  %123 = getelementptr inbounds %struct.net, %struct.net* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = call i32 @spin_unlock_bh(i32* %124)
  %126 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %127 = icmp ne %struct.xfrm_policy* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %130 = call i32 @xfrm_policy_kill(%struct.xfrm_policy* %129)
  br label %142

131:                                              ; preds = %121
  %132 = load %struct.net*, %struct.net** %8, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i64 @xfrm_bydst_should_resize(%struct.net* %132, i32 %133, i32* null)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.net*, %struct.net** %8, align 8
  %138 = getelementptr inbounds %struct.net, %struct.net* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = call i32 @schedule_work(i32* %139)
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %128
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %41
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.hlist_head* @policy_hash_bysel(%struct.net*, i32*, i32, i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_insert_list(%struct.hlist_head*, %struct.xfrm_policy*, i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_inexact_insert(%struct.xfrm_policy*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xfrm_policy*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.xfrm_policy*) #1

declare dso_local i32 @__xfrm_policy_link(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @rt_genid_bump_ipv4(%struct.net*) #1

declare dso_local i32 @rt_genid_bump_ipv6(%struct.net*) #1

declare dso_local i32 @xfrm_policy_requeue(%struct.xfrm_policy*, %struct.xfrm_policy*) #1

declare dso_local i32 @__xfrm_policy_unlink(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_gen_index(%struct.net*, i32, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i64) #1

declare dso_local i64 @idx_hash(%struct.net*, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_policy_kill(%struct.xfrm_policy*) #1

declare dso_local i64 @xfrm_bydst_should_resize(%struct.net*, i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

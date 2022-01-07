; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_bydst_resize.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_bydst_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hlist_head = type { i32 }

@xfrm_policy_hash_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32)* @xfrm_bydst_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_bydst_resize(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hlist_head*, align 8
  %9 = alloca %struct.hlist_head*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @xfrm_new_hash_mask(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.hlist_head* @xfrm_hash_alloc(i32 %27)
  store %struct.hlist_head* %28, %struct.hlist_head** %8, align 8
  %29 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %30 = icmp ne %struct.hlist_head* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %103

32:                                               ; preds = %2
  %33 = load %struct.net*, %struct.net** %3, align 8
  %34 = getelementptr inbounds %struct.net, %struct.net* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = call i32 @write_seqcount_begin(i32* @xfrm_policy_hash_generation)
  %38 = load %struct.net*, %struct.net** %3, align 8
  %39 = getelementptr inbounds %struct.net, %struct.net* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.net*, %struct.net** %3, align 8
  %48 = getelementptr inbounds %struct.net, %struct.net* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @lockdep_is_held(i32* %49)
  %51 = call %struct.hlist_head* @rcu_dereference_protected(i32 %46, i32 %50)
  store %struct.hlist_head* %51, %struct.hlist_head** %9, align 8
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %66, %32
  %54 = load i32, i32* %10, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.net*, %struct.net** %3, align 8
  %58 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %58, i64 %60
  %62 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @xfrm_dst_hash_transfer(%struct.net* %57, %struct.hlist_head* %61, %struct.hlist_head* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %10, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load %struct.net*, %struct.net** %3, align 8
  %71 = getelementptr inbounds %struct.net, %struct.net* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %80 = call i32 @rcu_assign_pointer(i32 %78, %struct.hlist_head* %79)
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.net*, %struct.net** %3, align 8
  %83 = getelementptr inbounds %struct.net, %struct.net* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %81, i32* %89, align 4
  %90 = call i32 @write_seqcount_end(i32* @xfrm_policy_hash_generation)
  %91 = load %struct.net*, %struct.net** %3, align 8
  %92 = getelementptr inbounds %struct.net, %struct.net* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = call i32 (...) @synchronize_rcu()
  %96 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32 @xfrm_hash_free(%struct.hlist_head* %96, i32 %101)
  br label %103

103:                                              ; preds = %69, %31
  ret void
}

declare dso_local i32 @xfrm_new_hash_mask(i32) #1

declare dso_local %struct.hlist_head* @xfrm_hash_alloc(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local %struct.hlist_head* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @xfrm_dst_hash_transfer(%struct.net*, %struct.hlist_head*, %struct.hlist_head*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.hlist_head*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @xfrm_hash_free(%struct.hlist_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

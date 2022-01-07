; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_dsthash_alloc_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_dsthash_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsthash_ent = type { i32, i32, i32 }
%struct.xt_hashlimit_htable = type { i32, i64, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dsthash_dst = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"max count of %u reached\0A\00", align 1
@hashlimit_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsthash_ent* (%struct.xt_hashlimit_htable*, %struct.dsthash_dst*, i32*)* @dsthash_alloc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsthash_ent* @dsthash_alloc_init(%struct.xt_hashlimit_htable* %0, %struct.dsthash_dst* %1, i32* %2) #0 {
  %4 = alloca %struct.dsthash_ent*, align 8
  %5 = alloca %struct.xt_hashlimit_htable*, align 8
  %6 = alloca %struct.dsthash_dst*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dsthash_ent*, align 8
  store %struct.xt_hashlimit_htable* %0, %struct.xt_hashlimit_htable** %5, align 8
  store %struct.dsthash_dst* %1, %struct.dsthash_dst** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %10 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %13 = load %struct.dsthash_dst*, %struct.dsthash_dst** %6, align 8
  %14 = call %struct.dsthash_ent* @dsthash_find(%struct.xt_hashlimit_htable* %12, %struct.dsthash_dst* %13)
  store %struct.dsthash_ent* %14, %struct.dsthash_ent** %8, align 8
  %15 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  %16 = icmp ne %struct.dsthash_ent* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %19 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i32*, i32** %7, align 8
  store i32 1, i32* %21, align 4
  %22 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  store %struct.dsthash_ent* %22, %struct.dsthash_ent** %4, align 8
  br label %96

23:                                               ; preds = %3
  %24 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %25 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %34 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %33, i32 0, i32 5
  %35 = call i32 @get_random_bytes(i32* %34, i32 4)
  %36 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %37 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %32, %23
  %39 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %40 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %46 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %49 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %47, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %55 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @net_err_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %57)
  store %struct.dsthash_ent* null, %struct.dsthash_ent** %8, align 8
  br label %63

59:                                               ; preds = %44, %38
  %60 = load i32, i32* @hashlimit_cachep, align 4
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call %struct.dsthash_ent* @kmem_cache_alloc(i32 %60, i32 %61)
  store %struct.dsthash_ent* %62, %struct.dsthash_ent** %8, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  %65 = icmp ne %struct.dsthash_ent* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  %68 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %67, i32 0, i32 2
  %69 = load %struct.dsthash_dst*, %struct.dsthash_dst** %6, align 8
  %70 = call i32 @memcpy(i32* %68, %struct.dsthash_dst* %69, i32 4)
  %71 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  %72 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %71, i32 0, i32 1
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  %75 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %74, i32 0, i32 1
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  %78 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %77, i32 0, i32 0
  %79 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %80 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %83 = load %struct.dsthash_dst*, %struct.dsthash_dst** %6, align 8
  %84 = call i64 @hash_dst(%struct.xt_hashlimit_htable* %82, %struct.dsthash_dst* %83)
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = call i32 @hlist_add_head_rcu(i32* %78, i32* %85)
  %87 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %88 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %66, %63
  %92 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %93 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load %struct.dsthash_ent*, %struct.dsthash_ent** %8, align 8
  store %struct.dsthash_ent* %95, %struct.dsthash_ent** %4, align 8
  br label %96

96:                                               ; preds = %91, %17
  %97 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  ret %struct.dsthash_ent* %97
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dsthash_ent* @dsthash_find(%struct.xt_hashlimit_htable*, %struct.dsthash_dst*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @net_err_ratelimited(i8*, i64) #1

declare dso_local %struct.dsthash_ent* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dsthash_dst*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i64 @hash_dst(%struct.xt_hashlimit_htable*, %struct.dsthash_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

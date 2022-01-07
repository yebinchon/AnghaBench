; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_cache_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_cache_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32, i32 }
%struct.cache_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunrpc_cache_unhash(%struct.cache_detail* %0, %struct.cache_head* %1) #0 {
  %3 = alloca %struct.cache_detail*, align 8
  %4 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %3, align 8
  store %struct.cache_head* %1, %struct.cache_head** %4, align 8
  %5 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %6 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %9 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %8, i32 0, i32 0
  %10 = call i32 @hlist_unhashed(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %14 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %13, i32 0, i32 0
  %15 = call i32 @hlist_del_init_rcu(i32* %14)
  %16 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %17 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %21 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %24 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %25 = call i32 @cache_put(%struct.cache_head* %23, %struct.cache_detail* %24)
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %28 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cache_put(%struct.cache_head*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_mt_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_mt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtdtor_param = type { %struct.xt_recent_mtinfo_v1*, i32 }
%struct.xt_recent_mtinfo_v1 = type { i32 }
%struct.recent_net = type { i32* }
%struct.recent_table = type { i64, i32, i32 }

@recent_mutex = common dso_local global i32 0, align 4
@recent_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_mtdtor_param*)* @recent_mt_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recent_mt_destroy(%struct.xt_mtdtor_param* %0) #0 {
  %2 = alloca %struct.xt_mtdtor_param*, align 8
  %3 = alloca %struct.recent_net*, align 8
  %4 = alloca %struct.xt_recent_mtinfo_v1*, align 8
  %5 = alloca %struct.recent_table*, align 8
  store %struct.xt_mtdtor_param* %0, %struct.xt_mtdtor_param** %2, align 8
  %6 = load %struct.xt_mtdtor_param*, %struct.xt_mtdtor_param** %2, align 8
  %7 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.recent_net* @recent_pernet(i32 %8)
  store %struct.recent_net* %9, %struct.recent_net** %3, align 8
  %10 = load %struct.xt_mtdtor_param*, %struct.xt_mtdtor_param** %2, align 8
  %11 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %10, i32 0, i32 0
  %12 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %11, align 8
  store %struct.xt_recent_mtinfo_v1* %12, %struct.xt_recent_mtinfo_v1** %4, align 8
  %13 = call i32 @mutex_lock(i32* @recent_mutex)
  %14 = load %struct.recent_net*, %struct.recent_net** %3, align 8
  %15 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %4, align 8
  %16 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.recent_table* @recent_table_lookup(%struct.recent_net* %14, i32 %17)
  store %struct.recent_table* %18, %struct.recent_table** %5, align 8
  %19 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %20 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = call i32 @spin_lock_bh(i32* @recent_lock)
  %26 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %27 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %26, i32 0, i32 2
  %28 = call i32 @list_del(i32* %27)
  %29 = call i32 @spin_unlock_bh(i32* @recent_lock)
  %30 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %31 = call i32 @recent_table_flush(%struct.recent_table* %30)
  %32 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %33 = call i32 @recent_table_free(%struct.recent_table* %32)
  br label %34

34:                                               ; preds = %24, %1
  %35 = call i32 @mutex_unlock(i32* @recent_mutex)
  ret void
}

declare dso_local %struct.recent_net* @recent_pernet(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.recent_table* @recent_table_lookup(%struct.recent_net*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @recent_table_flush(%struct.recent_table*) #1

declare dso_local i32 @recent_table_free(%struct.recent_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

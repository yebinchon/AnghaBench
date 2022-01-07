; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___remove_pg_pool.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___remove_pg_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.ceph_pg_pool_info = type { %struct.ceph_pg_pool_info*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root*, %struct.ceph_pg_pool_info*)* @__remove_pg_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_pg_pool(%struct.rb_root* %0, %struct.ceph_pg_pool_info* %1) #0 {
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.ceph_pg_pool_info*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  store %struct.ceph_pg_pool_info* %1, %struct.ceph_pg_pool_info** %4, align 8
  %5 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %6 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %5, i32 0, i32 1
  %7 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %8 = call i32 @rb_erase(i32* %6, %struct.rb_root* %7)
  %9 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %9, i32 0, i32 0
  %11 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %10, align 8
  %12 = call i32 @kfree(%struct.ceph_pg_pool_info* %11)
  %13 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %14 = call i32 @kfree(%struct.ceph_pg_pool_info* %13)
  ret void
}

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

declare dso_local i32 @kfree(%struct.ceph_pg_pool_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

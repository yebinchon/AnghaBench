; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_lookup_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_lookup_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_4__, i32*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hlist_bl_head = type { i32 }

@DCACHE_PAR_LOOKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__d_lookup_done(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.hlist_bl_head*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hlist_bl_head* @in_lookup_hash(i32 %6, i32 %10)
  store %struct.hlist_bl_head* %11, %struct.hlist_bl_head** %3, align 8
  %12 = load %struct.hlist_bl_head*, %struct.hlist_bl_head** %3, align 8
  %13 = call i32 @hlist_bl_lock(%struct.hlist_bl_head* %12)
  %14 = load i32, i32* @DCACHE_PAR_LOOKUP, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.dentry*, %struct.dentry** %2, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @__hlist_bl_del(i32* %22)
  %24 = load %struct.dentry*, %struct.dentry** %2, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @wake_up_all(i32* %26)
  %28 = load %struct.dentry*, %struct.dentry** %2, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.hlist_bl_head*, %struct.hlist_bl_head** %3, align 8
  %31 = call i32 @hlist_bl_unlock(%struct.hlist_bl_head* %30)
  %32 = load %struct.dentry*, %struct.dentry** %2, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @INIT_HLIST_NODE(i32* %34)
  %36 = load %struct.dentry*, %struct.dentry** %2, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  ret void
}

declare dso_local %struct.hlist_bl_head* @in_lookup_hash(i32, i32) #1

declare dso_local i32 @hlist_bl_lock(%struct.hlist_bl_head*) #1

declare dso_local i32 @__hlist_bl_del(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @hlist_bl_unlock(%struct.hlist_bl_head*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

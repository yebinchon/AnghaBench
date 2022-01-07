; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_lookup_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_lookup_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32, i32 }
%struct.mount = type { %struct.vfsmount }

@mount_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @lookup_mnt(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %2, align 8
  %6 = call i32 (...) @rcu_read_lock()
  br label %7

7:                                                ; preds = %24, %1
  %8 = call i32 @read_seqbegin(i32* @mount_lock)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.path*, %struct.path** %2, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.path*, %struct.path** %2, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mount* @__lookup_mnt(i32 %11, i32 %14)
  store %struct.mount* %15, %struct.mount** %3, align 8
  %16 = load %struct.mount*, %struct.mount** %3, align 8
  %17 = icmp ne %struct.mount* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 0
  br label %22

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi %struct.vfsmount* [ %20, %18 ], [ null, %21 ]
  store %struct.vfsmount* %23, %struct.vfsmount** %4, align 8
  br label %24

24:                                               ; preds = %22
  %25 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @legitimize_mnt(%struct.vfsmount* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %7, label %30

30:                                               ; preds = %24
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  ret %struct.vfsmount* %32
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local %struct.mount* @__lookup_mnt(i32, i32) #1

declare dso_local i32 @legitimize_mnt(%struct.vfsmount*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

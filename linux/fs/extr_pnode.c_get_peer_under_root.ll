; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pnode.c_get_peer_under_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pnode.c_get_peer_under_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__, %struct.mnt_namespace* }
%struct.TYPE_2__ = type { i32 }
%struct.mnt_namespace = type { i32 }
%struct.path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mount* (%struct.mount*, %struct.mnt_namespace*, %struct.path*)* @get_peer_under_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mount* @get_peer_under_root(%struct.mount* %0, %struct.mnt_namespace* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.mnt_namespace*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.mount*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.mnt_namespace* %1, %struct.mnt_namespace** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  %9 = load %struct.mount*, %struct.mount** %5, align 8
  store %struct.mount* %9, %struct.mount** %8, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load %struct.mount*, %struct.mount** %8, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 1
  %13 = load %struct.mnt_namespace*, %struct.mnt_namespace** %12, align 8
  %14 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %15 = icmp eq %struct.mnt_namespace* %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.mount*, %struct.mount** %8, align 8
  %18 = load %struct.mount*, %struct.mount** %8, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.path*, %struct.path** %7, align 8
  %23 = call i64 @is_path_reachable(%struct.mount* %17, i32 %21, %struct.path* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load %struct.mount*, %struct.mount** %8, align 8
  store %struct.mount* %26, %struct.mount** %4, align 8
  br label %35

27:                                               ; preds = %16, %10
  %28 = load %struct.mount*, %struct.mount** %8, align 8
  %29 = call %struct.mount* @next_peer(%struct.mount* %28)
  store %struct.mount* %29, %struct.mount** %8, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.mount*, %struct.mount** %8, align 8
  %32 = load %struct.mount*, %struct.mount** %5, align 8
  %33 = icmp ne %struct.mount* %31, %32
  br i1 %33, label %10, label %34

34:                                               ; preds = %30
  store %struct.mount* null, %struct.mount** %4, align 8
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.mount*, %struct.mount** %4, align 8
  ret %struct.mount* %36
}

declare dso_local i64 @is_path_reachable(%struct.mount*, i32, %struct.path*) #1

declare dso_local %struct.mount* @next_peer(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

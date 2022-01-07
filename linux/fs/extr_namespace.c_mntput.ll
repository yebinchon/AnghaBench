; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mntput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mntput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.mount = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mntput(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.mount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  %4 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %5 = icmp ne %struct.vfsmount* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %8 = call %struct.mount* @real_mount(%struct.vfsmount* %7)
  store %struct.mount* %8, %struct.mount** %3, align 8
  %9 = load %struct.mount*, %struct.mount** %3, align 8
  %10 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @unlikely(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load %struct.mount*, %struct.mount** %3, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %6
  %18 = load %struct.mount*, %struct.mount** %3, align 8
  %19 = call i32 @mntput_no_expire(%struct.mount* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.mount* @real_mount(%struct.vfsmount*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @mntput_no_expire(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

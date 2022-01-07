; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_attach_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_attach_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.mountpoint = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, %struct.mount*, %struct.mountpoint*)* @attach_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_mnt(%struct.mount* %0, %struct.mount* %1, %struct.mountpoint* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.mountpoint*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  store %struct.mountpoint* %2, %struct.mountpoint** %6, align 8
  %7 = load %struct.mount*, %struct.mount** %5, align 8
  %8 = load %struct.mountpoint*, %struct.mountpoint** %6, align 8
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = call i32 @mnt_set_mountpoint(%struct.mount* %7, %struct.mountpoint* %8, %struct.mount* %9)
  %11 = load %struct.mount*, %struct.mount** %4, align 8
  %12 = load %struct.mount*, %struct.mount** %5, align 8
  %13 = call i32 @__attach_mnt(%struct.mount* %11, %struct.mount* %12)
  ret void
}

declare dso_local i32 @mnt_set_mountpoint(%struct.mount*, %struct.mountpoint*, %struct.mount*) #1

declare dso_local i32 @__attach_mnt(%struct.mount*, %struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

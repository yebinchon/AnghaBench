; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_drop_osb_locks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_drop_osb_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*)* @ocfs2_drop_osb_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_drop_osb_locks(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %3 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %4, i32 0, i32 3
  %6 = call i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super* %3, i32* %5)
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 2
  %10 = call i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super* %7, i32* %9)
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 1
  %14 = call i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super* %11, i32* %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super* %15, i32* %18)
  ret void
}

declare dso_local i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

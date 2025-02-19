; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ocfs2.h_ocfs2_set_osb_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ocfs2.h_ocfs2_set_osb_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, i64)* @ocfs2_set_osb_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_set_osb_flag(%struct.ocfs2_super* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = or i64 %11, %8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 1
  %15 = call i32 @spin_unlock(i32* %14)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

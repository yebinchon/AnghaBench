; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_wipe_namevalue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_wipe_namevalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ocfs2_xa_loc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*)* @ocfs2_xa_wipe_namevalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_wipe_namevalue(%struct.ocfs2_xa_loc* %0) #0 {
  %2 = alloca %struct.ocfs2_xa_loc*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %2, align 8
  %3 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %4 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.ocfs2_xa_loc*)*, i32 (%struct.ocfs2_xa_loc*)** %6, align 8
  %8 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %9 = call i32 %7(%struct.ocfs2_xa_loc* %8)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

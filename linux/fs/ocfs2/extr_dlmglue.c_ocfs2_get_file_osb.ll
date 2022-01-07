; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_get_file_osb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_get_file_osb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { %struct.ocfs2_file_private* }
%struct.ocfs2_file_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_super* (%struct.ocfs2_lock_res*)* @ocfs2_get_file_osb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_super* @ocfs2_get_file_osb(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  %3 = alloca %struct.ocfs2_file_private*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %4 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %4, i32 0, i32 0
  %6 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %5, align 8
  store %struct.ocfs2_file_private* %6, %struct.ocfs2_file_private** %3, align 8
  %7 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  ret %struct.ocfs2_super* %16
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

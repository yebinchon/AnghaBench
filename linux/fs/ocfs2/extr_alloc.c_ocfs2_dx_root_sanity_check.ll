; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_dx_root_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_dx_root_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_dx_root_block* }
%struct.ocfs2_dx_root_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*)* @ocfs2_dx_root_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_root_sanity_check(%struct.ocfs2_extent_tree* %0) #0 {
  %2 = alloca %struct.ocfs2_extent_tree*, align 8
  %3 = alloca %struct.ocfs2_dx_root_block*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %2, align 8
  %4 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %4, i32 0, i32 0
  %6 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %5, align 8
  store %struct.ocfs2_dx_root_block* %6, %struct.ocfs2_dx_root_block** %3, align 8
  %7 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %3, align 8
  %8 = call i32 @OCFS2_IS_VALID_DX_ROOT(%struct.ocfs2_dx_root_block* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DX_ROOT(%struct.ocfs2_dx_root_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

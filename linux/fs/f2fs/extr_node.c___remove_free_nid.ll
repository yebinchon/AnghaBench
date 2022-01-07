; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___remove_free_nid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___remove_free_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.free_nid = type { i32, i32, i32 }
%struct.f2fs_nm_info = type { i32, i32* }

@FREE_NID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.free_nid*, i32)* @__remove_free_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_free_nid(%struct.f2fs_sb_info* %0, %struct.free_nid* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.free_nid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_nm_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.free_nid* %1, %struct.free_nid** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %9 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %8)
  store %struct.f2fs_nm_info* %9, %struct.f2fs_nm_info** %7, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.free_nid*, %struct.free_nid** %5, align 8
  %13 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %10, i32 %16)
  %18 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %19 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FREE_NID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.free_nid*, %struct.free_nid** %5, align 8
  %31 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %30, i32 0, i32 2
  %32 = call i32 @list_del(i32* %31)
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %35 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %34, i32 0, i32 0
  %36 = load %struct.free_nid*, %struct.free_nid** %5, align 8
  %37 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @radix_tree_delete(i32* %35, i32 %38)
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

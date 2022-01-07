; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___move_free_nid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___move_free_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.free_nid = type { i32, i32 }
%struct.f2fs_nm_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.free_nid*, i32, i32)* @__move_free_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__move_free_nid(%struct.f2fs_sb_info* %0, %struct.free_nid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.free_nid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.f2fs_nm_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.free_nid* %1, %struct.free_nid** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %11 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %10)
  store %struct.f2fs_nm_info* %11, %struct.f2fs_nm_info** %9, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %15 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %12, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %22 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %24 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %32 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %50 [
    i32 128, label %40
    i32 129, label %44
  ]

40:                                               ; preds = %4
  %41 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %42 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %41, i32 0, i32 1
  %43 = call i32 @list_del(i32* %42)
  br label %52

44:                                               ; preds = %4
  %45 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %46 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %45, i32 0, i32 1
  %47 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %48 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  br label %52

50:                                               ; preds = %4
  %51 = call i32 @BUG_ON(i32 1)
  br label %52

52:                                               ; preds = %50, %44, %40
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

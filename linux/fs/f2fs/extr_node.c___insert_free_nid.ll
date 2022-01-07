; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___insert_free_nid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___insert_free_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.free_nid = type { i32, i32, i32 }
%struct.f2fs_nm_info = type { i32, i32*, i32 }

@FREE_NID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.free_nid*, i32)* @__insert_free_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__insert_free_nid(%struct.f2fs_sb_info* %0, %struct.free_nid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.free_nid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_nm_info*, align 8
  %9 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.free_nid* %1, %struct.free_nid** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %11 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %10)
  store %struct.f2fs_nm_info* %11, %struct.f2fs_nm_info** %8, align 8
  %12 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %13 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %12, i32 0, i32 2
  %14 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %15 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %18 = call i32 @radix_tree_insert(i32* %13, i32 %16, %struct.free_nid* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %27 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %24, i32 %30)
  %32 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %33 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FREE_NID, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %23
  %44 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %45 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %44, i32 0, i32 1
  %46 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %47 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %43, %23
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.free_nid*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_free_jeb_node_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_free_jeb_node_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_eraseblock = type { i32*, %struct.jffs2_raw_node_ref*, i32 }
%struct.jffs2_raw_node_ref = type { i64, %struct.jffs2_raw_node_ref* }

@.str = private unnamed_addr constant [52 x i8] c"Freeing all node refs for eraseblock offset 0x%08x\0A\00", align 1
@REF_LINK_NODE = common dso_local global i64 0, align 8
@REF_EMPTY_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_free_jeb_node_refs(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_eraseblock*, align 8
  %5 = alloca %struct.jffs2_raw_node_ref*, align 8
  %6 = alloca %struct.jffs2_raw_node_ref*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %4, align 8
  %7 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %8 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %12 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %11, i32 0, i32 1
  %13 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %12, align 8
  store %struct.jffs2_raw_node_ref* %13, %struct.jffs2_raw_node_ref** %6, align 8
  store %struct.jffs2_raw_node_ref* %13, %struct.jffs2_raw_node_ref** %5, align 8
  br label %14

14:                                               ; preds = %46, %23, %2
  %15 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %16 = icmp ne %struct.jffs2_raw_node_ref* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %19 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REF_LINK_NODE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %25 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %24, i32 0, i32 1
  %26 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %25, align 8
  store %struct.jffs2_raw_node_ref* %26, %struct.jffs2_raw_node_ref** %6, align 8
  %27 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %5, align 8
  %28 = call i32 @jffs2_free_refblock(%struct.jffs2_raw_node_ref* %27)
  %29 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  store %struct.jffs2_raw_node_ref* %29, %struct.jffs2_raw_node_ref** %5, align 8
  br label %14

30:                                               ; preds = %17
  %31 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %32 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REF_EMPTY_NODE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %38 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %37, i32 0, i32 1
  %39 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %38, align 8
  %40 = icmp ne %struct.jffs2_raw_node_ref* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %43 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %44 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %45 = call i32 @jffs2_remove_node_refs_from_ino_list(%struct.jffs2_sb_info* %42, %struct.jffs2_raw_node_ref* %43, %struct.jffs2_eraseblock* %44)
  br label %46

46:                                               ; preds = %41, %36, %30
  %47 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %48 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %47, i32 1
  store %struct.jffs2_raw_node_ref* %48, %struct.jffs2_raw_node_ref** %6, align 8
  br label %14

49:                                               ; preds = %14
  %50 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %51 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %53 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %52, i32 0, i32 1
  store %struct.jffs2_raw_node_ref* null, %struct.jffs2_raw_node_ref** %53, align 8
  ret void
}

declare dso_local i32 @jffs2_dbg(i32, i8*, i32) #1

declare dso_local i32 @jffs2_free_refblock(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @jffs2_remove_node_refs_from_ino_list(%struct.jffs2_sb_info*, %struct.jffs2_raw_node_ref*, %struct.jffs2_eraseblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

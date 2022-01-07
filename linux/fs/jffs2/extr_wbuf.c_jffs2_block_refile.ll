; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_wbuf.c_jffs2_block_refile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_wbuf.c_jffs2_block_refile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.jffs2_eraseblock* }
%struct.jffs2_eraseblock = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"About to refile bad block at %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Refiling block at %08x to bad_used_list\0A\00", align 1
@REFILE_NOTEMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Refiling block at %08x to erase_pending_list\0A\00", align 1
@REF_OBSOLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32)* @jffs2_block_refile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_block_refile(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i32 %2) #0 {
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_eraseblock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %9 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %13 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %12, i32 0, i32 6
  %14 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %13, align 8
  %15 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %16 = icmp eq %struct.jffs2_eraseblock* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %19 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %18, i32 0, i32 6
  store %struct.jffs2_eraseblock* null, %struct.jffs2_eraseblock** %19, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %22 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %21, i32 0, i32 4
  %23 = call i32 @list_del(i32* %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %26 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %31 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %35 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %34, i32 0, i32 4
  %36 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %37 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %36, i32 0, i32 5
  %38 = call i32 @list_add(i32* %35, i32* %37)
  br label %60

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @REFILE_NOTEMPTY, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %46 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %50 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %49, i32 0, i32 4
  %51 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %52 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %51, i32 0, i32 4
  %53 = call i32 @list_add(i32* %50, i32* %52)
  %54 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %55 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %59 = call i32 @jffs2_garbage_collect_trigger(%struct.jffs2_sb_info* %58)
  br label %60

60:                                               ; preds = %39, %29
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %62 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %63 = call i32 @jffs2_prealloc_raw_node_refs(%struct.jffs2_sb_info* %61, %struct.jffs2_eraseblock* %62, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %104, label %65

65:                                               ; preds = %60
  %66 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %67 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %70 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %71 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %72 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %75 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %73, %76
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* @REF_OBSOLETE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @jffs2_link_node_ref(%struct.jffs2_sb_info* %69, %struct.jffs2_eraseblock* %70, i32 %81, i32 %82, i32* null)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %86 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %91 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %96 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %101 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %65, %60
  %105 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %106 = call i32 @jffs2_dbg_dump_block_lists_nolock(%struct.jffs2_sb_info* %105)
  %107 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %108 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %109 = call i32 @jffs2_dbg_acct_sanity_check_nolock(%struct.jffs2_sb_info* %107, %struct.jffs2_eraseblock* %108)
  %110 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %111 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %112 = call i32 @jffs2_dbg_acct_paranoia_check_nolock(%struct.jffs2_sb_info* %110, %struct.jffs2_eraseblock* %111)
  ret void
}

declare dso_local i32 @jffs2_dbg(i32, i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jffs2_garbage_collect_trigger(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_prealloc_raw_node_refs(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32) #1

declare dso_local i32 @jffs2_link_node_ref(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32, i32, i32*) #1

declare dso_local i32 @jffs2_dbg_dump_block_lists_nolock(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_dbg_acct_sanity_check_nolock(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*) #1

declare dso_local i32 @jffs2_dbg_acct_paranoia_check_nolock(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

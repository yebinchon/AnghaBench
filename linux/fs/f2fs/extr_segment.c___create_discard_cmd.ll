; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___create_discard_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___create_discard_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discard_cmd = type { i64, i32, i32, i32, i64, i64, i32, i64, i8*, i8*, i8*, %struct.block_device* }
%struct.f2fs_sb_info = type { i32 }
%struct.block_device = type { i32 }
%struct.discard_cmd_control = type { i32, i32, %struct.list_head* }
%struct.list_head = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@discard_cmd_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@D_PREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.discard_cmd* (%struct.f2fs_sb_info*, %struct.block_device*, i8*, i8*, i8*)* @__create_discard_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.discard_cmd* @__create_discard_cmd(%struct.f2fs_sb_info* %0, %struct.block_device* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.discard_cmd_control*, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.discard_cmd*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %15 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %16, align 8
  store %struct.discard_cmd_control* %17, %struct.discard_cmd_control** %11, align 8
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %18, i32 %22)
  %24 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %11, align 8
  %25 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %24, i32 0, i32 2
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @plist_idx(i8* %27)
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 %28
  store %struct.list_head* %29, %struct.list_head** %12, align 8
  %30 = load i32, i32* @discard_cmd_slab, align 4
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call %struct.discard_cmd* @f2fs_kmem_cache_alloc(i32 %30, i32 %31)
  store %struct.discard_cmd* %32, %struct.discard_cmd** %13, align 8
  %33 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %34 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.block_device*, %struct.block_device** %7, align 8
  %37 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %38 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %37, i32 0, i32 11
  store %struct.block_device* %36, %struct.block_device** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %41 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %44 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %47 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %49 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @D_PREP, align 4
  %51 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %52 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %54 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %56 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %58 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %57, i32 0, i32 3
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %61 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %60, i32 0, i32 2
  %62 = load %struct.list_head*, %struct.list_head** %12, align 8
  %63 = call i32 @list_add_tail(i32* %61, %struct.list_head* %62)
  %64 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %65 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  %68 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %11, align 8
  %70 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %69, i32 0, i32 1
  %71 = call i32 @atomic_inc(i32* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %11, align 8
  %74 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %72, i64 %76
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load %struct.discard_cmd*, %struct.discard_cmd** %13, align 8
  ret %struct.discard_cmd* %79
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @plist_idx(i8*) #1

declare dso_local %struct.discard_cmd* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

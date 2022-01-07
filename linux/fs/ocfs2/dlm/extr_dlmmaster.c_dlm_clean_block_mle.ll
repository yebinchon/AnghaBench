; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_clean_block_mle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_clean_block_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_master_list_entry = type { i64, i32, i32, i32, i32 }

@DLM_MLE_BLOCK = common dso_local global i64 0, align 8
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"mle found, but dead node %u would not have been master\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"node %u was expected master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_master_list_entry*, i32)* @dlm_clean_block_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_clean_block_mle(%struct.dlm_ctxt* %0, %struct.dlm_master_list_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_master_list_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %15, i32 0, i32 2
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @O2NM_MAX_NODES, align 4
  %22 = call i32 @find_next_bit(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock(i32* %30)
  br label %49

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %35, i32 0, i32 3
  %37 = call i32 @atomic_set(i32* %36, i32 1)
  %38 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %41, i32 0, i32 1
  %43 = call i32 @wake_up(i32* %42)
  %44 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %45 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %46 = call i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt* %44, %struct.dlm_master_list_entry* %45)
  %47 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %48 = call i32 @__dlm_put_mle(%struct.dlm_master_list_entry* %47)
  br label %49

49:                                               ; preds = %32, %26
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @__dlm_put_mle(%struct.dlm_master_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

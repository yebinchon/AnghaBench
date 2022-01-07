; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_objectid.c_reiserfs_get_unused_objectid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_objectid.c_reiserfs_get_unused_objectid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_super_block = type { i32 }

@U32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"reiserfs-15100\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no more object ids\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reiserfs_get_unused_objectid(%struct.reiserfs_transaction_handle* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_super_block*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  %8 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %9 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %8, i32 0, i32 1
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %11)
  store %struct.reiserfs_super_block* %12, %struct.reiserfs_super_block** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %15 = call i64* @objectid_map(%struct.super_block* %13, %struct.reiserfs_super_block* %14)
  store i64* %15, i64** %6, align 8
  %16 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %17 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = call i32 @check_objectid_map(%struct.super_block* %23, i64* %24)
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %27)
  %29 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %26, i32 %28, i32 1)
  %30 = load i64*, i64** %6, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @le32_to_cpu(i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @U32_MAX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = call i32 @reiserfs_warning(%struct.super_block* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %41)
  %43 = call i32 @reiserfs_restore_prepared_buffer(%struct.super_block* %40, i32 %42)
  store i64 0, i64* %2, align 8
  br label %84

44:                                               ; preds = %1
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i64 @cpu_to_le32(i64 %46)
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %51 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %50)
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %78

53:                                               ; preds = %44
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load i64*, i64** %6, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %67 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %66)
  %68 = sub nsw i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memmove(i64* %63, i64* %65, i32 %71)
  %73 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %74 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %75 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %74)
  %76 = sub nsw i32 %75, 2
  %77 = call i32 @set_sb_oid_cursize(%struct.reiserfs_super_block* %73, i32 %76)
  br label %78

78:                                               ; preds = %61, %53, %44
  %79 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %80 = load %struct.super_block*, %struct.super_block** %4, align 8
  %81 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %80)
  %82 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %79, i32 %81)
  %83 = load i64, i64* %7, align 8
  store i64 %83, i64* %2, align 8
  br label %84

84:                                               ; preds = %78, %37
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i64* @objectid_map(%struct.super_block*, %struct.reiserfs_super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_objectid_map(%struct.super_block*, i64*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(%struct.super_block*, i32) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @sb_oid_cursize(%struct.reiserfs_super_block*) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @set_sb_oid_cursize(%struct.reiserfs_super_block*, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_drop_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_drop_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.f2fs_sb_info = type { i32 }

@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@I_SYNC = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @f2fs_drop_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_drop_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %4, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %9 = load i32, i32* @SBI_CP_DISABLED, align 4
  %10 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %8, i32 %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %18 = call i64 @F2FS_NODE_INO(%struct.f2fs_sb_info* %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = call i64 @F2FS_META_INO(%struct.f2fs_sb_info* %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %13
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @trace_f2fs_drop_inode(%struct.inode* %28, i32 1)
  store i32 1, i32* %2, align 4
  br label %115

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call i32 @inode_unhashed(%struct.inode* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %102, label %35

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @I_SYNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %99, label %47

47:                                               ; preds = %42
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call i32 @is_bad_inode(%struct.inode* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %99, label %51

51:                                               ; preds = %47
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = call i32 @atomic_inc(i32* %53)
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call i64 @f2fs_is_atomic_file(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = call i32 @f2fs_drop_inmem_pages(%struct.inode* %62)
  br label %64

64:                                               ; preds = %61, %51
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = call i32 @f2fs_destroy_extent_node(%struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sb_start_intwrite(i32 %69)
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = call i32 @f2fs_i_size_write(%struct.inode* %71, i32 0)
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = load i32, i32* @DATA, align 4
  %77 = call i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info* %74, %struct.inode* %75, i32* null, i32 0, i32 %76)
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @truncate_inode_pages_final(i32 %80)
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = call i64 @F2FS_HAS_BLOCKS(%struct.inode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %64
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = call i32 @f2fs_truncate(%struct.inode* %86)
  br label %88

88:                                               ; preds = %85, %64
  %89 = load %struct.inode*, %struct.inode** %3, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sb_end_intwrite(i32 %91)
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 3
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  %98 = call i32 @atomic_dec(i32* %97)
  br label %99

99:                                               ; preds = %88, %47, %42
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call i32 @trace_f2fs_drop_inode(%struct.inode* %100, i32 0)
  store i32 0, i32* %2, align 4
  br label %115

102:                                              ; preds = %35, %31
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = call i32 @generic_drop_inode(%struct.inode* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = call i32 @fscrypt_drop_inode(%struct.inode* %108)
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.inode*, %struct.inode** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @trace_f2fs_drop_inode(%struct.inode* %111, i32 %112)
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %99, %27
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @F2FS_NODE_INO(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_META_INO(%struct.f2fs_sb_info*) #1

declare dso_local i32 @trace_f2fs_drop_inode(%struct.inode*, i32) #1

declare dso_local i32 @inode_unhashed(%struct.inode*) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i32 @f2fs_drop_inmem_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_destroy_extent_node(%struct.inode*) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info*, %struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @truncate_inode_pages_final(i32) #1

declare dso_local i64 @F2FS_HAS_BLOCKS(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate(%struct.inode*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @generic_drop_inode(%struct.inode*) #1

declare dso_local i32 @fscrypt_drop_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

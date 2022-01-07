; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_file.c_reiserfs_file_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_file.c_reiserfs_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@i_pack_on_close_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-9001\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"pinning inode %lu because the preallocation can't be freed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @reiserfs_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.reiserfs_transaction_handle, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISREG(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = call i64 @atomic_add_unless(i32* %19, i32 -1, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = call i32 @atomic_dec_and_test(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %128

38:                                               ; preds = %23
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @i_pack_on_close_mask, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i64 @tail_has_to_be_packed(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = call i32 @mutex_unlock(i32* %59)
  store i32 0, i32* %3, align 4
  br label %128

61:                                               ; preds = %50, %46
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @reiserfs_write_lock(i32 %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %6, i32 %68, i32 1)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @journal_join_abort(%struct.reiserfs_transaction_handle* %6, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = call i32 @igrab(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @reiserfs_warning(i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %118

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %61
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %92)
  %94 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %6)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %91
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %99
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @i_pack_on_close_mask, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = call i64 @tail_has_to_be_packed(%struct.inode* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = call i32 @reiserfs_truncate_file(%struct.inode* %115, i32 0)
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %114, %110, %102, %99
  br label %118

118:                                              ; preds = %117, %80
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @reiserfs_write_unlock(i32 %121)
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %118, %56, %33, %22
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @tail_has_to_be_packed(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @journal_join_abort(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_truncate_file(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

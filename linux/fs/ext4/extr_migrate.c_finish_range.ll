; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_finish_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_finish_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.migrate_struct = type { i32, i64, i64 }
%struct.ext4_extent = type { i32, i32 }
%struct.ext4_ext_path = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT4_RESERVE_TRANS_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.migrate_struct*)* @finish_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_range(i32* %0, %struct.inode* %1, %struct.migrate_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.migrate_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_extent, align 4
  %11 = alloca %struct.ext4_ext_path*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.migrate_struct* %2, %struct.migrate_struct** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %13 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

17:                                               ; preds = %3
  %18 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %19 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cpu_to_le32(i64 %20)
  %22 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %24 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %27 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = add nsw i64 %29, 1
  %31 = call i32 @cpu_to_le16(i64 %30)
  %32 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %34 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %10, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @down_write(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %43 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %41, i64 %44, i32* null, i32 0)
  store %struct.ext4_ext_path* %45, %struct.ext4_ext_path** %11, align 8
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %47 = call i64 @IS_ERR(%struct.ext4_ext_path* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %17
  %50 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %51 = call i32 @PTR_ERR(%struct.ext4_ext_path* %50)
  store i32 %51, i32* %8, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %11, align 8
  br label %118

52:                                               ; preds = %17
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %55 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %58 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = add nsw i64 %60, 1
  %62 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %63 = call i32 @ext4_ext_calc_credits_for_single_extent(%struct.inode* %53, i64 %61, %struct.ext4_ext_path* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %52
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @EXT4_RESERVE_TRANS_BLOCKS, align 4
  %69 = call i64 @ext4_handle_has_enough_credits(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @up_write(i32* %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ext4_journal_restart(i32* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @down_write(i32* %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %118

86:                                               ; preds = %71
  br label %114

87:                                               ; preds = %66, %52
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ext4_journal_extend(i32* %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @up_write(i32* %99)
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @ext4_journal_restart(i32* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @down_write(i32* %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %118

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %90
  br label %113

113:                                              ; preds = %112, %87
  br label %114

114:                                              ; preds = %113, %86
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = call i32 @ext4_ext_insert_extent(i32* %115, %struct.inode* %116, %struct.ext4_ext_path** %11, %struct.ext4_extent* %10, i32 0)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %110, %85, %49
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @up_write(i32* %121)
  %123 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %124 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %123)
  %125 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %126 = call i32 @kfree(%struct.ext4_ext_path* %125)
  %127 = load %struct.migrate_struct*, %struct.migrate_struct** %7, align 8
  %128 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %118, %16
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_calc_credits_for_single_extent(%struct.inode*, i64, %struct.ext4_ext_path*) #1

declare dso_local i64 @ext4_handle_has_enough_credits(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_journal_restart(i32*, i32) #1

declare dso_local i32 @ext4_journal_extend(i32*, i32) #1

declare dso_local i32 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path**, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

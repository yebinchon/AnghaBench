; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_clear_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_clear_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@EXT4_FREE_BLOCKS_VALIDATED = common dso_local global i32 0, align 4
@EXT4_INODE_EA_INODE = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"attempt to clear invalid blocks %llu len %lu\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"retaking write access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i64, i64, i64*, i64*)* @ext4_clear_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_clear_blocks(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load i32, i32* @EXT4_FREE_BLOCKS_VALIDATED, align 4
  store i32 %19, i32* %17, align 4
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %7
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISLNK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = load i32, i32* @EXT4_INODE_EA_INODE, align 4
  %34 = call i64 @ext4_test_inode_flag(%struct.inode* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31, %25, %7
  %37 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %38 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %17, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %17, align 4
  br label %51

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i64 @ext4_should_journal_data(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %48 = load i32, i32* %17, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %17, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @EXT4_SB(i32 %54)
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @ext4_data_block_valid(i32 %55, i64 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @EXT4_ERROR_INODE(%struct.inode* %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %62, i64 %63)
  store i32 1, i32* %8, align 4
  br label %143

65:                                               ; preds = %51
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = call i64 @try_to_extend_transaction(i32* %66, %struct.inode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %118

70:                                               ; preds = %65
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = icmp ne %struct.buffer_head* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %75 = call i32 @BUFFER_TRACE(%struct.buffer_head* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %79 = call i32 @ext4_handle_dirty_metadata(i32* %76, %struct.inode* %77, %struct.buffer_head* %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %136

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = call i32 @ext4_mark_inode_dirty(i32* %86, %struct.inode* %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %136

93:                                               ; preds = %85
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call i32 @ext4_blocks_for_truncate(%struct.inode* %96)
  %98 = call i32 @ext4_truncate_restart_trans(i32* %94, %struct.inode* %95, i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %136

103:                                              ; preds = %93
  %104 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %105 = icmp ne %struct.buffer_head* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %108 = call i32 @BUFFER_TRACE(%struct.buffer_head* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %111 = call i32 @ext4_journal_get_write_access(i32* %109, %struct.buffer_head* %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %136

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %65
  %119 = load i64*, i64** %14, align 8
  store i64* %119, i64** %16, align 8
  br label %120

120:                                              ; preds = %126, %118
  %121 = load i64*, i64** %16, align 8
  %122 = load i64*, i64** %15, align 8
  %123 = icmp ult i64* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i64*, i64** %16, align 8
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %124
  %127 = load i64*, i64** %16, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %16, align 8
  br label %120

129:                                              ; preds = %120
  %130 = load i32*, i32** %9, align 8
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @ext4_free_blocks(i32* %130, %struct.inode* %131, i32* null, i64 %132, i64 %133, i32 %134)
  store i32 0, i32* %8, align 4
  br label %143

136:                                              ; preds = %115, %102, %92, %83
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @ext4_std_error(i32 %139, i32 %140)
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %136, %129, %60
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_data_block_valid(i32, i64, i64) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64, i64) #1

declare dso_local i64 @try_to_extend_transaction(i32*, %struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_truncate_restart_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_blocks_for_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i64, i64, i32) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_mark_freed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_mark_freed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.reiserfs_list_bitmap* }
%struct.reiserfs_list_bitmap = type { i32 }
%struct.reiserfs_journal_cnode = type { i64, %struct.reiserfs_journal_cnode*, %struct.buffer_head*, %struct.TYPE_4__*, i32, %struct.super_block* }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"journal-1702\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"journal_list_bitmap is NULL\00", align 1
@BLOCK_FREED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"journal-2138\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cn->bh->b_count < 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_mark_freed(%struct.reiserfs_transaction_handle* %0, %struct.super_block* %1, i64 %2) #0 {
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.reiserfs_journal*, align 8
  %8 = alloca %struct.reiserfs_journal_cnode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.reiserfs_list_bitmap*, align 8
  %11 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %12)
  store %struct.reiserfs_journal* %13, %struct.reiserfs_journal** %7, align 8
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.reiserfs_list_bitmap* null, %struct.reiserfs_list_bitmap** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %15 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %7, align 8
  %23 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.reiserfs_journal_cnode* @get_journal_hash_dev(%struct.super_block* %21, i32 %24, i64 %25)
  store %struct.reiserfs_journal_cnode* %26, %struct.reiserfs_journal_cnode** %8, align 8
  %27 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %28 = icmp ne %struct.reiserfs_journal_cnode* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %30, i32 0, i32 2
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %36 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %35, i32 0, i32 2
  %37 = load %struct.buffer_head*, %struct.buffer_head** %36, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %9, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = call i32 @get_bh(%struct.buffer_head* %38)
  br label %40

40:                                               ; preds = %34, %29, %3
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %45 = call i64 @buffer_journal_new(%struct.buffer_head* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = call i32 @clear_buffer_journal_new(%struct.buffer_head* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = call i32 @clear_prepared_bits(%struct.buffer_head* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = call i32 @reiserfs_clean_and_file_buffer(%struct.buffer_head* %52)
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @remove_from_transaction(%struct.super_block* %54, i64 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %166

58:                                               ; preds = %43, %40
  %59 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %7, align 8
  %60 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %62, align 8
  store %struct.reiserfs_list_bitmap* %63, %struct.reiserfs_list_bitmap** %10, align 8
  %64 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %10, align 8
  %65 = icmp ne %struct.reiserfs_list_bitmap* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = call i32 @reiserfs_panic(%struct.super_block* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %58
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %10, align 8
  %73 = call i32 @set_bit_in_list_bitmap(%struct.super_block* %70, i64 %71, %struct.reiserfs_list_bitmap* %72)
  %74 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %75 = icmp ne %struct.buffer_head* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %78 = call i32 @clear_prepared_bits(%struct.buffer_head* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %80 = call i32 @reiserfs_clean_and_file_buffer(%struct.buffer_head* %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @remove_from_transaction(%struct.super_block* %82, i64 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %7, align 8
  %88 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call %struct.reiserfs_journal_cnode* @get_journal_hash_dev(%struct.super_block* %86, i32 %89, i64 %90)
  store %struct.reiserfs_journal_cnode* %91, %struct.reiserfs_journal_cnode** %8, align 8
  br label %92

92:                                               ; preds = %161, %81
  %93 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %94 = icmp ne %struct.reiserfs_journal_cnode* %93, null
  br i1 %94, label %95, label %165

95:                                               ; preds = %92
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %98 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %97, i32 0, i32 5
  %99 = load %struct.super_block*, %struct.super_block** %98, align 8
  %100 = icmp eq %struct.super_block* %96, %99
  br i1 %100, label %101, label %161

101:                                              ; preds = %95
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %104 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %161

107:                                              ; preds = %101
  %108 = load i32, i32* @BLOCK_FREED, align 4
  %109 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %110 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %109, i32 0, i32 4
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  %112 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %113 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %112, i32 0, i32 2
  %114 = load %struct.buffer_head*, %struct.buffer_head** %113, align 8
  %115 = icmp ne %struct.buffer_head* %114, null
  br i1 %115, label %116, label %160

116:                                              ; preds = %107
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %146, label %119

119:                                              ; preds = %116
  %120 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %121 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %120, i32 0, i32 2
  %122 = load %struct.buffer_head*, %struct.buffer_head** %121, align 8
  %123 = call i32 @clear_buffer_journal_dirty(%struct.buffer_head* %122)
  %124 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %125 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %124, i32 0, i32 2
  %126 = load %struct.buffer_head*, %struct.buffer_head** %125, align 8
  %127 = call i32 @clear_buffer_dirty(%struct.buffer_head* %126)
  %128 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %129 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %128, i32 0, i32 2
  %130 = load %struct.buffer_head*, %struct.buffer_head** %129, align 8
  %131 = call i32 @clear_buffer_journal_test(%struct.buffer_head* %130)
  store i32 1, i32* %11, align 4
  %132 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %133 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %132, i32 0, i32 2
  %134 = load %struct.buffer_head*, %struct.buffer_head** %133, align 8
  %135 = call i32 @put_bh(%struct.buffer_head* %134)
  %136 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %137 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %136, i32 0, i32 2
  %138 = load %struct.buffer_head*, %struct.buffer_head** %137, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 0
  %140 = call i64 @atomic_read(i32* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %119
  %143 = load %struct.super_block*, %struct.super_block** %5, align 8
  %144 = call i32 @reiserfs_warning(%struct.super_block* %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %119
  br label %146

146:                                              ; preds = %145, %116
  %147 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %148 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %147, i32 0, i32 3
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = icmp ne %struct.TYPE_4__* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %153 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = call i32 @atomic_dec(i32* %155)
  br label %157

157:                                              ; preds = %151, %146
  %158 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %159 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %158, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %159, align 8
  br label %160

160:                                              ; preds = %157, %107
  br label %161

161:                                              ; preds = %160, %101, %95
  %162 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %163 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %162, i32 0, i32 1
  %164 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %163, align 8
  store %struct.reiserfs_journal_cnode* %164, %struct.reiserfs_journal_cnode** %8, align 8
  br label %92

165:                                              ; preds = %92
  br label %166

166:                                              ; preds = %165, %47
  %167 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %168 = icmp ne %struct.buffer_head* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %171 = call i32 @release_buffer_page(%struct.buffer_head* %170)
  br label %172

172:                                              ; preds = %169, %166
  ret i32 0
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.reiserfs_journal_cnode* @get_journal_hash_dev(%struct.super_block*, i32, i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @buffer_journal_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_journal_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_prepared_bits(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_clean_and_file_buffer(%struct.buffer_head*) #1

declare dso_local i32 @remove_from_transaction(%struct.super_block*, i64, i32) #1

declare dso_local i32 @reiserfs_panic(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @set_bit_in_list_bitmap(%struct.super_block*, i64, %struct.reiserfs_list_bitmap*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_buffer_journal_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_journal_test(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @release_buffer_page(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

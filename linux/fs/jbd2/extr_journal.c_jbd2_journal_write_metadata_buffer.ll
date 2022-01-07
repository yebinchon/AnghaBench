; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_journal_write_metadata_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_journal_write_metadata_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.journal_head = type { i8*, i32, i32 }
%struct.buffer_head = type { i8*, %struct.buffer_head*, i32, i32, i32, %struct.page*, i32 }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@JBD2_MAGIC_NUMBER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"file as BJ_Shadow\00", align 1
@BJ_Shadow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_write_metadata_buffer(%struct.TYPE_5__* %0, %struct.journal_head* %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.journal_head* %1, %struct.journal_head** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %21 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %17, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %18, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %27 = call i32 @buffer_jbddirty(%struct.buffer_head* %26)
  %28 = call i32 @J_ASSERT_BH(%struct.buffer_head* %25, i32 %27)
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = load i32, i32* @__GFP_NOFAIL, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.buffer_head* @alloc_buffer_head(i32 %31)
  store %struct.buffer_head* %32, %struct.buffer_head** %14, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 6
  %35 = call i32 @atomic_set(i32* %34, i32 1)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %37 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %36)
  br label %38

38:                                               ; preds = %118, %4
  %39 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %40 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  %44 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %45 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call %struct.page* @virt_to_page(i8* %46)
  store %struct.page* %47, %struct.page** %15, align 8
  %48 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %49 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @offset_in_page(i8* %50)
  store i32 %51, i32* %16, align 4
  br label %62

52:                                               ; preds = %38
  %53 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %54 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %53)
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 5
  %56 = load %struct.page*, %struct.page** %55, align 8
  store %struct.page* %56, %struct.page** %15, align 8
  %57 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %58 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %57)
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @offset_in_page(i8* %60)
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %52, %43
  %63 = load %struct.page*, %struct.page** %15, align 8
  %64 = call i8* @kmap_atomic(%struct.page* %63)
  store i8* %64, i8** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %16, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %74 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @jbd2_buffer_frozen_trigger(%struct.journal_head* %68, i8* %72, i32 %75)
  br label %77

77:                                               ; preds = %67, %62
  %78 = load i8*, i8** %13, align 8
  %79 = load i32, i32* %16, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @JBD2_MAGIC_NUMBER, align 4
  %85 = call i64 @cpu_to_be32(i32 %84)
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 1, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @kunmap_atomic(i8* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %150

93:                                               ; preds = %88
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %150, label %96

96:                                               ; preds = %93
  %97 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %98 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %100 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @GFP_NOFS, align 4
  %103 = call i8* @jbd2_alloc(i32 %101, i32 %102)
  store i8* %103, i8** %19, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %96
  %107 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %108 = call i32 @brelse(%struct.buffer_head* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %210

111:                                              ; preds = %96
  %112 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %113 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %112)
  %114 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %115 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i8*, i8** %19, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %121 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @jbd2_free(i8* %119, i32 %122)
  br label %38

124:                                              ; preds = %111
  %125 = load i8*, i8** %19, align 8
  %126 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %127 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.page*, %struct.page** %15, align 8
  %129 = call i8* @kmap_atomic(%struct.page* %128)
  store i8* %129, i8** %13, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* %16, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %136 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @memcpy(i8* %130, i8* %134, i32 %137)
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @kunmap_atomic(i8* %139)
  %141 = load i8*, i8** %19, align 8
  %142 = call %struct.page* @virt_to_page(i8* %141)
  store %struct.page* %142, %struct.page** %15, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = call i32 @offset_in_page(i8* %143)
  store i32 %144, i32* %16, align 4
  store i32 1, i32* %11, align 4
  %145 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %146 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %149 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %124, %93, %88
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.page*, %struct.page** %15, align 8
  %155 = call i8* @kmap_atomic(%struct.page* %154)
  store i8* %155, i8** %13, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* %16, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = bitcast i8* %159 to i32*
  store i32 0, i32* %160, align 4
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @kunmap_atomic(i8* %161)
  br label %163

163:                                              ; preds = %153, %150
  %164 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %165 = load %struct.page*, %struct.page** %15, align 8
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @set_bh_page(%struct.buffer_head* %164, %struct.page* %165, i32 %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %172 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %177 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %180 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %182 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %183 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %182, i32 0, i32 1
  store %struct.buffer_head* %181, %struct.buffer_head** %183, align 8
  %184 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %185 = call i32 @set_buffer_mapped(%struct.buffer_head* %184)
  %186 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %187 = call i32 @set_buffer_dirty(%struct.buffer_head* %186)
  %188 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %189 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %188, %struct.buffer_head** %189, align 8
  %190 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %191 = call i32 @JBUFFER_TRACE(%struct.journal_head* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = call i32 @spin_lock(i32* %193)
  %195 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %197 = load i32, i32* @BJ_Shadow, align 4
  %198 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %195, %struct.TYPE_5__* %196, i32 %197)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = call i32 @spin_unlock(i32* %200)
  %202 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %203 = call i32 @set_buffer_shadow(%struct.buffer_head* %202)
  %204 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %205 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %204)
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %11, align 4
  %208 = shl i32 %207, 1
  %209 = or i32 %206, %208
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %163, %106
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @alloc_buffer_head(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @jbd2_buffer_frozen_trigger(%struct.journal_head*, i8*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i8* @jbd2_alloc(i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @jbd2_free(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_bh_page(%struct.buffer_head*, %struct.page*, i32) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_buffer_shadow(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

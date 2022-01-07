; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_forget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i32, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"inconsistent data on disk\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"belongs to current transaction: unfile\00", align 1
@BJ_Forget = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"belongs to older transaction\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"belongs to none transaction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_forget(%struct.TYPE_9__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.journal_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call i64 @is_handle_aborted(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EROFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %209

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = call i32 @BUFFER_TRACE(%struct.buffer_head* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %28 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %30 = call i32 @buffer_jbd(%struct.buffer_head* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %204

33:                                               ; preds = %21
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %34)
  store %struct.journal_head* %35, %struct.journal_head** %8, align 8
  %36 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %37 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %38 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @J_EXPECT_JH(%struct.journal_head* %36, i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %204

48:                                               ; preds = %33
  %49 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %50 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %53 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %55 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = icmp eq %struct.TYPE_7__* %56, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %48
  %60 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %61 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %62 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @J_ASSERT_JH(%struct.journal_head* %60, i32 %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %69 = call i32 @clear_buffer_dirty(%struct.buffer_head* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %71 = call i32 @clear_buffer_jbddirty(%struct.buffer_head* %70)
  %72 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %73 = call i32 @JBUFFER_TRACE(%struct.journal_head* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %82 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %87 = call i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head* %86)
  %88 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = load i32, i32* @BJ_Forget, align 4
  %91 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %88, %struct.TYPE_7__* %89, i32 %90)
  br label %103

92:                                               ; preds = %77
  %93 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %94 = call i32 @__jbd2_journal_unfile_buffer(%struct.journal_head* %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %96 = call i32 @buffer_jbd(%struct.buffer_head* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  br label %204

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %85
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  br label %189

107:                                              ; preds = %48
  %108 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %109 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = icmp ne %struct.TYPE_7__* %110, null
  br i1 %111, label %112, label %154

112:                                              ; preds = %107
  %113 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %114 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %115 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = icmp eq %struct.TYPE_7__* %116, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @J_ASSERT_JH(%struct.journal_head* %113, i32 %121)
  %123 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %124 = call i32 @JBUFFER_TRACE(%struct.journal_head* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %126 = call i32 @set_buffer_freed(%struct.buffer_head* %125)
  %127 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %128 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %127, i32 0, i32 2
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = icmp ne %struct.TYPE_7__* %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %112
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = call i32 @spin_lock(i32* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %137 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %136, i32 0, i32 2
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  br label %153

141:                                              ; preds = %112
  %142 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %143 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = icmp eq %struct.TYPE_7__* %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @J_ASSERT(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  store i32 1, i32* %9, align 4
  br label %152

152:                                              ; preds = %151, %141
  br label %153

153:                                              ; preds = %152, %131
  br label %188

154:                                              ; preds = %107
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = call i32 @spin_lock(i32* %156)
  %158 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %159 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %154
  %163 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %164 = call i32 @JBUFFER_TRACE(%struct.journal_head* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = call i32 @spin_unlock(i32* %166)
  br label %204

168:                                              ; preds = %154
  %169 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %170 = call i32 @buffer_dirty(%struct.buffer_head* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %168
  %173 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %174 = call i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head* %173)
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = call i32 @spin_unlock(i32* %176)
  br label %204

178:                                              ; preds = %168
  %179 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %180 = call i32 @clear_buffer_dirty(%struct.buffer_head* %179)
  %181 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %183 = load i32, i32* @BJ_Forget, align 4
  %184 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %181, %struct.TYPE_7__* %182, i32 %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = call i32 @spin_unlock(i32* %186)
  br label %188

188:                                              ; preds = %178, %153
  br label %189

189:                                              ; preds = %188, %103
  %190 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %191 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %190)
  %192 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %193 = call i32 @__brelse(%struct.buffer_head* %192)
  br label %194

194:                                              ; preds = %204, %189
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %197, %194
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %3, align 4
  br label %209

204:                                              ; preds = %172, %162, %98, %45, %32
  %205 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %206 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %205)
  %207 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %208 = call i32 @__bforget(%struct.buffer_head* %207)
  br label %194

209:                                              ; preds = %202, %18
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i64 @is_handle_aborted(%struct.TYPE_9__*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @J_EXPECT_JH(%struct.journal_head*, i32, i8*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @__jbd2_journal_unfile_buffer(%struct.journal_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @__bforget(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

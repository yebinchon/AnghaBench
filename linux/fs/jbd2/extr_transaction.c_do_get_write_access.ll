; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_do_get_write_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_do_get_write_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.journal_head = type { i8*, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i64 }
%struct.buffer_head = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"journal_head %p, force_copy %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Journalling dirty buffer\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no transaction\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"file as BJ_Reserved\00", align 1
@BJ_Reserved = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"has frozen data\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"owned by older transaction\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"on shadow: sleep\00", align 1
@BH_Shadow = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@BJ_Metadata = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"generate frozen data\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"allocate memory for buffer\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.journal_head*, i32)* @do_get_write_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_get_write_access(%struct.TYPE_12__* %0, %struct.journal_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.journal_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.journal_head* %1, %struct.journal_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  store i8* null, i8** %12, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i64 @is_handle_aborted(%struct.TYPE_12__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EROFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %271

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  %28 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.journal_head* %28, i32 %29)
  %31 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %32 = call i32 @JBUFFER_TRACE(%struct.journal_head* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %226, %202, %24
  %34 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %35 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %8, align 8
  %36 = load i64, i64* @jiffies, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %38 = call i32 @lock_buffer(%struct.buffer_head* %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %39)
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @jiffies, align 8
  %43 = call i64 @jbd2_time_diff(i64 %41, i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* @HZ, align 4
  %46 = sdiv i32 %45, 10
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %33
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @jiffies_to_msecs(i64 %55)
  %57 = call i32 @trace_jbd2_lock_buffer_stall(i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %49, %33
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = call i64 @buffer_dirty(%struct.buffer_head* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %58
  %63 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %64 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %63, i32 0, i32 3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %69 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %70 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %69, i32 0, i32 3
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = icmp eq %struct.TYPE_10__* %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %76 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %75, i32 0, i32 3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = icmp eq %struct.TYPE_10__* %77, %80
  br label %82

82:                                               ; preds = %74, %67
  %83 = phi i1 [ true, %67 ], [ %81, %74 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @J_ASSERT_JH(%struct.journal_head* %68, i32 %84)
  %86 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %87 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %92 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %93 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = icmp eq %struct.TYPE_10__* %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @J_ASSERT_JH(%struct.journal_head* %91, i32 %97)
  br label %99

99:                                               ; preds = %90, %82
  %100 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %101 = call i32 @warn_dirty_buffer(%struct.buffer_head* %100)
  br label %102

102:                                              ; preds = %99, %62
  %103 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %104 = call i32 @JBUFFER_TRACE(%struct.journal_head* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %106 = call i32 @clear_buffer_dirty(%struct.buffer_head* %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %108 = call i32 @set_buffer_jbddirty(%struct.buffer_head* %107)
  br label %109

109:                                              ; preds = %102, %58
  %110 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %111 = call i32 @unlock_buffer(%struct.buffer_head* %110)
  %112 = load i32, i32* @EROFS, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = call i64 @is_handle_aborted(%struct.TYPE_12__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %119 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %118)
  br label %257

120:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  %121 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %122 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %121, i32 0, i32 3
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %125 = icmp eq %struct.TYPE_10__* %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %128 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %127, i32 0, i32 2
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %131 = icmp eq %struct.TYPE_10__* %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %120
  br label %251

133:                                              ; preds = %126
  %134 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %135 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %137 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %136, i32 0, i32 3
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = icmp ne %struct.TYPE_10__* %138, null
  br i1 %139, label %164, label %140

140:                                              ; preds = %133
  %141 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %142 = call i32 @JBUFFER_TRACE(%struct.journal_head* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %143 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %144 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %145 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @J_ASSERT_JH(%struct.journal_head* %143, i32 %149)
  %151 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %152 = call i32 @JBUFFER_TRACE(%struct.journal_head* %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %153 = call i32 (...) @smp_wmb()
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = call i32 @spin_lock(i32* %155)
  %157 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %159 = load i32, i32* @BJ_Reserved, align 4
  %160 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %157, %struct.TYPE_10__* %158, i32 %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = call i32 @spin_unlock(i32* %162)
  br label %251

164:                                              ; preds = %133
  %165 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %166 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %171 = call i32 @JBUFFER_TRACE(%struct.journal_head* %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %172 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %173 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %174 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %173, i32 0, i32 2
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = icmp eq %struct.TYPE_10__* %175, null
  %177 = zext i1 %176 to i32
  %178 = call i32 @J_ASSERT_JH(%struct.journal_head* %172, i32 %177)
  br label %246

179:                                              ; preds = %164
  %180 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %181 = call i32 @JBUFFER_TRACE(%struct.journal_head* %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %182 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %183 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %184 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %183, i32 0, i32 2
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = icmp eq %struct.TYPE_10__* %185, null
  %187 = zext i1 %186 to i32
  %188 = call i32 @J_ASSERT_JH(%struct.journal_head* %182, i32 %187)
  %189 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %190 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %191 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %190, i32 0, i32 3
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = icmp eq %struct.TYPE_10__* %192, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @J_ASSERT_JH(%struct.journal_head* %189, i32 %197)
  %199 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %200 = call i64 @buffer_shadow(%struct.buffer_head* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %179
  %203 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %204 = call i32 @JBUFFER_TRACE(%struct.journal_head* %203, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %205 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %206 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %205)
  %207 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %208 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %207, i32 0, i32 1
  %209 = load i32, i32* @BH_Shadow, align 4
  %210 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %211 = call i32 @wait_on_bit_io(i32* %208, i32 %209, i32 %210)
  br label %33

212:                                              ; preds = %179
  %213 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %214 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @BJ_Metadata, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %221, label %218

218:                                              ; preds = %212
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %245

221:                                              ; preds = %218, %212
  %222 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %223 = call i32 @JBUFFER_TRACE(%struct.journal_head* %222, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %224 = load i8*, i8** %12, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %239, label %226

226:                                              ; preds = %221
  %227 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %228 = call i32 @JBUFFER_TRACE(%struct.journal_head* %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %229 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %230 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %229)
  %231 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %232 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %231)
  %233 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @GFP_NOFS, align 4
  %236 = load i32, i32* @__GFP_NOFAIL, align 4
  %237 = or i32 %235, %236
  %238 = call i8* @jbd2_alloc(i32 %234, i32 %237)
  store i8* %238, i8** %12, align 8
  br label %33

239:                                              ; preds = %221
  %240 = load i8*, i8** %12, align 8
  %241 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %242 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %241, i32 0, i32 0
  store i8* %240, i8** %242, align 8
  store i8* null, i8** %12, align 8
  %243 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %244 = call i32 @jbd2_freeze_jh_data(%struct.journal_head* %243)
  br label %245

245:                                              ; preds = %239, %218
  br label %246

246:                                              ; preds = %245, %169
  %247 = call i32 (...) @smp_wmb()
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %249 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %250 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %249, i32 0, i32 2
  store %struct.TYPE_10__* %248, %struct.TYPE_10__** %250, align 8
  br label %251

251:                                              ; preds = %246, %140, %132
  %252 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %253 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %252)
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %255 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %256 = call i32 @jbd2_journal_cancel_revoke(%struct.TYPE_12__* %254, %struct.journal_head* %255)
  br label %257

257:                                              ; preds = %251, %117
  %258 = load i8*, i8** %12, align 8
  %259 = call i64 @unlikely(i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %257
  %262 = load i8*, i8** %12, align 8
  %263 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %264 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @jbd2_free(i8* %262, i32 %265)
  br label %267

267:                                              ; preds = %261, %257
  %268 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %269 = call i32 @JBUFFER_TRACE(%struct.journal_head* %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %270 = load i32, i32* %11, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %267, %21
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i64 @is_handle_aborted(%struct.TYPE_12__*) #1

declare dso_local i32 @jbd_debug(i32, i8*, %struct.journal_head*, i32) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i64 @jbd2_time_diff(i64, i64) #1

declare dso_local i32 @trace_jbd2_lock_buffer_stall(i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @warn_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @buffer_shadow(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_bit_io(i32*, i32, i32) #1

declare dso_local i8* @jbd2_alloc(i32, i32) #1

declare dso_local i32 @jbd2_freeze_jh_data(%struct.journal_head*) #1

declare dso_local i32 @jbd2_journal_cancel_revoke(%struct.TYPE_12__*, %struct.journal_head*) #1

declare dso_local i64 @unlikely(i8*) #1

declare dso_local i32 @jbd2_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

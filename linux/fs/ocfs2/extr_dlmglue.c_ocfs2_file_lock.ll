; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_file_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__*, %struct.ocfs2_file_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_file_private = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"File lock \22%s\22 has busy or locked state: flags: 0x%lx, level: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_AST_CONVERT = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Lock: \22%s\22 ex: %d, trylock: %d, returns: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_file_lock(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_file_private*, align 8
  %13 = alloca %struct.ocfs2_lock_res*, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_mask_waiter, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %10, align 4
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %32, align 8
  store %struct.ocfs2_file_private* %33, %struct.ocfs2_file_private** %12, align 8
  %34 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %12, align 8
  %35 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %34, i32 0, i32 0
  store %struct.ocfs2_lock_res* %35, %struct.ocfs2_lock_res** %13, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.ocfs2_super* @OCFS2_SB(i32 %42)
  store %struct.ocfs2_super* %43, %struct.ocfs2_super** %14, align 8
  %44 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %15)
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %29
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %53 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DLM_LOCK_NL, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51, %29
  %58 = load i32, i32* @ML_ERROR, align 4
  %59 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %60 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %63 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %66 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %58, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %204

71:                                               ; preds = %51
  %72 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %73 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %72, i32 0, i32 5
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %77 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %71
  %83 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %84 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %85 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %83, %struct.ocfs2_mask_waiter* %15, i32 %84, i32 0)
  %86 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %87 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %86, i32 0, i32 5
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %91 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %92 = load i32, i32* @DLM_LOCK_NL, align 4
  %93 = call i32 @ocfs2_lock_create(%struct.ocfs2_super* %90, %struct.ocfs2_lock_res* %91, i32 %92, i32 0)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %195

99:                                               ; preds = %82
  %100 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %15)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %195

106:                                              ; preds = %99
  %107 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %108 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %107, i32 0, i32 5
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %106, %71
  %112 = load i32, i32* @OCFS2_AST_CONVERT, align 4
  %113 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %114 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %120 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %122 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %123 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %121, i32 %122)
  %124 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %125 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %126 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %124, %struct.ocfs2_mask_waiter* %15, i32 %125, i32 0)
  %127 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %128 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %127, i32 0, i32 5
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %132 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %136 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %135, i32 0, i32 4
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %139 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* @OCFS2_LOCK_ID_MAX_LEN, align 8
  %142 = sub nsw i64 %141, 1
  %143 = call i32 @ocfs2_dlm_lock(i32 %133, i32 %134, i32* %136, i32 %137, i32 %140, i64 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %111
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @EAGAIN, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %157 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %155, %struct.ocfs2_lock_res* %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %154, %149
  %161 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %162 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %161, i32 1)
  %163 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %164 = call i32 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res* %163, %struct.ocfs2_mask_waiter* %15)
  br label %195

165:                                              ; preds = %111
  %166 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %167 = call i32 @ocfs2_wait_for_mask_interruptible(%struct.ocfs2_mask_waiter* %15, %struct.ocfs2_lock_res* %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @ERESTARTSYS, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @ocfs2_flock_handle_signal(%struct.ocfs2_lock_res* %173, i32 %174)
  store i32 %175, i32* %8, align 4
  br label %194

176:                                              ; preds = %165
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %193, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %182 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @BUG_ON(i32 %189)
  %191 = load i32, i32* @EAGAIN, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %185, %179, %176
  br label %194

194:                                              ; preds = %193, %172
  br label %195

195:                                              ; preds = %194, %160, %103, %96
  %196 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %197 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %195, %57
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_lock_create(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_dlm_lock(i32, i32, i32*, i32, i32, i64) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @ocfs2_wait_for_mask_interruptible(%struct.ocfs2_mask_waiter*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_flock_handle_signal(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

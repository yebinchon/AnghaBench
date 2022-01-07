; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_register.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_info = type { i32, i64, i32, i32, i64, i32, i32, %struct.module* }
%struct.module = type { i32 }
%struct.TYPE_3__ = type { i64 }

@backend = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ignoring unexpected backend '%s'\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"backend '%s' must support at least one frontend\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"backend '%s' must implement read() and write()\0A\00", align 1
@pstore_lock = common dso_local global i32 0, align 4
@psinfo = common dso_local global %struct.pstore_info* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"backend '%s' already loaded: ignoring '%s'\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@pstore_write_user_compat = common dso_local global i64 0, align 8
@PSTORE_FLAGS_DMESG = common dso_local global i32 0, align 4
@PSTORE_FLAGS_CONSOLE = common dso_local global i32 0, align 4
@PSTORE_FLAGS_FTRACE = common dso_local global i32 0, align 4
@PSTORE_FLAGS_PMSG = common dso_local global i32 0, align 4
@pstore_update_ms = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@pstore_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Registered %s as persistent store backend\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstore_register(%struct.pstore_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore_info*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.pstore_info* %0, %struct.pstore_info** %3, align 8
  %5 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %6 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %5, i32 0, i32 7
  %7 = load %struct.module*, %struct.module** %6, align 8
  store %struct.module* %7, %struct.module** %4, align 8
  %8 = load i64, i64* @backend, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i64, i64* @backend, align 8
  %12 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %13 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @strcmp(i64 %11, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %19 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %164

24:                                               ; preds = %10, %1
  %25 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %26 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %31 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %164

36:                                               ; preds = %24
  %37 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %38 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %43 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %48 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %164

53:                                               ; preds = %41
  %54 = call i32 @spin_lock(i32* @pstore_lock)
  %55 = load %struct.pstore_info*, %struct.pstore_info** @psinfo, align 8
  %56 = icmp ne %struct.pstore_info* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.pstore_info*, %struct.pstore_info** @psinfo, align 8
  %59 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %62 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %60, i64 %63)
  %65 = call i32 @spin_unlock(i32* @pstore_lock)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %164

68:                                               ; preds = %53
  %69 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %70 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @pstore_write_user_compat, align 8
  %75 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %76 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  store %struct.pstore_info* %78, %struct.pstore_info** @psinfo, align 8
  %79 = load %struct.pstore_info*, %struct.pstore_info** @psinfo, align 8
  %80 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %79, i32 0, i32 3
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.pstore_info*, %struct.pstore_info** @psinfo, align 8
  %83 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %82, i32 0, i32 2
  %84 = call i32 @sema_init(i32* %83, i32 1)
  %85 = call i32 @spin_unlock(i32* @pstore_lock)
  %86 = load %struct.module*, %struct.module** %4, align 8
  %87 = icmp ne %struct.module* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.module*, %struct.module** %4, align 8
  %90 = call i32 @try_module_get(%struct.module* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  store %struct.pstore_info* null, %struct.pstore_info** @psinfo, align 8
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %164

95:                                               ; preds = %88, %77
  %96 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %97 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PSTORE_FLAGS_DMESG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 (...) @allocate_buf_for_compression()
  br label %104

104:                                              ; preds = %102, %95
  %105 = call i64 (...) @pstore_is_mounted()
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @pstore_get_records(i32 0)
  br label %109

109:                                              ; preds = %107, %104
  %110 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %111 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PSTORE_FLAGS_DMESG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = call i32 (...) @pstore_register_kmsg()
  br label %118

118:                                              ; preds = %116, %109
  %119 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %120 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PSTORE_FLAGS_CONSOLE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = call i32 (...) @pstore_register_console()
  br label %127

127:                                              ; preds = %125, %118
  %128 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %129 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PSTORE_FLAGS_FTRACE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = call i32 (...) @pstore_register_ftrace()
  br label %136

136:                                              ; preds = %134, %127
  %137 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %138 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @PSTORE_FLAGS_PMSG, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 (...) @pstore_register_pmsg()
  br label %145

145:                                              ; preds = %143, %136
  %146 = load i64, i64* @pstore_update_ms, align 8
  %147 = icmp sge i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i64, i64* @jiffies, align 8
  %150 = load i64, i64* @pstore_update_ms, align 8
  %151 = call i64 @msecs_to_jiffies(i64 %150)
  %152 = add nsw i64 %149, %151
  store i64 %152, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pstore_timer, i32 0, i32 0), align 8
  %153 = call i32 @add_timer(%struct.TYPE_3__* @pstore_timer)
  br label %154

154:                                              ; preds = %148, %145
  %155 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %156 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* @backend, align 8
  %158 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %159 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %160)
  %162 = load %struct.module*, %struct.module** %4, align 8
  %163 = call i32 @module_put(%struct.module* %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %154, %92, %57, %46, %29, %17
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @pr_warn(i8*, i64, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @allocate_buf_for_compression(...) #1

declare dso_local i64 @pstore_is_mounted(...) #1

declare dso_local i32 @pstore_get_records(i32) #1

declare dso_local i32 @pstore_register_kmsg(...) #1

declare dso_local i32 @pstore_register_console(...) #1

declare dso_local i32 @pstore_register_ftrace(...) #1

declare dso_local i32 @pstore_register_pmsg(...) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

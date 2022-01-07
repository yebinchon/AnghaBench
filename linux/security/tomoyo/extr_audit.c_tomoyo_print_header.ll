; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_print_header.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { i32, i64, i32, %struct.tomoyo_obj_info* }
%struct.tomoyo_obj_info = type { i32, %struct.tomoyo_mini_stat*, i32* }
%struct.tomoyo_mini_stat = type { i32, i32, i32, i32, i32, i64 }
%struct.tomoyo_time = type { i32, i32, i32, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@tomoyo_print_header.tomoyo_buffer_len = internal constant i32 4096, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [166 x i8] c"#%04u/%02u/%02u %02u:%02u:%02u# profile=%u mode=%s granted=%s (global-pid=%u) task={ pid=%u ppid=%u uid=%u gid=%u euid=%u egid=%u suid=%u sgid=%u fsuid=%u fsgid=%u }\00", align 1
@tomoyo_mode = common dso_local global i8** null, align 8
@init_user_ns = common dso_local global i32 0, align 4
@TOMOYO_MAX_PATH_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c" path%u.parent={ uid=%u gid=%u ino=%lu perm=0%o }\00", align 1
@S_IALLUGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c" path%u={ uid=%u gid=%u ino=%lu major=%u minor=%u perm=0%o type=%s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" dev_major=%u dev_minor=%u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tomoyo_request_info*)* @tomoyo_print_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_print_header(%struct.tomoyo_request_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tomoyo_request_info*, align 8
  %4 = alloca %struct.tomoyo_time, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tomoyo_obj_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tomoyo_mini_stat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %3, align 8
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @task_pid_nr(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %3, align 8
  %16 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %15, i32 0, i32 3
  %17 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %16, align 8
  store %struct.tomoyo_obj_info* %17, %struct.tomoyo_obj_info** %6, align 8
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call i8* @kmalloc(i32 4096, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %222

23:                                               ; preds = %1
  %24 = call i32 (...) @ktime_get_real_seconds()
  %25 = call i32 @tomoyo_convert_time(i32 %24, %struct.tomoyo_time* %4)
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %4, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %4, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %4, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %4, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %3, align 8
  %40 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8**, i8*** @tomoyo_mode, align 8
  %43 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %3, align 8
  %44 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %3, align 8
  %49 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @tomoyo_yesno(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (...) @tomoyo_sys_getpid()
  %54 = call i32 (...) @tomoyo_sys_getppid()
  %55 = call i32 (...) @current_uid()
  %56 = call i32 @from_kuid(i32* @init_user_ns, i32 %55)
  %57 = call i32 (...) @current_gid()
  %58 = call i32 @from_kgid(i32* @init_user_ns, i32 %57)
  %59 = call i32 (...) @current_euid()
  %60 = call i32 @from_kuid(i32* @init_user_ns, i32 %59)
  %61 = call i32 (...) @current_egid()
  %62 = call i32 @from_kgid(i32* @init_user_ns, i32 %61)
  %63 = call i32 (...) @current_suid()
  %64 = call i32 @from_kuid(i32* @init_user_ns, i32 %63)
  %65 = call i32 (...) @current_sgid()
  %66 = call i32 @from_kgid(i32* @init_user_ns, i32 %65)
  %67 = call i32 (...) @current_fsuid()
  %68 = call i32 @from_kuid(i32* @init_user_ns, i32 %67)
  %69 = call i32 (...) @current_fsgid()
  %70 = call i32 @from_kgid(i32* @init_user_ns, i32 %69)
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 4095, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %41, i8* %47, i8* %51, i32 %52, i32 %53, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66, i32 %68, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %6, align 8
  %73 = icmp ne %struct.tomoyo_obj_info* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %23
  br label %214

75:                                               ; preds = %23
  %76 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %6, align 8
  %77 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %6, align 8
  %82 = call i32 @tomoyo_get_attributes(%struct.tomoyo_obj_info* %81)
  %83 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %6, align 8
  %84 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %75
  store i64 0, i64* %9, align 8
  br label %86

86:                                               ; preds = %210, %85
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @TOMOYO_MAX_PATH_STAT, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %213

90:                                               ; preds = %86
  %91 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %6, align 8
  %92 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %210

99:                                               ; preds = %90
  %100 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %6, align 8
  %101 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %100, i32 0, i32 1
  %102 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %102, i64 %103
  store %struct.tomoyo_mini_stat* %104, %struct.tomoyo_mini_stat** %10, align 8
  %105 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %106 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %11, align 4
  %108 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %109 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %12, align 4
  %111 = load i64, i64* %9, align 8
  %112 = and i64 %111, 1
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %99
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 4095, %119
  %121 = load i64, i64* %9, align 8
  %122 = lshr i64 %121, 1
  %123 = add i64 %122, 1
  %124 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %125 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @from_kuid(i32* @init_user_ns, i32 %126)
  %128 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %129 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @from_kgid(i32* @init_user_ns, i32 %130)
  %132 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %133 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %136 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @S_IALLUGO, align 4
  %139 = and i32 %137, %138
  %140 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %118, i32 %120, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %123, i32 %127, i32 %131, i64 %134, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %210

143:                                              ; preds = %99
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 4095, %148
  %150 = load i64, i64* %9, align 8
  %151 = lshr i64 %150, 1
  %152 = add i64 %151, 1
  %153 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %154 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @from_kuid(i32* @init_user_ns, i32 %155)
  %157 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %158 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @from_kgid(i32* @init_user_ns, i32 %159)
  %161 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %162 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @MAJOR(i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @MINOR(i32 %166)
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @S_IALLUGO, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @tomoyo_filetype(i32 %171)
  %173 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %147, i32 %149, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %152, i32 %156, i32 %160, i64 %163, i32 %165, i32 %167, i32 %170, i32 %172)
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i64 @S_ISCHR(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %143
  %180 = load i32, i32* %12, align 4
  %181 = call i64 @S_ISBLK(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %179, %143
  %184 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %10, align 8
  %185 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %11, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 4095, %191
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @MAJOR(i32 %193)
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @MINOR(i32 %195)
  %197 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %190, i32 %192, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %194, i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %183, %179
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 4095, %205
  %207 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %204, i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %200, %114, %98
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %9, align 8
  br label %86

213:                                              ; preds = %86
  br label %214

214:                                              ; preds = %213, %74
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %215, 4095
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i8*, i8** %7, align 8
  store i8* %218, i8** %2, align 8
  br label %222

219:                                              ; preds = %214
  %220 = load i8*, i8** %7, align 8
  %221 = call i32 @kfree(i8* %220)
  store i8* null, i8** %2, align 8
  br label %222

222:                                              ; preds = %219, %217, %22
  %223 = load i8*, i8** %2, align 8
  ret i8* %223
}

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @tomoyo_convert_time(i32, %struct.tomoyo_time*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @tomoyo_yesno(i32) #1

declare dso_local i32 @tomoyo_sys_getpid(...) #1

declare dso_local i32 @tomoyo_sys_getppid(...) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @current_gid(...) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @current_egid(...) #1

declare dso_local i32 @current_suid(...) #1

declare dso_local i32 @current_sgid(...) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @tomoyo_get_attributes(%struct.tomoyo_obj_info*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @tomoyo_filetype(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

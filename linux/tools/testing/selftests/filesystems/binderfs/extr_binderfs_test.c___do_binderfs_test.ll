; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c___do_binderfs_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c___do_binderfs_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binderfs_device = type { i32, i32, i32, i32, i32 }
%struct.binder_version = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"/dev/binderfs\00", align 1
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s - Failed to create binderfs mountpoint\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"binder\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s - Failed to mount binderfs\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"The Android binderfs filesystem is not available\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"my-binder\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"/dev/binderfs/binder-control\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"%s - Failed to open binder-control device\0A\00", align 1
@BINDER_CTL_ADD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"%s - Failed to allocate new binder device\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Allocated new binder device with major %d, minor %d, and name %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/dev/binderfs/my-binder\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%s - Failed to open my-binder device\0A\00", align 1
@BINDER_VERSION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [52 x i8] c"%s - Failed to open perform BINDER_VERSION request\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Detected binder version: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"%s - Failed to delete binder device\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Managed to delete binder-control device\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [83 x i8] c"%s - Failed to delete binder-control device but exited with unexpected error code\0A\00", align 1
@MNT_DETACH = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"%s - Failed to unmount binderfs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__do_binderfs_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_binderfs_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.binderfs_device, align 4
  %8 = alloca %struct.binder_version, align 4
  store i32 0, i32* %6, align 4
  %9 = bitcast %struct.binderfs_device* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  %10 = bitcast %struct.binder_version* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = call i32 (...) @change_to_mountns()
  %12 = call i32 @mkdir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 493)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = load i32, i32* @errno, align 4
  %17 = load i32, i32* @EEXIST, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %0
  %25 = call i32 @mount(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i32, i32* @errno, align 4
  %30 = load i32, i32* @ENODEV, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  %41 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ %37, %39 ], [ %41, %40 ]
  %44 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %24
  %46 = call i32 (...) @ksft_inc_pass_cnt()
  %47 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 @memcpy(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @O_RDONLY, align 4
  %52 = load i32, i32* @O_CLOEXEC, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @open(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %45
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @BINDER_CTL_ADD, align 4
  %64 = call i32 @ioctl(i32 %62, i32 %63, %struct.binderfs_device* %7)
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* @errno, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %61
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %77

75:                                               ; preds = %71
  %76 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ %72, %74 ], [ %76, %75 ]
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %61
  %83 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %7, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %7, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i32 %84, i32 %86, i32 %88)
  %90 = call i32 (...) @ksft_inc_pass_cnt()
  %91 = load i32, i32* @O_CLOEXEC, align 4
  %92 = load i32, i32* @O_RDONLY, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @open(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %93)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* %1, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %82
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %103

101:                                              ; preds = %97
  %102 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i32 [ %98, %100 ], [ %102, %101 ]
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 @strerror(i32 %105)
  %107 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %82
  %109 = load i32, i32* %1, align 4
  %110 = load i32, i32* @BINDER_VERSION, align 4
  %111 = bitcast %struct.binder_version* %8 to %struct.binderfs_device*
  %112 = call i32 @ioctl(i32 %109, i32 %110, %struct.binderfs_device* %111)
  store i32 %112, i32* %2, align 4
  %113 = load i32, i32* @errno, align 4
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load i32, i32* %3, align 4
  store i32 %116, i32* @errno, align 4
  %117 = load i32, i32* %2, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %108
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %125

123:                                              ; preds = %119
  %124 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi i32 [ %120, %122 ], [ %124, %123 ]
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 @strerror(i32 %127)
  %129 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %125, %108
  %131 = getelementptr inbounds %struct.binder_version, %struct.binder_version* %8, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %132)
  %134 = call i32 (...) @ksft_inc_pass_cnt()
  %135 = call i32 @unlink(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 %135, i32* %2, align 4
  %136 = load i32, i32* %2, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %144

142:                                              ; preds = %138
  %143 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %141
  %145 = phi i32 [ %139, %141 ], [ %143, %142 ]
  %146 = load i32, i32* @errno, align 4
  %147 = call i32 @strerror(i32 %146)
  %148 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %130
  %150 = call i32 (...) @ksft_inc_pass_cnt()
  %151 = call i32 @unlink(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 %151, i32* %2, align 4
  %152 = load i32, i32* %2, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %160

158:                                              ; preds = %154
  %159 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi i32 [ %155, %157 ], [ %159, %158 ]
  %162 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  br label %179

163:                                              ; preds = %149
  %164 = load i32, i32* @errno, align 4
  %165 = load i32, i32* @EPERM, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %173

171:                                              ; preds = %167
  %172 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %170
  %174 = phi i32 [ %168, %170 ], [ %172, %171 ]
  %175 = load i32, i32* @errno, align 4
  %176 = call i32 @strerror(i32 %175)
  %177 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.16, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %173, %163
  br label %179

179:                                              ; preds = %178, %160
  %180 = call i32 (...) @ksft_inc_xfail_cnt()
  br label %181

181:                                              ; preds = %179
  %182 = load i32, i32* @MNT_DETACH, align 4
  %183 = call i32 @umount2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %182)
  store i32 %183, i32* %2, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %189

187:                                              ; preds = %181
  %188 = call i32 @rmdir_protect_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %186
  %190 = phi i32 [ %184, %186 ], [ %188, %187 ]
  %191 = load i32, i32* %2, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i32, i32* @errno, align 4
  %195 = call i32 @strerror(i32 %194)
  %196 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %193, %189
  %198 = call i32 (...) @ksft_inc_pass_cnt()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @change_to_mountns(...) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @ksft_exit_fail_msg(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @mount(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @rmdir_protect_errno(i8*) #2

declare dso_local i32 @ksft_exit_skip(i8*) #2

declare dso_local i32 @ksft_inc_pass_cnt(...) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.binderfs_device*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @ksft_print_msg(i8*, i32, ...) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @ksft_inc_xfail_cnt(...) #2

declare dso_local i32 @umount2(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

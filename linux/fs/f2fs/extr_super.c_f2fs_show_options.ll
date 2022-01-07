; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i64, i64, i8*, i64, i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@BG_GC = common dso_local global i32 0, align 4
@FORCE_FG_GC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c",background_gc=%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@DISABLE_ROLL_FORWARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c",disable_roll_forward\00", align 1
@DISCARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c",discard\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c",nodiscard\00", align 1
@NOHEAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c",no_heap\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c",heap\00", align 1
@DISABLE_EXT_IDENTIFY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c",disable_ext_identify\00", align 1
@INLINE_DATA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c",inline_data\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c",noinline_data\00", align 1
@INLINE_DENTRY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c",inline_dentry\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c",noinline_dentry\00", align 1
@FLUSH_MERGE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c",flush_merge\00", align 1
@NOBARRIER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c",nobarrier\00", align 1
@FASTBOOT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c",fastboot\00", align 1
@EXTENT_CACHE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c",extent_cache\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c",noextent_cache\00", align 1
@DATA_FLUSH = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c",data_flush\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c",mode=\00", align 1
@ADAPTIVE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"adaptive\00", align 1
@LFS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"lfs\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c",active_logs=%u\00", align 1
@RESERVE_ROOT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [37 x i8] c",reserve_root=%u,resuid=%u,resgid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c",io_bits=%u\00", align 1
@WHINT_MODE_USER = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c",whint_mode=%s\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"user-based\00", align 1
@WHINT_MODE_FS = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"fs-based\00", align 1
@ALLOC_MODE_DEFAULT = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [15 x i8] c",alloc_mode=%s\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@ALLOC_MODE_REUSE = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"reuse\00", align 1
@DISABLE_CHECKPOINT = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [23 x i8] c",checkpoint=disable:%u\00", align 1
@FSYNC_MODE_POSIX = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [15 x i8] c",fsync_mode=%s\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@FSYNC_MODE_STRICT = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@FSYNC_MODE_NOBARRIER = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [10 x i8] c"nobarrier\00", align 1
@FAULT_INJECTION = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@INLINE_XATTR = common dso_local global i32 0, align 4
@INLINE_XATTR_SIZE = common dso_local global i32 0, align 4
@POSIX_ACL = common dso_local global i32 0, align 4
@PRJQUOTA = common dso_local global i32 0, align 4
@QUOTA = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@XATTR_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @f2fs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca %struct.TYPE_4__, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.f2fs_sb_info* @F2FS_SB(i32 %21)
  store %struct.f2fs_sb_info* %22, %struct.f2fs_sb_info** %5, align 8
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @f2fs_readonly(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %2
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %30 = load i32, i32* @BG_GC, align 4
  %31 = call i64 @test_opt(%struct.f2fs_sb_info* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %35 = load i32, i32* @FORCE_FG_GC, align 4
  %36 = call i64 @test_opt(%struct.f2fs_sb_info* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  br label %48

45:                                               ; preds = %28, %2
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %44
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %50 = load i32, i32* @DISABLE_ROLL_FORWARD, align 4
  %51 = call i64 @test_opt(%struct.f2fs_sb_info* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = call i32 @seq_puts(%struct.seq_file* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %58 = load i32, i32* @DISCARD, align 4
  %59 = call i64 @test_opt(%struct.f2fs_sb_info* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = call i32 @seq_puts(%struct.seq_file* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %69 = load i32, i32* @NOHEAP, align 4
  %70 = call i64 @test_opt(%struct.f2fs_sb_info* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 @seq_puts(%struct.seq_file* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 @seq_puts(%struct.seq_file* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %80 = load i32, i32* @DISABLE_EXT_IDENTIFY, align 4
  %81 = call i64 @test_opt(%struct.f2fs_sb_info* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = call i32 @seq_puts(%struct.seq_file* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %88 = load i32, i32* @INLINE_DATA, align 4
  %89 = call i64 @test_opt(%struct.f2fs_sb_info* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %97

94:                                               ; preds = %86
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = call i32 @seq_puts(%struct.seq_file* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %99 = load i32, i32* @INLINE_DENTRY, align 4
  %100 = call i64 @test_opt(%struct.f2fs_sb_info* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = call i32 @seq_puts(%struct.seq_file* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %108

105:                                              ; preds = %97
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = call i32 @seq_puts(%struct.seq_file* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %110 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @f2fs_readonly(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %108
  %115 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %116 = load i32, i32* @FLUSH_MERGE, align 4
  %117 = call i64 @test_opt(%struct.f2fs_sb_info* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = call i32 @seq_puts(%struct.seq_file* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114, %108
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %124 = load i32, i32* @NOBARRIER, align 4
  %125 = call i64 @test_opt(%struct.f2fs_sb_info* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = call i32 @seq_puts(%struct.seq_file* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %132 = load i32, i32* @FASTBOOT, align 4
  %133 = call i64 @test_opt(%struct.f2fs_sb_info* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %137 = call i32 @seq_puts(%struct.seq_file* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %130
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %140 = load i32, i32* @EXTENT_CACHE, align 4
  %141 = call i64 @test_opt(%struct.f2fs_sb_info* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = call i32 @seq_puts(%struct.seq_file* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %149

146:                                              ; preds = %138
  %147 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %148 = call i32 @seq_puts(%struct.seq_file* %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %151 = load i32, i32* @DATA_FLUSH, align 4
  %152 = call i64 @test_opt(%struct.f2fs_sb_info* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %156 = call i32 @seq_puts(%struct.seq_file* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %149
  %158 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %159 = call i32 @seq_puts(%struct.seq_file* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %160 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %161 = load i32, i32* @ADAPTIVE, align 4
  %162 = call i64 @test_opt(%struct.f2fs_sb_info* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %166 = call i32 @seq_puts(%struct.seq_file* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %176

167:                                              ; preds = %157
  %168 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %169 = load i32, i32* @LFS, align 4
  %170 = call i64 @test_opt(%struct.f2fs_sb_info* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = call i32 @seq_puts(%struct.seq_file* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %167
  br label %176

176:                                              ; preds = %175, %164
  %177 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %178 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %6, %struct.f2fs_sb_info* %178)
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %180)
  %182 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %183 = load i32, i32* @RESERVE_ROOT, align 4
  %184 = call i64 @test_opt(%struct.f2fs_sb_info* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %176
  %187 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %188 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %7, %struct.f2fs_sb_info* %188)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %8, %struct.f2fs_sb_info* %193)
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 10
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %195)
  %197 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %9, %struct.f2fs_sb_info* %197)
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 9
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %199)
  %201 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8* %192, i32 %196, i32 %200)
  br label %202

202:                                              ; preds = %186, %176
  %203 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %204 = call i64 @F2FS_IO_SIZE_BITS(%struct.f2fs_sb_info* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %208 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %10, %struct.f2fs_sb_info* %208)
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %206, %202
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %215 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @f2fs_show_quota_options(%struct.seq_file* %213, i32 %216)
  %218 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %11, %struct.f2fs_sb_info* %218)
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @WHINT_MODE_USER, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %212
  %224 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %225 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  br label %236

226:                                              ; preds = %212
  %227 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %12, %struct.f2fs_sb_info* %227)
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @WHINT_MODE_FS, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %234 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %233, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %226
  br label %236

236:                                              ; preds = %235, %223
  %237 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %13, %struct.f2fs_sb_info* %237)
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @ALLOC_MODE_DEFAULT, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %244 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  br label %255

245:                                              ; preds = %236
  %246 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %14, %struct.f2fs_sb_info* %246)
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @ALLOC_MODE_REUSE, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %253 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %252, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %245
  br label %255

255:                                              ; preds = %254, %242
  %256 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %257 = load i32, i32* @DISABLE_CHECKPOINT, align 4
  %258 = call i64 @test_opt(%struct.f2fs_sb_info* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %262 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %15, %struct.f2fs_sb_info* %262)
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %261, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8* %264)
  br label %266

266:                                              ; preds = %260, %255
  %267 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %16, %struct.f2fs_sb_info* %267)
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @FSYNC_MODE_POSIX, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %274 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %273, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  br label %295

275:                                              ; preds = %266
  %276 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %17, %struct.f2fs_sb_info* %276)
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @FSYNC_MODE_STRICT, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %283 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  br label %294

284:                                              ; preds = %275
  %285 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  call void @F2FS_OPTION(%struct.TYPE_4__* sret %18, %struct.f2fs_sb_info* %285)
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @FSYNC_MODE_NOBARRIER, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %292 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %291, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %284
  br label %294

294:                                              ; preds = %293, %281
  br label %295

295:                                              ; preds = %294, %272
  ret i32 0
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(i32) #1

declare dso_local i32 @f2fs_readonly(i32) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local void @F2FS_OPTION(%struct.TYPE_4__* sret, %struct.f2fs_sb_info*) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

declare dso_local i64 @F2FS_IO_SIZE_BITS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_show_quota_options(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c__ext4_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c__ext4_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount_opts = type { i64, i32, i32 }
%struct.seq_file = type { i32 }
%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ext4_super_block* }
%struct.ext4_super_block = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%csb=%llu\00", align 1
@ext4_mount_opts = common dso_local global %struct.mount_opts* null, align 8
@Opt_err = common dso_local global i64 0, align 8
@MOPT_SET = common dso_local global i32 0, align 4
@MOPT_CLEAR = common dso_local global i32 0, align 4
@MOPT_CLEAR_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@EXT4_DEF_RESUID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%cresuid=%u\00", align 1
@EXT4_DEF_RESGID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%cresgid=%u\00", align 1
@ERRORS_RO = common dso_local global i32 0, align 4
@EXT4_ERRORS_RO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%cerrors=remount-ro\00", align 1
@ERRORS_CONT = common dso_local global i32 0, align 4
@EXT4_ERRORS_CONTINUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%cerrors=continue\00", align 1
@ERRORS_PANIC = common dso_local global i32 0, align 4
@EXT4_ERRORS_PANIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%cerrors=panic\00", align 1
@JBD2_DEFAULT_MAX_COMMIT_AGE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"%ccommit=%lu\00", align 1
@EXT4_DEF_MIN_BATCH_TIME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"%cmin_batch_time=%u\00", align 1
@EXT4_DEF_MAX_BATCH_TIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"%cmax_batch_time=%u\00", align 1
@SB_I_VERSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"%ci_version\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%cstripe=%lu\00", align 1
@EXT4_MOUNT_DATA_FLAGS = common dso_local global i32 0, align 4
@DATA_FLAGS = common dso_local global i32 0, align 4
@EXT4_MOUNT_JOURNAL_DATA = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"%cdata=journal\00", align 1
@EXT4_MOUNT_ORDERED_DATA = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"%cdata=ordered\00", align 1
@EXT4_MOUNT_WRITEBACK_DATA = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"%cdata=writeback\00", align 1
@EXT4_DEF_INODE_READAHEAD_BLKS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"%cinode_readahead_blks=%u\00", align 1
@INIT_INODE_TABLE = common dso_local global i32 0, align 4
@EXT4_DEF_LI_WAIT_MULT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"%cinit_itable=%u\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"%cmax_dir_size_kb=%u\00", align 1
@DATA_ERR_ABORT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"%cdata_err=abort\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"%ctest_dummy_encryption\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.super_block*, i32)* @_ext4_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ext4_show_options(%struct.seq_file* %0, %struct.super_block* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.ext4_super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mount_opts*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %14)
  store %struct.ext4_sb_info* %15, %struct.ext4_sb_info** %7, align 8
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 12
  %18 = load %struct.ext4_super_block*, %struct.ext4_super_block** %17, align 8
  store %struct.ext4_super_block* %18, %struct.ext4_super_block** %8, align 8
  %19 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %20 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 10, i32 44
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %12, align 1
  %27 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %28 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load i8, i8* %12, align 1
  %34 = sext i8 %33 to i32
  %35 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %36 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %3
  %40 = load %struct.mount_opts*, %struct.mount_opts** @ext4_mount_opts, align 8
  store %struct.mount_opts* %40, %struct.mount_opts** %11, align 8
  br label %41

41:                                               ; preds = %121, %39
  %42 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %43 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @Opt_err, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %124

47:                                               ; preds = %41
  %48 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %49 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MOPT_SET, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %54 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MOPT_SET, align 4
  %57 = load i32, i32* @MOPT_CLEAR, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %47
  %62 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %63 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MOPT_CLEAR_ERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %47
  br label %121

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %74 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %77 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = xor i32 %78, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %72
  br label %121

84:                                               ; preds = %72, %69
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %89 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %92 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %90, %93
  %95 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %96 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %87, %84
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %99
  %103 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %104 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %107 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102, %87
  br label %121

112:                                              ; preds = %102, %99
  %113 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %117 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @token2str(i64 %118)
  %120 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %119)
  br label %121

121:                                              ; preds = %112, %111, %83, %68
  %122 = load %struct.mount_opts*, %struct.mount_opts** %11, align 8
  %123 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %122, i32 1
  store %struct.mount_opts* %123, %struct.mount_opts** %11, align 8
  br label %41

124:                                              ; preds = %41
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %124
  %128 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %129 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @EXT4_DEF_RESUID, align 4
  %132 = call i32 @make_kuid(i32* @init_user_ns, i32 %131)
  %133 = call i32 @uid_eq(i32 %130, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %137 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le16_to_cpu(i32 %138)
  %140 = load i32, i32* @EXT4_DEF_RESUID, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %135, %127, %124
  %143 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %144 = load i8, i8* %12, align 1
  %145 = sext i8 %144 to i32
  %146 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %147 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %148)
  %150 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %142, %135
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %151
  %155 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %156 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @EXT4_DEF_RESGID, align 4
  %159 = call i32 @make_kgid(i32* @init_user_ns, i32 %158)
  %160 = call i32 @gid_eq(i32 %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %154
  %163 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %164 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le16_to_cpu(i32 %165)
  %167 = load i32, i32* @EXT4_DEF_RESGID, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %162, %154, %151
  %170 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %171 = load i8, i8* %12, align 1
  %172 = sext i8 %171 to i32
  %173 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %174 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %173, i32 0, i32 10
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %175)
  %177 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %176)
  br label %178

178:                                              ; preds = %169, %162
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %187

182:                                              ; preds = %178
  %183 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %184 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @le16_to_cpu(i32 %185)
  br label %187

187:                                              ; preds = %182, %181
  %188 = phi i32 [ -1, %181 ], [ %186, %182 ]
  store i32 %188, i32* %9, align 4
  %189 = load %struct.super_block*, %struct.super_block** %5, align 8
  %190 = load i32, i32* @ERRORS_RO, align 4
  %191 = call i64 @test_opt(%struct.super_block* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @EXT4_ERRORS_RO, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %199 = load i8, i8* %12, align 1
  %200 = sext i8 %199 to i32
  %201 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %198, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %197, %193, %187
  %203 = load %struct.super_block*, %struct.super_block** %5, align 8
  %204 = load i32, i32* @ERRORS_CONT, align 4
  %205 = call i64 @test_opt(%struct.super_block* %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %202
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @EXT4_ERRORS_CONTINUE, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %213 = load i8, i8* %12, align 1
  %214 = sext i8 %213 to i32
  %215 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %212, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %211, %207, %202
  %217 = load %struct.super_block*, %struct.super_block** %5, align 8
  %218 = load i32, i32* @ERRORS_PANIC, align 4
  %219 = call i64 @test_opt(%struct.super_block* %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @EXT4_ERRORS_PANIC, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %227 = load i8, i8* %12, align 1
  %228 = sext i8 %227 to i32
  %229 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %225, %221, %216
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %230
  %234 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %235 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @JBD2_DEFAULT_MAX_COMMIT_AGE, align 4
  %238 = load i32, i32* @HZ, align 4
  %239 = mul nsw i32 %237, %238
  %240 = icmp ne i32 %236, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %233, %230
  %242 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %243 = load i8, i8* %12, align 1
  %244 = sext i8 %243 to i32
  %245 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %246 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @HZ, align 4
  %249 = sdiv i32 %247, %248
  %250 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %242, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %244, i32 %249)
  br label %251

251:                                              ; preds = %241, %233
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %251
  %255 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %256 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @EXT4_DEF_MIN_BATCH_TIME, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %254, %251
  %261 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %262 = load i8, i8* %12, align 1
  %263 = sext i8 %262 to i32
  %264 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %265 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %261, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %260, %254
  %269 = load i32, i32* %6, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %273 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @EXT4_DEF_MAX_BATCH_TIME, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %271, %268
  %278 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %279 = load i8, i8* %12, align 1
  %280 = sext i8 %279 to i32
  %281 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %282 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %278, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %280, i32 %283)
  br label %285

285:                                              ; preds = %277, %271
  %286 = load %struct.super_block*, %struct.super_block** %5, align 8
  %287 = getelementptr inbounds %struct.super_block, %struct.super_block* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @SB_I_VERSION, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %285
  %293 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %294 = load i8, i8* %12, align 1
  %295 = sext i8 %294 to i32
  %296 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %292, %285
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %297
  %301 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %302 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %300, %297
  %306 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %307 = load i8, i8* %12, align 1
  %308 = sext i8 %307 to i32
  %309 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %310 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %306, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %308, i32 %311)
  br label %313

313:                                              ; preds = %305, %300
  %314 = load i32, i32* %6, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %325, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* @EXT4_MOUNT_DATA_FLAGS, align 4
  %318 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %319 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %10, align 4
  %322 = xor i32 %320, %321
  %323 = and i32 %317, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %361

325:                                              ; preds = %316, %313
  %326 = load %struct.super_block*, %struct.super_block** %5, align 8
  %327 = load i32, i32* @DATA_FLAGS, align 4
  %328 = call i64 @test_opt(%struct.super_block* %326, i32 %327)
  %329 = load i64, i64* @EXT4_MOUNT_JOURNAL_DATA, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %325
  %332 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %333 = load i8, i8* %12, align 1
  %334 = sext i8 %333 to i32
  %335 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %332, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %334)
  br label %360

336:                                              ; preds = %325
  %337 = load %struct.super_block*, %struct.super_block** %5, align 8
  %338 = load i32, i32* @DATA_FLAGS, align 4
  %339 = call i64 @test_opt(%struct.super_block* %337, i32 %338)
  %340 = load i64, i64* @EXT4_MOUNT_ORDERED_DATA, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %336
  %343 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %344 = load i8, i8* %12, align 1
  %345 = sext i8 %344 to i32
  %346 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %343, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %345)
  br label %359

347:                                              ; preds = %336
  %348 = load %struct.super_block*, %struct.super_block** %5, align 8
  %349 = load i32, i32* @DATA_FLAGS, align 4
  %350 = call i64 @test_opt(%struct.super_block* %348, i32 %349)
  %351 = load i64, i64* @EXT4_MOUNT_WRITEBACK_DATA, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %358

353:                                              ; preds = %347
  %354 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %355 = load i8, i8* %12, align 1
  %356 = sext i8 %355 to i32
  %357 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %354, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %356)
  br label %358

358:                                              ; preds = %353, %347
  br label %359

359:                                              ; preds = %358, %342
  br label %360

360:                                              ; preds = %359, %331
  br label %361

361:                                              ; preds = %360, %316
  %362 = load i32, i32* %6, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %370, label %364

364:                                              ; preds = %361
  %365 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %366 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %365, i32 0, i32 7
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @EXT4_DEF_INODE_READAHEAD_BLKS, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %378

370:                                              ; preds = %364, %361
  %371 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %372 = load i8, i8* %12, align 1
  %373 = sext i8 %372 to i32
  %374 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %375 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 4
  %377 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %371, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %373, i32 %376)
  br label %378

378:                                              ; preds = %370, %364
  %379 = load %struct.super_block*, %struct.super_block** %5, align 8
  %380 = load i32, i32* @INIT_INODE_TABLE, align 4
  %381 = call i64 @test_opt(%struct.super_block* %379, i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %400

383:                                              ; preds = %378
  %384 = load i32, i32* %6, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %392, label %386

386:                                              ; preds = %383
  %387 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %388 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @EXT4_DEF_LI_WAIT_MULT, align 4
  %391 = icmp ne i32 %389, %390
  br i1 %391, label %392, label %400

392:                                              ; preds = %386, %383
  %393 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %394 = load i8, i8* %12, align 1
  %395 = sext i8 %394 to i32
  %396 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %397 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 8
  %399 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %393, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %395, i32 %398)
  br label %400

400:                                              ; preds = %392, %386, %378
  %401 = load i32, i32* %6, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %408, label %403

403:                                              ; preds = %400
  %404 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %405 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %404, i32 0, i32 9
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %403, %400
  %409 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %410 = load i8, i8* %12, align 1
  %411 = sext i8 %410 to i32
  %412 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %413 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 4
  %415 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, i32, ...)*)(%struct.seq_file* %409, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %411, i32 %414)
  br label %416

416:                                              ; preds = %408, %403
  %417 = load %struct.super_block*, %struct.super_block** %5, align 8
  %418 = load i32, i32* @DATA_ERR_ABORT, align 4
  %419 = call i64 @test_opt(%struct.super_block* %417, i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %416
  %422 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %423 = load i8, i8* %12, align 1
  %424 = sext i8 %423 to i32
  %425 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %422, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %424)
  br label %426

426:                                              ; preds = %421, %416
  %427 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %428 = call i64 @DUMMY_ENCRYPTION_ENABLED(%struct.ext4_sb_info* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %426
  %431 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %432 = load i8, i8* %12, align 1
  %433 = sext i8 %432 to i32
  %434 = call i32 (%struct.seq_file*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i32, ...)*)(%struct.seq_file* %431, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %433)
  br label %435

435:                                              ; preds = %430, %426
  %436 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %437 = load %struct.super_block*, %struct.super_block** %5, align 8
  %438 = call i32 @ext4_show_quota_options(%struct.seq_file* %436, %struct.super_block* %437)
  ret i32 0
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @seq_printf(...) #1

declare dso_local i32 @token2str(i64) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @make_kuid(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @make_kgid(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i64 @DUMMY_ENCRYPTION_ENABLED(%struct.ext4_sb_info*) #1

declare dso_local i32 @ext4_show_quota_options(%struct.seq_file*, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.ocfs2_super = type { i64, i64, i32, i32, i32, i32, i32, i64*, i32 }

@OCFS2_MOUNT_HB_LOCAL = common dso_local global i64 0, align 8
@OCFS2_MOUNT_HB_GLOBAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c",_netdev\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@OCFS2_HB_LOCAL = common dso_local global i32 0, align 4
@OCFS2_HB_GLOBAL = common dso_local global i32 0, align 4
@OCFS2_HB_NONE = common dso_local global i32 0, align 4
@OCFS2_MOUNT_NOINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c",nointr\00", align 1
@OCFS2_MOUNT_DATA_WRITEBACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c",data=writeback\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",data=ordered\00", align 1
@OCFS2_MOUNT_BARRIER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c",barrier=1\00", align 1
@OCFS2_MOUNT_ERRORS_PANIC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@OCFS2_MOUNT_ERRORS_CONT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c",errors=remount-ro\00", align 1
@OCFS2_INVALID_SLOT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c",preferred_slot=%d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c",atime_quantum=%u\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c",commit=%u\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c",localalloc=%d\00", align 1
@OCFS2_MOUNT_LOCALFLOCKS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c",localflocks,\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"cluster_stack\00", align 1
@OCFS2_STACK_LABEL_LEN = common dso_local global i32 0, align 4
@OCFS2_MOUNT_USRQUOTA = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c",usrquota\00", align 1
@OCFS2_MOUNT_GRPQUOTA = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c",grpquota\00", align 1
@OCFS2_MOUNT_COHERENCY_BUFFERED = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c",coherency=buffered\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c",coherency=full\00", align 1
@OCFS2_MOUNT_NOUSERXATTR = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c",nouser_xattr\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c",user_xattr\00", align 1
@OCFS2_MOUNT_INODE64 = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c",inode64\00", align 1
@OCFS2_MOUNT_POSIX_ACL = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c",acl\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c",noacl\00", align 1
@OCFS2_DEFAULT_RESV_LEVEL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c",resv_level=%d\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c",dir_resv_level=%d\00", align 1
@OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [22 x i8] c",journal_async_commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @ocfs2_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ocfs2_super* @OCFS2_SB(i32 %10)
  store %struct.ocfs2_super* %11, %struct.ocfs2_super** %5, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @OCFS2_MOUNT_HB_LOCAL, align 8
  %17 = load i64, i64* @OCFS2_MOUNT_HB_GLOBAL, align 8
  %18 = or i64 %16, %17
  %19 = and i64 %15, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @OCFS2_MOUNT_HB_LOCAL, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* @OCFS2_HB_LOCAL, align 4
  %31 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %36

32:                                               ; preds = %21
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i32, i32* @OCFS2_HB_GLOBAL, align 4
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load i32, i32* @OCFS2_HB_NONE, align 4
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @OCFS2_MOUNT_NOINTR, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @OCFS2_MOUNT_DATA_WRITEBACK, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %60

57:                                               ; preds = %49
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @OCFS2_MOUNT_BARRIER, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @OCFS2_MOUNT_ERRORS_PANIC, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %88

76:                                               ; preds = %68
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @OCFS2_MOUNT_ERRORS_CONT, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %87

84:                                               ; preds = %76
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %90 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @OCFS2_INVALID_SLOT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %97 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %103 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %104)
  %106 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %107 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %100
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %113 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @HZ, align 4
  %116 = sdiv i32 %114, %115
  %117 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %110, %100
  %119 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %120 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %123 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 20, %124
  %126 = ashr i32 %121, %125
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %129 = call i32 @ocfs2_la_default_mb(%struct.ocfs2_super* %128)
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %118
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @OCFS2_MOUNT_LOCALFLOCKS, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %145 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %144, i32 0, i32 7
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %153 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %152, i32 0, i32 7
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* @OCFS2_STACK_LABEL_LEN, align 4
  %156 = call i32 @seq_show_option_n(%struct.seq_file* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i64* %154, i32 %155)
  br label %157

157:                                              ; preds = %150, %143
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* @OCFS2_MOUNT_USRQUOTA, align 8
  %160 = and i64 %158, %159
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %164 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %157
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @OCFS2_MOUNT_GRPQUOTA, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %172 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* @OCFS2_MOUNT_COHERENCY_BUFFERED, align 8
  %176 = and i64 %174, %175
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %180 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %184

181:                                              ; preds = %173
  %182 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %183 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* @OCFS2_MOUNT_NOUSERXATTR, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %191 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  br label %195

192:                                              ; preds = %184
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i64, i64* %6, align 8
  %197 = load i64, i64* @OCFS2_MOUNT_INODE64, align 8
  %198 = and i64 %196, %197
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %202 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %195
  %204 = load i64, i64* %6, align 8
  %205 = load i64, i64* @OCFS2_MOUNT_POSIX_ACL, align 8
  %206 = and i64 %204, %205
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %210 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %214

211:                                              ; preds = %203
  %212 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %213 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %208
  %215 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %216 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @OCFS2_DEFAULT_RESV_LEVEL, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %222 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %223 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %220, %214
  %227 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %228 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %231 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %236 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %237 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %235, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %234, %226
  %241 = load i64, i64* %6, align 8
  %242 = load i64, i64* @OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT, align 8
  %243 = and i64 %241, %242
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %247 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %246, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  br label %248

248:                                              ; preds = %245, %240
  ret i32 0
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @ocfs2_la_default_mb(%struct.ocfs2_super*) #1

declare dso_local i32 @seq_show_option_n(%struct.seq_file*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

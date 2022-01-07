; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_jffs2_do_read_inode_internal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_jffs2_do_read_inode_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { i8*, %struct.TYPE_8__*, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.jffs2_raw_inode = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.jffs2_readinode_info = type { i64, i64, i64, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [26 x i8] c"ino #%u pino/nlink is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot read nodes for ino %u, returned error is %d\0A\00", align 1
@INO_STATE_READING = common dso_local global i64 0, align 8
@INO_STATE_CHECKEDABSENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to build final fragtree for inode #%u: error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"no data nodes found for ino #%u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"but it has children so we fake some modes for it\0A\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@INO_STATE_PRESENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"failed to read from flash: error %d, %zd of %zd bytes read\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"CRC failed for read_inode of inode %u at physical location 0x%x\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [83 x i8] c"Truncating ino #%u to %d bytes failed because it only had %d bytes to start with!\0A\00", align 1
@INO_STATE_CHECKING = common dso_local global i64 0, align 8
@JFFS2_MAX_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [69 x i8] c"can't allocate %u bytes of memory for the symlink target path cache\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"symlink's target '%s' cached\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Argh. Special inode #%u with mode 0%o had metadata node\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Argh. Special inode #%u with mode 0%o has no fragments\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"Argh. Special inode #%u with mode 0x%x had more than one node\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_inode*)* @jffs2_do_read_inode_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_do_read_inode_internal(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_info* %1, %struct.jffs2_raw_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_inode_info*, align 8
  %7 = alloca %struct.jffs2_raw_inode*, align 8
  %8 = alloca %struct.jffs2_readinode_info, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_inode_info* %1, %struct.jffs2_inode_info** %6, align 8
  store %struct.jffs2_raw_inode* %2, %struct.jffs2_raw_inode** %7, align 8
  %14 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %15 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %20 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  %25 = call i32 @memset(%struct.jffs2_readinode_info* %8, i32 0, i32 48)
  %26 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %27 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %28 = call i32 @jffs2_get_inode_nodes(%struct.jffs2_sb_info* %26, %struct.jffs2_inode_info* %27, %struct.jffs2_readinode_info* %8)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %3
  %32 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %33 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INO_STATE_READING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %31
  %47 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %48 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %49 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* @INO_STATE_CHECKEDABSENT, align 4
  %52 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %47, %struct.TYPE_8__* %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %31
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %510

55:                                               ; preds = %3
  %56 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %57 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %58 = call i32 @jffs2_build_inode_fragtree(%struct.jffs2_sb_info* %56, %struct.jffs2_inode_info* %57, %struct.jffs2_readinode_info* %8)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %55
  %62 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %63 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %70 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @INO_STATE_READING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %61
  %77 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %78 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %79 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* @INO_STATE_CHECKEDABSENT, align 4
  %82 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %77, %struct.TYPE_8__* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %61
  %84 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 5
  %85 = call i32 @jffs2_free_tmp_dnode_info_list(i32* %84)
  %86 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = icmp ne %struct.TYPE_9__* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = call i32 @jffs2_free_full_dnode(%struct.TYPE_11__* %93)
  %95 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32 @jffs2_free_tmp_dnode_info(%struct.TYPE_9__* %96)
  %98 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %98, align 8
  br label %99

99:                                               ; preds = %89, %83
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %4, align 4
  br label %510

101:                                              ; preds = %55
  %102 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %132

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %121 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %120, i32 0, i32 3
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %121, align 8
  %122 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = call i32 @jffs2_free_tmp_dnode_info(%struct.TYPE_9__* %123)
  br label %130

125:                                              ; preds = %105
  %126 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %127 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = call i32 @jffs2_kill_tn(%struct.jffs2_sb_info* %126, %struct.TYPE_9__* %128)
  br label %130

130:                                              ; preds = %125, %115
  %131 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %131, align 8
  br label %132

132:                                              ; preds = %130, %101
  %133 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %136 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %138 = call i32 @jffs2_dbg_fragtree_paranoia_check_nolock(%struct.jffs2_inode_info* %137)
  %139 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %227

146:                                              ; preds = %132
  %147 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %148 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %183

153:                                              ; preds = %146
  %154 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %155 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %153
  %164 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %165 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %164, i32 0, i32 1
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @INO_STATE_READING, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %163
  %172 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %173 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %174 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %173, i32 0, i32 1
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i32, i32* @INO_STATE_CHECKEDABSENT, align 4
  %177 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %172, %struct.TYPE_8__* %175, i32 %176)
  br label %178

178:                                              ; preds = %171, %163
  %179 = load i32, i32* @EIO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %510

181:                                              ; preds = %153
  %182 = call i32 @JFFS2_NOTICE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %146
  %184 = load i32, i32* @S_IRUGO, align 4
  %185 = or i32 130, %184
  %186 = load i32, i32* @S_IWUSR, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @S_IXUGO, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @cpu_to_jemode(i32 %189)
  %191 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %192 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = call i8* @cpu_to_je32(i64 0)
  %194 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %195 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %194, i32 0, i32 6
  store i8* %193, i8** %195, align 8
  %196 = call i8* @cpu_to_je32(i64 0)
  %197 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %198 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  %199 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %200 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %199, i32 0, i32 5
  store i8* %196, i8** %200, align 8
  %201 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %202 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %201, i32 0, i32 10
  store i8* %196, i8** %202, align 8
  %203 = call i8* @cpu_to_je32(i64 0)
  %204 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %205 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  %206 = call i8* @cpu_to_je16(i32 0)
  %207 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %208 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %207, i32 0, i32 9
  store i8* %206, i8** %208, align 8
  %209 = call i8* @cpu_to_je16(i32 0)
  %210 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %211 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %210, i32 0, i32 8
  store i8* %209, i8** %211, align 8
  %212 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %213 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %212, i32 0, i32 1
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @INO_STATE_READING, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %183
  %220 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %221 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %222 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %221, i32 0, i32 1
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* @INO_STATE_PRESENT, align 4
  %225 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %220, %struct.TYPE_8__* %223, i32 %224)
  br label %226

226:                                              ; preds = %219, %183
  store i32 0, i32* %4, align 4
  br label %510

227:                                              ; preds = %132
  %228 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %229 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @ref_offset(i64 %230)
  %232 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %233 = bitcast %struct.jffs2_raw_inode* %232 to i8*
  %234 = call i32 @jffs2_flash_read(%struct.jffs2_sb_info* %228, i32 %231, i64 88, i64* %11, i8* %233)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %227
  %238 = load i64, i64* %11, align 8
  %239 = icmp ne i64 %238, 88
  br i1 %239, label %240, label %253

240:                                              ; preds = %237, %227
  %241 = load i32, i32* %12, align 4
  %242 = load i64, i64* %11, align 8
  %243 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %241, i64 %242, i64 88)
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %12, align 4
  br label %251

248:                                              ; preds = %240
  %249 = load i32, i32* @EIO, align 4
  %250 = sub nsw i32 0, %249
  br label %251

251:                                              ; preds = %248, %246
  %252 = phi i32 [ %247, %246 ], [ %250, %248 ]
  store i32 %252, i32* %4, align 4
  br label %510

253:                                              ; preds = %237
  %254 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %255 = call i64 @crc32(i32 0, %struct.jffs2_raw_inode* %254, i32 80)
  store i64 %255, i64* %9, align 8
  %256 = load i64, i64* %9, align 8
  %257 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %258 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %257, i32 0, i32 7
  %259 = load i8*, i8** %258, align 8
  %260 = call i64 @je32_to_cpu(i8* %259)
  %261 = icmp ne i64 %256, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %253
  %263 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %264 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %263, i32 0, i32 1
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @ref_offset(i64 %269)
  %271 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %267, i32 %270)
  %272 = load i32, i32* @EIO, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %4, align 4
  br label %510

274:                                              ; preds = %253
  %275 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %276 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @jemode_to_cpu(i32 %277)
  %279 = load i32, i32* @S_IFMT, align 4
  %280 = and i32 %278, %279
  switch i32 %280, label %494 [
    i32 130, label %281
    i32 128, label %298
    i32 129, label %330
    i32 132, label %424
    i32 131, label %424
  ]

281:                                              ; preds = %274
  %282 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %285 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %284, i32 0, i32 6
  %286 = load i8*, i8** %285, align 8
  %287 = call i64 @je32_to_cpu(i8* %286)
  %288 = icmp sgt i64 %283, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = call i8* @cpu_to_je32(i64 %291)
  %293 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %294 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %293, i32 0, i32 4
  store i8* %292, i8** %294, align 8
  %295 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %296 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %295, i32 0, i32 5
  store i8* %292, i8** %296, align 8
  br label %297

297:                                              ; preds = %289, %281
  br label %494

298:                                              ; preds = %274
  %299 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %300 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %301 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %300, i32 0, i32 2
  %302 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %303 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %302, i32 0, i32 3
  %304 = load i8*, i8** %303, align 8
  %305 = call i64 @je32_to_cpu(i8* %304)
  %306 = call i64 @jffs2_truncate_fragtree(%struct.jffs2_sb_info* %299, i32* %301, i64 %305)
  store i64 %306, i64* %10, align 8
  %307 = load i64, i64* %10, align 8
  %308 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %309 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %308, i32 0, i32 3
  %310 = load i8*, i8** %309, align 8
  %311 = call i64 @je32_to_cpu(i8* %310)
  %312 = icmp ne i64 %307, %311
  br i1 %312, label %313, label %329

313:                                              ; preds = %298
  %314 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %315 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %314, i32 0, i32 1
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %320 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %319, i32 0, i32 3
  %321 = load i8*, i8** %320, align 8
  %322 = call i64 @je32_to_cpu(i8* %321)
  %323 = load i64, i64* %10, align 8
  %324 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i32 %318, i64 %322, i64 %323)
  %325 = load i64, i64* %10, align 8
  %326 = call i8* @cpu_to_je32(i64 %325)
  %327 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %328 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %327, i32 0, i32 3
  store i8* %326, i8** %328, align 8
  br label %329

329:                                              ; preds = %313, %298
  br label %494

330:                                              ; preds = %274
  %331 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %332 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %331, i32 0, i32 3
  %333 = load i8*, i8** %332, align 8
  %334 = call i64 @je32_to_cpu(i8* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %330
  %337 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %338 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %337, i32 0, i32 2
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %341 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %340, i32 0, i32 3
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %336, %330
  %343 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %344 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %343, i32 0, i32 1
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @INO_STATE_CHECKING, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %423

350:                                              ; preds = %342
  %351 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %352 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %351, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  %354 = call i64 @je32_to_cpu(i8* %353)
  store i64 %354, i64* %13, align 8
  %355 = load i64, i64* %13, align 8
  %356 = load i64, i64* @JFFS2_MAX_NAME_LEN, align 8
  %357 = icmp sgt i64 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %350
  %359 = load i32, i32* @ENAMETOOLONG, align 4
  %360 = sub nsw i32 0, %359
  store i32 %360, i32* %4, align 4
  br label %510

361:                                              ; preds = %350
  %362 = load i64, i64* %13, align 8
  %363 = add nsw i64 %362, 1
  %364 = trunc i64 %363 to i32
  %365 = load i32, i32* @GFP_KERNEL, align 4
  %366 = call i8* @kmalloc(i32 %364, i32 %365)
  %367 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %368 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %367, i32 0, i32 0
  store i8* %366, i8** %368, align 8
  %369 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %370 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %379, label %373

373:                                              ; preds = %361
  %374 = load i64, i64* %13, align 8
  %375 = trunc i64 %374 to i32
  %376 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i32 %375)
  %377 = load i32, i32* @ENOMEM, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %4, align 4
  br label %510

379:                                              ; preds = %361
  %380 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %381 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = call i32 @ref_offset(i64 %382)
  %384 = sext i32 %383 to i64
  %385 = add i64 %384, 88
  %386 = trunc i64 %385 to i32
  %387 = load i64, i64* %13, align 8
  %388 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %389 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %388, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8
  %391 = call i32 @jffs2_flash_read(%struct.jffs2_sb_info* %380, i32 %386, i64 %387, i64* %11, i8* %390)
  store i32 %391, i32* %12, align 4
  %392 = load i32, i32* %12, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %379
  %395 = load i64, i64* %11, align 8
  %396 = load i64, i64* %13, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %413

398:                                              ; preds = %394, %379
  %399 = load i64, i64* %11, align 8
  %400 = load i64, i64* %13, align 8
  %401 = icmp ne i64 %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %398
  %403 = load i32, i32* @EIO, align 4
  %404 = sub nsw i32 0, %403
  store i32 %404, i32* %12, align 4
  br label %405

405:                                              ; preds = %402, %398
  %406 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %407 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %406, i32 0, i32 0
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 @kfree(i8* %408)
  %410 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %411 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %410, i32 0, i32 0
  store i8* null, i8** %411, align 8
  %412 = load i32, i32* %12, align 4
  store i32 %412, i32* %4, align 4
  br label %510

413:                                              ; preds = %394
  %414 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %415 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %414, i32 0, i32 0
  %416 = load i8*, i8** %415, align 8
  %417 = load i64, i64* %13, align 8
  %418 = getelementptr inbounds i8, i8* %416, i64 %417
  store i8 0, i8* %418, align 1
  %419 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %420 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %419, i32 0, i32 0
  %421 = load i8*, i8** %420, align 8
  %422 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %421)
  br label %423

423:                                              ; preds = %413, %342
  br label %424

424:                                              ; preds = %274, %274, %423
  %425 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %426 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %425, i32 0, i32 3
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %426, align 8
  %428 = icmp ne %struct.TYPE_11__* %427, null
  br i1 %428, label %429, label %442

429:                                              ; preds = %424
  %430 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %431 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %430, i32 0, i32 1
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %436 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @jemode_to_cpu(i32 %437)
  %439 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %434, i32 %438)
  %440 = load i32, i32* @EIO, align 4
  %441 = sub nsw i32 0, %440
  store i32 %441, i32* %4, align 4
  br label %510

442:                                              ; preds = %424
  %443 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %444 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %443, i32 0, i32 2
  %445 = call %struct.TYPE_10__* @frag_first(i32* %444)
  %446 = icmp ne %struct.TYPE_10__* %445, null
  br i1 %446, label %460, label %447

447:                                              ; preds = %442
  %448 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %449 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %448, i32 0, i32 1
  %450 = load %struct.TYPE_8__*, %struct.TYPE_8__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %454 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @jemode_to_cpu(i32 %455)
  %457 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %452, i32 %456)
  %458 = load i32, i32* @EIO, align 4
  %459 = sub nsw i32 0, %458
  store i32 %459, i32* %4, align 4
  br label %510

460:                                              ; preds = %442
  %461 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %462 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %461, i32 0, i32 2
  %463 = call %struct.TYPE_10__* @frag_first(i32* %462)
  %464 = call i32 @frag_next(%struct.TYPE_10__* %463)
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %479

466:                                              ; preds = %460
  %467 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %468 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %467, i32 0, i32 1
  %469 = load %struct.TYPE_8__*, %struct.TYPE_8__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %473 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @jemode_to_cpu(i32 %474)
  %476 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 %471, i32 %475)
  %477 = load i32, i32* @EIO, align 4
  %478 = sub nsw i32 0, %477
  store i32 %478, i32* %4, align 4
  br label %510

479:                                              ; preds = %460
  %480 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %481 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %480, i32 0, i32 2
  %482 = call %struct.TYPE_10__* @frag_first(i32* %481)
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %483, align 8
  %485 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %486 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %485, i32 0, i32 3
  store %struct.TYPE_11__* %484, %struct.TYPE_11__** %486, align 8
  %487 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %488 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %487, i32 0, i32 2
  %489 = call %struct.TYPE_10__* @frag_first(i32* %488)
  %490 = call i32 @jffs2_free_node_frag(%struct.TYPE_10__* %489)
  %491 = load i32, i32* @RB_ROOT, align 4
  %492 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %493 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %492, i32 0, i32 2
  store i32 %491, i32* %493, align 8
  br label %494

494:                                              ; preds = %274, %479, %329, %297
  %495 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %496 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %495, i32 0, i32 1
  %497 = load %struct.TYPE_8__*, %struct.TYPE_8__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @INO_STATE_READING, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %502, label %509

502:                                              ; preds = %494
  %503 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %504 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %505 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %504, i32 0, i32 1
  %506 = load %struct.TYPE_8__*, %struct.TYPE_8__** %505, align 8
  %507 = load i32, i32* @INO_STATE_PRESENT, align 4
  %508 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %503, %struct.TYPE_8__* %506, i32 %507)
  br label %509

509:                                              ; preds = %502, %494
  store i32 0, i32* %4, align 4
  br label %510

510:                                              ; preds = %509, %466, %447, %429, %405, %373, %358, %262, %251, %226, %178, %99, %53
  %511 = load i32, i32* %4, align 4
  ret i32 %511
}

declare dso_local i32 @dbg_readinode(i8*, ...) #1

declare dso_local i32 @memset(%struct.jffs2_readinode_info*, i32, i32) #1

declare dso_local i32 @jffs2_get_inode_nodes(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_readinode_info*) #1

declare dso_local i32 @JFFS2_ERROR(i8*, i32, ...) #1

declare dso_local i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @jffs2_build_inode_fragtree(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_readinode_info*) #1

declare dso_local i32 @jffs2_free_tmp_dnode_info_list(i32*) #1

declare dso_local i32 @jffs2_free_full_dnode(%struct.TYPE_11__*) #1

declare dso_local i32 @jffs2_free_tmp_dnode_info(%struct.TYPE_9__*) #1

declare dso_local i32 @jffs2_kill_tn(%struct.jffs2_sb_info*, %struct.TYPE_9__*) #1

declare dso_local i32 @jffs2_dbg_fragtree_paranoia_check_nolock(%struct.jffs2_inode_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, ...) #1

declare dso_local i32 @JFFS2_NOTICE(i8*) #1

declare dso_local i32 @cpu_to_jemode(i32) #1

declare dso_local i8* @cpu_to_je32(i64) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i32 @jffs2_flash_read(%struct.jffs2_sb_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @ref_offset(i64) #1

declare dso_local i64 @crc32(i32, %struct.jffs2_raw_inode*, i32) #1

declare dso_local i64 @je32_to_cpu(i8*) #1

declare dso_local i32 @jemode_to_cpu(i32) #1

declare dso_local i64 @jffs2_truncate_fragtree(%struct.jffs2_sb_info*, i32*, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.TYPE_10__* @frag_first(i32*) #1

declare dso_local i32 @frag_next(%struct.TYPE_10__*) #1

declare dso_local i32 @jffs2_free_node_frag(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

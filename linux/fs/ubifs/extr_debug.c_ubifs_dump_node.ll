; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_ch = type { i32, i32, i32 }
%struct.ubifs_pad_node = type { i32 }
%struct.ubifs_sb_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.ubifs_mst_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_ref_node = type { i32, i32, i32 }
%struct.ubifs_ino_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_dent_node = type { i8*, i64, i32, i32, i32 }
%struct.ubifs_data_node = type { i32, i32, i32, i32 }
%struct.ubifs_trun_node = type { i32, i32, i32 }
%struct.ubifs_idx_node = type { i32, i32 }
%struct.ubifs_branch = type { i32, i32, i32, i32 }
%struct.ubifs_orph_node = type { i32*, i32 }

@DBG_KEY_BUF_LEN = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Not a node, first %zu bytes:\00", align 1
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@dbg_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"\09pad_len        %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09key_hash       %d (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\09key_fmt        %d (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09flags          %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\09big_lpt        %u\0A\00", align 1
@UBIFS_FLG_BIGLPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"\09space_fixup    %u\0A\00", align 1
@UBIFS_FLG_SPACE_FIXUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"\09min_io_size    %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"\09leb_size       %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\09leb_cnt        %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\09max_leb_cnt    %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09max_bud_bytes  %llu\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"\09log_lebs       %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\09lpt_lebs       %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"\09orph_lebs      %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\09jhead_cnt      %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\09fanout         %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\09lsave_cnt      %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"\09default_compr  %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\09rp_size        %llu\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"\09rp_uid         %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"\09rp_gid         %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"\09fmt_version    %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"\09time_gran      %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\09UUID           %pUB\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"\09highest_inum   %llu\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"\09commit number  %llu\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"\09log_lnum       %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"\09root_lnum      %u\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"\09root_offs      %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"\09root_len       %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"\09gc_lnum        %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"\09ihead_lnum     %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"\09ihead_offs     %u\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"\09index_size     %llu\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"\09lpt_lnum       %u\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"\09lpt_offs       %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"\09nhead_lnum     %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"\09nhead_offs     %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"\09ltab_lnum      %u\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"\09ltab_offs      %u\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"\09lsave_lnum     %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"\09lsave_offs     %u\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"\09lscan_lnum     %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"\09empty_lebs     %u\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"\09idx_lebs       %u\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"\09total_free     %llu\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"\09total_dirty    %llu\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"\09total_used     %llu\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"\09total_dead     %llu\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"\09total_dark     %llu\0A\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"\09lnum           %u\0A\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"\09offs           %u\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"\09jhead          %u\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"\09key            %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"\09creat_sqnum    %llu\0A\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"\09size           %llu\0A\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"\09nlink          %u\0A\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"\09atime          %lld.%u\0A\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"\09mtime          %lld.%u\0A\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"\09ctime          %lld.%u\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"\09uid            %u\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"\09gid            %u\0A\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"\09mode           %u\0A\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"\09xattr_cnt      %u\0A\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"\09xattr_size     %u\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"\09xattr_names    %u\0A\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"\09compr_type     %#x\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"\09data len       %u\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"\09inum           %llu\0A\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"\09type           %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"\09nlen           %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"\09name           \00", align 1
@UBIFS_MAX_NLEN = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [55 x i8] c"(bad name length, not printing, bad or corrupted node)\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UBIFS_DATA_NODE_SZ = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [20 x i8] c"\09size           %u\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"\09compr_typ      %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"\09data size      %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"\09data:\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"\09inum           %u\0A\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"\09old_size       %llu\0A\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"\09new_size       %llu\0A\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"\09child_cnt      %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"\09level          %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"\09Branches:\0A\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"\09%d: LEB %d:%d len %d key %s\0A\00", align 1
@LLONG_MAX = common dso_local global i64 0, align 8
@.str.89 = private unnamed_addr constant [22 x i8] c"\09last node flag %llu\0A\00", align 1
@UBIFS_ORPH_NODE_SZ = common dso_local global i32 0, align 4
@.str.90 = private unnamed_addr constant [27 x i8] c"\09%d orphan inode numbers:\0A\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"\09  ino %llu\0A\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"node type %d was not recognized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_dump_node(%struct.ubifs_info* %0, i8* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ubifs_key, align 4
  %8 = alloca %struct.ubifs_ch*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_pad_node*, align 8
  %13 = alloca %struct.ubifs_sb_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_mst_node*, align 8
  %16 = alloca %struct.ubifs_ref_node*, align 8
  %17 = alloca %struct.ubifs_ino_node*, align 8
  %18 = alloca %struct.ubifs_dent_node*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ubifs_data_node*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ubifs_trun_node*, align 8
  %23 = alloca %struct.ubifs_idx_node*, align 8
  %24 = alloca %struct.ubifs_branch*, align 8
  %25 = alloca %struct.ubifs_orph_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %27, %struct.ubifs_ch** %8, align 8
  %28 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %33 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @UBIFS_NODE_MAGIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = load i32, i32* @UBIFS_CH_SZ, align 4
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @UBIFS_CH_SZ, align 4
  %46 = call i32 @print_hex_dump(i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 32, i32 1, i8* %44, i32 %45, i32 1)
  store i32 1, i32* %11, align 4
  br label %697

47:                                               ; preds = %2
  %48 = call i32 @spin_lock(i32* @dbg_lock)
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @dump_ch(i8* %49)
  %51 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %52 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %690 [
    i32 132, label %54
    i32 130, label %62
    i32 134, label %194
    i32 131, label %337
    i32 135, label %355
    i32 137, label %453
    i32 128, label %453
    i32 138, label %532
    i32 129, label %569
    i32 136, label %587
    i32 139, label %645
    i32 133, label %646
    i32 140, label %689
  ]

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to %struct.ubifs_pad_node*
  store %struct.ubifs_pad_node* %56, %struct.ubifs_pad_node** %12, align 8
  %57 = load %struct.ubifs_pad_node*, %struct.ubifs_pad_node** %12, align 8
  %58 = getelementptr inbounds %struct.ubifs_pad_node, %struct.ubifs_pad_node* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %695

62:                                               ; preds = %47
  %63 = load i8*, i8** %4, align 8
  %64 = bitcast i8* %63 to %struct.ubifs_sb_node*
  store %struct.ubifs_sb_node* %64, %struct.ubifs_sb_node** %13, align 8
  %65 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %66 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %65, i32 0, i32 20
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le32_to_cpu(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %70 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %69, i32 0, i32 19
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %74 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %73, i32 0, i32 19
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @get_key_hash(i64 %75)
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %76)
  %78 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %79 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %78, i32 0, i32 18
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %83 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %82, i32 0, i32 18
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @get_key_fmt(i64 %84)
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @UBIFS_FLG_BIGLPT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @UBIFS_FLG_SPACE_FIXUP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %106 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %105, i32 0, i32 17
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  %110 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %111 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %110, i32 0, i32 16
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  %115 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %116 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %115, i32 0, i32 15
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %118)
  %120 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %121 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %120, i32 0, i32 14
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  %125 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %126 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %125, i32 0, i32 13
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %128)
  %130 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %131 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @le32_to_cpu(i32 %132)
  %134 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %133)
  %135 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %136 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le32_to_cpu(i32 %137)
  %139 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %138)
  %140 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %141 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %143)
  %145 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %146 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %148)
  %150 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %151 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %153)
  %155 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %156 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %158)
  %160 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %161 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @le16_to_cpu(i32 %162)
  %164 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %163)
  %165 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %166 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @le64_to_cpu(i32 %167)
  %169 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i64 %168)
  %170 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %171 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @le32_to_cpu(i32 %172)
  %174 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %173)
  %175 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %176 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le32_to_cpu(i32 %177)
  %179 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %178)
  %180 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %181 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @le32_to_cpu(i32 %182)
  %184 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %183)
  %185 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %186 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le32_to_cpu(i32 %187)
  %189 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %188)
  %190 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %13, align 8
  %191 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %192)
  br label %695

194:                                              ; preds = %47
  %195 = load i8*, i8** %4, align 8
  %196 = bitcast i8* %195 to %struct.ubifs_mst_node*
  store %struct.ubifs_mst_node* %196, %struct.ubifs_mst_node** %15, align 8
  %197 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %198 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %197, i32 0, i32 27
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @le64_to_cpu(i32 %199)
  %201 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i64 %200)
  %202 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %203 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %202, i32 0, i32 26
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @le64_to_cpu(i32 %204)
  %206 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i64 %205)
  %207 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %208 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %207, i32 0, i32 25
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @le32_to_cpu(i32 %209)
  %211 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  %212 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %213 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %212, i32 0, i32 24
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @le32_to_cpu(i32 %214)
  %216 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32 %215)
  %217 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %218 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %217, i32 0, i32 23
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @le32_to_cpu(i32 %219)
  %221 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %220)
  %222 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %223 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %222, i32 0, i32 22
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @le32_to_cpu(i32 %224)
  %226 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 %225)
  %227 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %228 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %227, i32 0, i32 21
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @le32_to_cpu(i32 %229)
  %231 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 %230)
  %232 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %233 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %232, i32 0, i32 20
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le32_to_cpu(i32 %234)
  %236 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i32 %235)
  %237 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %238 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %237, i32 0, i32 19
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @le32_to_cpu(i32 %239)
  %241 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 %240)
  %242 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %243 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %242, i32 0, i32 18
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @le32_to_cpu(i32 %244)
  %246 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i32 %245)
  %247 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %248 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %247, i32 0, i32 17
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @le64_to_cpu(i32 %249)
  %251 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i64 %250)
  %252 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %253 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %252, i32 0, i32 16
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @le32_to_cpu(i32 %254)
  %256 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 %255)
  %257 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %258 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %257, i32 0, i32 15
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @le32_to_cpu(i32 %259)
  %261 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 %260)
  %262 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %263 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %262, i32 0, i32 14
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @le32_to_cpu(i32 %264)
  %266 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i32 %265)
  %267 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %268 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %267, i32 0, i32 13
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @le32_to_cpu(i32 %269)
  %271 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 %270)
  %272 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %273 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %272, i32 0, i32 12
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @le32_to_cpu(i32 %274)
  %276 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i32 %275)
  %277 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %278 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %277, i32 0, i32 11
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @le32_to_cpu(i32 %279)
  %281 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 %280)
  %282 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %283 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @le32_to_cpu(i32 %284)
  %286 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 %285)
  %287 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %288 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @le32_to_cpu(i32 %289)
  %291 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 %290)
  %292 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %293 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @le32_to_cpu(i32 %294)
  %296 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), i32 %295)
  %297 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %298 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @le32_to_cpu(i32 %299)
  %301 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %300)
  %302 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %303 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @le32_to_cpu(i32 %304)
  %306 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32 %305)
  %307 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %308 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @le32_to_cpu(i32 %309)
  %311 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i32 %310)
  %312 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %313 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 4
  %315 = call i64 @le64_to_cpu(i32 %314)
  %316 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i64 %315)
  %317 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %318 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = call i64 @le64_to_cpu(i32 %319)
  %321 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0), i64 %320)
  %322 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %323 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @le64_to_cpu(i32 %324)
  %326 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i64 %325)
  %327 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %328 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i64 @le64_to_cpu(i32 %329)
  %331 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i64 0, i64 0), i64 %330)
  %332 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %15, align 8
  %333 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i64 @le64_to_cpu(i32 %334)
  %336 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i64 %335)
  br label %695

337:                                              ; preds = %47
  %338 = load i8*, i8** %4, align 8
  %339 = bitcast i8* %338 to %struct.ubifs_ref_node*
  store %struct.ubifs_ref_node* %339, %struct.ubifs_ref_node** %16, align 8
  %340 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %16, align 8
  %341 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @le32_to_cpu(i32 %342)
  %344 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0), i32 %343)
  %345 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %16, align 8
  %346 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @le32_to_cpu(i32 %347)
  %349 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), i32 %348)
  %350 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %16, align 8
  %351 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @le32_to_cpu(i32 %352)
  %354 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i32 %353)
  br label %695

355:                                              ; preds = %47
  %356 = load i8*, i8** %4, align 8
  %357 = bitcast i8* %356 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %357, %struct.ubifs_ino_node** %17, align 8
  %358 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %359 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %360 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %359, i32 0, i32 18
  %361 = call i32 @key_read(%struct.ubifs_info* %358, i32* %360, %union.ubifs_key* %7)
  %362 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %363 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %364 = call i32 @dbg_snprintf_key(%struct.ubifs_info* %362, %union.ubifs_key* %7, i8* %31, i32 %363)
  %365 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i64 0, i64 0), i32 %364)
  %366 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %367 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %366, i32 0, i32 17
  %368 = load i32, i32* %367, align 4
  %369 = call i64 @le64_to_cpu(i32 %368)
  %370 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0), i64 %369)
  %371 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %372 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %371, i32 0, i32 16
  %373 = load i32, i32* %372, align 4
  %374 = call i64 @le64_to_cpu(i32 %373)
  %375 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i64 0, i64 0), i64 %374)
  %376 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %377 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %376, i32 0, i32 15
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @le32_to_cpu(i32 %378)
  %380 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0), i32 %379)
  %381 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %382 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %381, i32 0, i32 14
  %383 = load i32, i32* %382, align 4
  %384 = call i64 @le64_to_cpu(i32 %383)
  %385 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %386 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %385, i32 0, i32 13
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @le32_to_cpu(i32 %387)
  %389 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i64 0, i64 0), i64 %384, i32 %388)
  %390 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %391 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %390, i32 0, i32 12
  %392 = load i32, i32* %391, align 4
  %393 = call i64 @le64_to_cpu(i32 %392)
  %394 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %395 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %394, i32 0, i32 11
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @le32_to_cpu(i32 %396)
  %398 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0), i64 %393, i32 %397)
  %399 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %400 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %399, i32 0, i32 10
  %401 = load i32, i32* %400, align 4
  %402 = call i64 @le64_to_cpu(i32 %401)
  %403 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %404 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %403, i32 0, i32 9
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @le32_to_cpu(i32 %405)
  %407 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i64 0, i64 0), i64 %402, i32 %406)
  %408 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %409 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %408, i32 0, i32 8
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @le32_to_cpu(i32 %410)
  %412 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0), i32 %411)
  %413 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %414 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %413, i32 0, i32 7
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @le32_to_cpu(i32 %415)
  %417 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), i32 %416)
  %418 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %419 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @le32_to_cpu(i32 %420)
  %422 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0), i32 %421)
  %423 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %424 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %423, i32 0, i32 5
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @le32_to_cpu(i32 %425)
  %427 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %426)
  %428 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %429 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @le32_to_cpu(i32 %430)
  %432 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i64 0, i64 0), i32 %431)
  %433 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %434 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @le32_to_cpu(i32 %435)
  %437 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0), i32 %436)
  %438 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %439 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @le32_to_cpu(i32 %440)
  %442 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i32 %441)
  %443 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %444 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @le16_to_cpu(i32 %445)
  %447 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i32 %446)
  %448 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %17, align 8
  %449 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @le32_to_cpu(i32 %450)
  %452 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 %451)
  br label %695

453:                                              ; preds = %47, %47
  %454 = load i8*, i8** %4, align 8
  %455 = bitcast i8* %454 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %455, %struct.ubifs_dent_node** %18, align 8
  %456 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %457 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 8
  %459 = call i32 @le16_to_cpu(i32 %458)
  store i32 %459, i32* %19, align 4
  %460 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %461 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %462 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %461, i32 0, i32 3
  %463 = call i32 @key_read(%struct.ubifs_info* %460, i32* %462, %union.ubifs_key* %7)
  %464 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %465 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %466 = call i32 @dbg_snprintf_key(%struct.ubifs_info* %464, %union.ubifs_key* %7, i8* %31, i32 %465)
  %467 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i64 0, i64 0), i32 %466)
  %468 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %469 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = call i64 @le64_to_cpu(i32 %470)
  %472 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0), i64 %471)
  %473 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %474 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = trunc i64 %475 to i32
  %477 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i64 0, i64 0), i32 %476)
  %478 = load i32, i32* %19, align 4
  %479 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i32 %478)
  %480 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i64 0, i64 0))
  %481 = load i32, i32* %19, align 4
  %482 = load i32, i32* @UBIFS_MAX_NLEN, align 4
  %483 = icmp sgt i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %453
  %485 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i64 0, i64 0))
  br label %530

486:                                              ; preds = %453
  store i32 0, i32* %5, align 4
  br label %487

487:                                              ; preds = %526, %486
  %488 = load i32, i32* %5, align 4
  %489 = load i32, i32* %19, align 4
  %490 = icmp slt i32 %488, %489
  br i1 %490, label %491, label %501

491:                                              ; preds = %487
  %492 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %493 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %492, i32 0, i32 0
  %494 = load i8*, i8** %493, align 8
  %495 = load i32, i32* %5, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, i8* %494, i64 %496
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i32
  %500 = icmp ne i32 %499, 0
  br label %501

501:                                              ; preds = %491, %487
  %502 = phi i1 [ false, %487 ], [ %500, %491 ]
  br i1 %502, label %503, label %529

503:                                              ; preds = %501
  %504 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %505 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %504, i32 0, i32 0
  %506 = load i8*, i8** %505, align 8
  %507 = load i32, i32* %5, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i8, i8* %506, i64 %508
  %510 = load i8, i8* %509, align 1
  %511 = call i32 @isprint(i8 signext %510)
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %522

513:                                              ; preds = %503
  %514 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %515 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %514, i32 0, i32 0
  %516 = load i8*, i8** %515, align 8
  %517 = load i32, i32* %5, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, i8* %516, i64 %518
  %520 = load i8, i8* %519, align 1
  %521 = sext i8 %520 to i32
  br label %523

522:                                              ; preds = %503
  br label %523

523:                                              ; preds = %522, %513
  %524 = phi i32 [ %521, %513 ], [ 63, %522 ]
  %525 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i32 %524)
  br label %526

526:                                              ; preds = %523
  %527 = load i32, i32* %5, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %5, align 4
  br label %487

529:                                              ; preds = %501
  br label %530

530:                                              ; preds = %529, %484
  %531 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0))
  br label %695

532:                                              ; preds = %47
  %533 = load i8*, i8** %4, align 8
  %534 = bitcast i8* %533 to %struct.ubifs_data_node*
  store %struct.ubifs_data_node* %534, %struct.ubifs_data_node** %20, align 8
  %535 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %536 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @le32_to_cpu(i32 %537)
  %539 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %540 = sub nsw i32 %538, %539
  store i32 %540, i32* %21, align 4
  %541 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %542 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %20, align 8
  %543 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %542, i32 0, i32 3
  %544 = call i32 @key_read(%struct.ubifs_info* %541, i32* %543, %union.ubifs_key* %7)
  %545 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %546 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %547 = call i32 @dbg_snprintf_key(%struct.ubifs_info* %545, %union.ubifs_key* %7, i8* %31, i32 %546)
  %548 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i64 0, i64 0), i32 %547)
  %549 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %20, align 8
  %550 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @le32_to_cpu(i32 %551)
  %553 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i32 %552)
  %554 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %20, align 8
  %555 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = call i32 @le16_to_cpu(i32 %556)
  %558 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i64 0, i64 0), i32 %557)
  %559 = load i32, i32* %21, align 4
  %560 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i64 0, i64 0), i32 %559)
  %561 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0))
  %562 = load i32, i32* @KERN_ERR, align 4
  %563 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %564 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %20, align 8
  %565 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %564, i32 0, i32 0
  %566 = bitcast i32* %565 to i8*
  %567 = load i32, i32* %21, align 4
  %568 = call i32 @print_hex_dump(i32 %562, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), i32 %563, i32 32, i32 1, i8* %566, i32 %567, i32 0)
  br label %695

569:                                              ; preds = %47
  %570 = load i8*, i8** %4, align 8
  %571 = bitcast i8* %570 to %struct.ubifs_trun_node*
  store %struct.ubifs_trun_node* %571, %struct.ubifs_trun_node** %22, align 8
  %572 = load %struct.ubifs_trun_node*, %struct.ubifs_trun_node** %22, align 8
  %573 = getelementptr inbounds %struct.ubifs_trun_node, %struct.ubifs_trun_node* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 4
  %575 = call i32 @le32_to_cpu(i32 %574)
  %576 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i64 0, i64 0), i32 %575)
  %577 = load %struct.ubifs_trun_node*, %struct.ubifs_trun_node** %22, align 8
  %578 = getelementptr inbounds %struct.ubifs_trun_node, %struct.ubifs_trun_node* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = call i64 @le64_to_cpu(i32 %579)
  %581 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0), i64 %580)
  %582 = load %struct.ubifs_trun_node*, %struct.ubifs_trun_node** %22, align 8
  %583 = getelementptr inbounds %struct.ubifs_trun_node, %struct.ubifs_trun_node* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = call i64 @le64_to_cpu(i32 %584)
  %586 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.84, i64 0, i64 0), i64 %585)
  br label %695

587:                                              ; preds = %47
  %588 = load i8*, i8** %4, align 8
  %589 = bitcast i8* %588 to %struct.ubifs_idx_node*
  store %struct.ubifs_idx_node* %589, %struct.ubifs_idx_node** %23, align 8
  %590 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %23, align 8
  %591 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @le16_to_cpu(i32 %592)
  store i32 %593, i32* %6, align 4
  %594 = load i32, i32* %6, align 4
  %595 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i64 0, i64 0), i32 %594)
  %596 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %23, align 8
  %597 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = call i32 @le16_to_cpu(i32 %598)
  %600 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i64 0, i64 0), i32 %599)
  %601 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %602

602:                                              ; preds = %641, %587
  %603 = load i32, i32* %5, align 4
  %604 = load i32, i32* %6, align 4
  %605 = icmp slt i32 %603, %604
  br i1 %605, label %606, label %613

606:                                              ; preds = %602
  %607 = load i32, i32* %5, align 4
  %608 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %609 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  %611 = sub nsw i32 %610, 1
  %612 = icmp slt i32 %607, %611
  br label %613

613:                                              ; preds = %606, %602
  %614 = phi i1 [ false, %602 ], [ %612, %606 ]
  br i1 %614, label %615, label %644

615:                                              ; preds = %613
  %616 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %617 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %23, align 8
  %618 = load i32, i32* %5, align 4
  %619 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %616, %struct.ubifs_idx_node* %617, i32 %618)
  store %struct.ubifs_branch* %619, %struct.ubifs_branch** %24, align 8
  %620 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %621 = load %struct.ubifs_branch*, %struct.ubifs_branch** %24, align 8
  %622 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %621, i32 0, i32 3
  %623 = call i32 @key_read(%struct.ubifs_info* %620, i32* %622, %union.ubifs_key* %7)
  %624 = load i32, i32* %5, align 4
  %625 = load %struct.ubifs_branch*, %struct.ubifs_branch** %24, align 8
  %626 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %625, i32 0, i32 2
  %627 = load i32, i32* %626, align 4
  %628 = call i32 @le32_to_cpu(i32 %627)
  %629 = load %struct.ubifs_branch*, %struct.ubifs_branch** %24, align 8
  %630 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = call i32 @le32_to_cpu(i32 %631)
  %633 = load %struct.ubifs_branch*, %struct.ubifs_branch** %24, align 8
  %634 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 4
  %636 = call i32 @le32_to_cpu(i32 %635)
  %637 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %638 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %639 = call i32 @dbg_snprintf_key(%struct.ubifs_info* %637, %union.ubifs_key* %7, i8* %31, i32 %638)
  %640 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i32 %624, i32 %628, i32 %632, i32 %636, i32 %639)
  br label %641

641:                                              ; preds = %615
  %642 = load i32, i32* %5, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %5, align 4
  br label %602

644:                                              ; preds = %613
  br label %695

645:                                              ; preds = %47
  br label %695

646:                                              ; preds = %47
  %647 = load i8*, i8** %4, align 8
  %648 = bitcast i8* %647 to %struct.ubifs_orph_node*
  store %struct.ubifs_orph_node* %648, %struct.ubifs_orph_node** %25, align 8
  %649 = load %struct.ubifs_orph_node*, %struct.ubifs_orph_node** %25, align 8
  %650 = getelementptr inbounds %struct.ubifs_orph_node, %struct.ubifs_orph_node* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 8
  %652 = call i64 @le64_to_cpu(i32 %651)
  %653 = load i64, i64* @LLONG_MAX, align 8
  %654 = and i64 %652, %653
  %655 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i64 %654)
  %656 = load %struct.ubifs_orph_node*, %struct.ubifs_orph_node** %25, align 8
  %657 = getelementptr inbounds %struct.ubifs_orph_node, %struct.ubifs_orph_node* %656, i32 0, i32 1
  %658 = load i32, i32* %657, align 8
  %659 = call i64 @le64_to_cpu(i32 %658)
  %660 = lshr i64 %659, 63
  %661 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i64 0, i64 0), i64 %660)
  %662 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %663 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = call i32 @le32_to_cpu(i32 %664)
  %666 = load i32, i32* @UBIFS_ORPH_NODE_SZ, align 4
  %667 = sub nsw i32 %665, %666
  %668 = ashr i32 %667, 3
  store i32 %668, i32* %6, align 4
  %669 = load i32, i32* %6, align 4
  %670 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.90, i64 0, i64 0), i32 %669)
  store i32 0, i32* %5, align 4
  br label %671

671:                                              ; preds = %685, %646
  %672 = load i32, i32* %5, align 4
  %673 = load i32, i32* %6, align 4
  %674 = icmp slt i32 %672, %673
  br i1 %674, label %675, label %688

675:                                              ; preds = %671
  %676 = load %struct.ubifs_orph_node*, %struct.ubifs_orph_node** %25, align 8
  %677 = getelementptr inbounds %struct.ubifs_orph_node, %struct.ubifs_orph_node* %676, i32 0, i32 0
  %678 = load i32*, i32** %677, align 8
  %679 = load i32, i32* %5, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i32, i32* %678, i64 %680
  %682 = load i32, i32* %681, align 4
  %683 = call i64 @le64_to_cpu(i32 %682)
  %684 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i64 %683)
  br label %685

685:                                              ; preds = %675
  %686 = load i32, i32* %5, align 4
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %5, align 4
  br label %671

688:                                              ; preds = %671
  br label %695

689:                                              ; preds = %47
  br label %695

690:                                              ; preds = %47
  %691 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %692 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 4
  %694 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.92, i64 0, i64 0), i32 %693)
  br label %695

695:                                              ; preds = %690, %689, %688, %645, %644, %569, %532, %530, %355, %337, %194, %62, %54
  %696 = call i32 @spin_unlock(i32* @dbg_lock)
  store i32 0, i32* %11, align 4
  br label %697

697:                                              ; preds = %695, %39
  %698 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %698)
  %699 = load i32, i32* %11, align 4
  switch i32 %699, label %701 [
    i32 0, label %700
    i32 1, label %700
  ]

700:                                              ; preds = %697, %697
  ret void

701:                                              ; preds = %697
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @dump_ch(i8*) #2

declare dso_local i32 @get_key_hash(i64) #2

declare dso_local i32 @get_key_fmt(i64) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #2

declare dso_local i32 @dbg_snprintf_key(%struct.ubifs_info*, %union.ubifs_key*, i8*, i32) #2

declare dso_local i32 @pr_cont(i8*, ...) #2

declare dso_local i32 @isprint(i8 signext) #2

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

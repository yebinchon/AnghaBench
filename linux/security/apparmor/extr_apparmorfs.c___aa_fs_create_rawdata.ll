; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aa_fs_create_rawdata.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aa_fs_create_rawdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32, i32, i32 }
%struct.aa_loaddata = type { i32, i32, i32, %struct.dentry**, i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AAFS_LOADDATA_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"abi\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@seq_rawdata_abi_fops = common dso_local global i32 0, align 4
@AAFS_LOADDATA_ABI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@seq_rawdata_revision_fops = common dso_local global i32 0, align 4
@AAFS_LOADDATA_REVISION = common dso_local global i64 0, align 8
@aa_g_hash_policy = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@seq_rawdata_hash_fops = common dso_local global i32 0, align 4
@AAFS_LOADDATA_HASH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"raw_data\00", align 1
@rawdata_fops = common dso_local global i32 0, align 4
@AAFS_LOADDATA_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__aa_fs_create_rawdata(%struct.aa_ns* %0, %struct.aa_loaddata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_ns*, align 8
  %5 = alloca %struct.aa_loaddata*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %4, align 8
  store %struct.aa_loaddata* %1, %struct.aa_loaddata** %5, align 8
  %8 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %9 = icmp ne %struct.aa_ns* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @AA_BUG(i32 %11)
  %13 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %14 = icmp ne %struct.aa_loaddata* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %19 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %18, i32 0, i32 2
  %20 = call i32 @mutex_is_locked(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @AA_BUG(i32 %23)
  %25 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %26 = call i32 @ns_subdata_dir(%struct.aa_ns* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @AA_BUG(i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %33 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kasprintf(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %37 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %39 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %153

45:                                               ; preds = %2
  %46 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %47 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %50 = call i32 @ns_subdata_dir(%struct.aa_ns* %49)
  %51 = call %struct.dentry* @aafs_create_dir(i32 %48, i32 %50)
  store %struct.dentry* %51, %struct.dentry** %7, align 8
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = call i64 @IS_ERR(%struct.dentry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = call i32 @PTR_ERR(%struct.dentry* %56)
  store i32 %57, i32* %3, align 4
  br label %153

58:                                               ; preds = %45
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %61 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %60, i32 0, i32 3
  %62 = load %struct.dentry**, %struct.dentry*** %61, align 8
  %63 = load i64, i64* @AAFS_LOADDATA_DIR, align 8
  %64 = getelementptr inbounds %struct.dentry*, %struct.dentry** %62, i64 %63
  store %struct.dentry* %59, %struct.dentry** %64, align 8
  %65 = load i32, i32* @S_IFREG, align 4
  %66 = or i32 %65, 292
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %69 = call %struct.dentry* @aafs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %66, %struct.dentry* %67, %struct.aa_loaddata* %68, i32* @seq_rawdata_abi_fops)
  store %struct.dentry* %69, %struct.dentry** %6, align 8
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = call i64 @IS_ERR(%struct.dentry* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  br label %148

74:                                               ; preds = %58
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %77 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %76, i32 0, i32 3
  %78 = load %struct.dentry**, %struct.dentry*** %77, align 8
  %79 = load i64, i64* @AAFS_LOADDATA_ABI, align 8
  %80 = getelementptr inbounds %struct.dentry*, %struct.dentry** %78, i64 %79
  store %struct.dentry* %75, %struct.dentry** %80, align 8
  %81 = load i32, i32* @S_IFREG, align 4
  %82 = or i32 %81, 292
  %83 = load %struct.dentry*, %struct.dentry** %7, align 8
  %84 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %85 = call %struct.dentry* @aafs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %82, %struct.dentry* %83, %struct.aa_loaddata* %84, i32* @seq_rawdata_revision_fops)
  store %struct.dentry* %85, %struct.dentry** %6, align 8
  %86 = load %struct.dentry*, %struct.dentry** %6, align 8
  %87 = call i64 @IS_ERR(%struct.dentry* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %148

90:                                               ; preds = %74
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  %92 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %93 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %92, i32 0, i32 3
  %94 = load %struct.dentry**, %struct.dentry*** %93, align 8
  %95 = load i64, i64* @AAFS_LOADDATA_REVISION, align 8
  %96 = getelementptr inbounds %struct.dentry*, %struct.dentry** %94, i64 %95
  store %struct.dentry* %91, %struct.dentry** %96, align 8
  %97 = load i64, i64* @aa_g_hash_policy, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %90
  %100 = load i32, i32* @S_IFREG, align 4
  %101 = or i32 %100, 292
  %102 = load %struct.dentry*, %struct.dentry** %7, align 8
  %103 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %104 = call %struct.dentry* @aafs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %101, %struct.dentry* %102, %struct.aa_loaddata* %103, i32* @seq_rawdata_hash_fops)
  store %struct.dentry* %104, %struct.dentry** %6, align 8
  %105 = load %struct.dentry*, %struct.dentry** %6, align 8
  %106 = call i64 @IS_ERR(%struct.dentry* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %148

109:                                              ; preds = %99
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %112 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %111, i32 0, i32 3
  %113 = load %struct.dentry**, %struct.dentry*** %112, align 8
  %114 = load i64, i64* @AAFS_LOADDATA_HASH, align 8
  %115 = getelementptr inbounds %struct.dentry*, %struct.dentry** %113, i64 %114
  store %struct.dentry* %110, %struct.dentry** %115, align 8
  br label %116

116:                                              ; preds = %109, %90
  %117 = load i32, i32* @S_IFREG, align 4
  %118 = or i32 %117, 292
  %119 = load %struct.dentry*, %struct.dentry** %7, align 8
  %120 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %121 = call %struct.dentry* @aafs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %118, %struct.dentry* %119, %struct.aa_loaddata* %120, i32* @rawdata_fops)
  store %struct.dentry* %121, %struct.dentry** %6, align 8
  %122 = load %struct.dentry*, %struct.dentry** %6, align 8
  %123 = call i64 @IS_ERR(%struct.dentry* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %148

126:                                              ; preds = %116
  %127 = load %struct.dentry*, %struct.dentry** %6, align 8
  %128 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %129 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %128, i32 0, i32 3
  %130 = load %struct.dentry**, %struct.dentry*** %129, align 8
  %131 = load i64, i64* @AAFS_LOADDATA_DATA, align 8
  %132 = getelementptr inbounds %struct.dentry*, %struct.dentry** %130, i64 %131
  store %struct.dentry* %127, %struct.dentry** %132, align 8
  %133 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %134 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.dentry*, %struct.dentry** %6, align 8
  %137 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %136)
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  %139 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %140 = call i32 @aa_get_ns(%struct.aa_ns* %139)
  %141 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %142 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %144 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %143, i32 0, i32 0
  %145 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %146 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %145, i32 0, i32 0
  %147 = call i32 @list_add(i32* %144, i32* %146)
  store i32 0, i32* %3, align 4
  br label %153

148:                                              ; preds = %125, %108, %89, %73
  %149 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %150 = call i32 @remove_rawdata_dents(%struct.aa_loaddata* %149)
  %151 = load %struct.dentry*, %struct.dentry** %6, align 8
  %152 = call i32 @PTR_ERR(%struct.dentry* %151)
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %126, %55, %42
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @ns_subdata_dir(%struct.aa_ns*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local %struct.dentry* @aafs_create_dir(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @aafs_create_file(i8*, i32, %struct.dentry*, %struct.aa_loaddata*, i32*) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @aa_get_ns(%struct.aa_ns*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @remove_rawdata_dents(%struct.aa_loaddata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

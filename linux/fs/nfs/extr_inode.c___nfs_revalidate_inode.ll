; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c___nfs_revalidate_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c___nfs_revalidate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.inode = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_inode = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*, %struct.nfs4_label*, %struct.inode*)* }

@ESTALE = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NFS: revalidating (%s/%Lu)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NFSIOS_INODEREVALIDATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"nfs_revalidate_inode: (%s/%Lu) getattr failed, error=%d\0A\00", align 1
@NFS_INO_STALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"nfs_revalidate_inode: (%s/%Lu) refresh failed, error=%d\0A\00", align 1
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"NFS: (%s/%Lu) revalidation complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nfs_revalidate_inode(%struct.nfs_server* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_label*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.nfs_inode*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load i32, i32* @ESTALE, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  store %struct.nfs4_label* null, %struct.nfs4_label** %6, align 8
  store %struct.nfs_fattr* null, %struct.nfs_fattr** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.nfs_inode* @NFS_I(%struct.inode* %11)
  store %struct.nfs_inode* %12, %struct.nfs_inode** %8, align 8
  %13 = load i32, i32* @PAGECACHE, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i64 @NFS_FILEID(%struct.inode* %19)
  %21 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @trace_nfs_revalidate_inode_enter(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i64 @is_bad_inode(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %156

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i64 @NFS_STALE(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %156

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISREG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @pnfs_sync_inode(%struct.inode* %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %156

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  %49 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %49, %struct.nfs_fattr** %7, align 8
  %50 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %51 = icmp eq %struct.nfs_fattr* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %156

53:                                               ; preds = %46
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load i32, i32* @NFSIOS_INODEREVALIDATE, align 4
  %56 = call i32 @nfs_inc_stats(%struct.inode* %54, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i32 @NFS_SERVER(%struct.inode* %57)
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.nfs4_label* @nfs4_label_alloc(i32 %58, i32 %59)
  store %struct.nfs4_label* %60, %struct.nfs4_label** %6, align 8
  %61 = load %struct.nfs4_label*, %struct.nfs4_label** %6, align 8
  %62 = call i64 @IS_ERR(%struct.nfs4_label* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.nfs4_label*, %struct.nfs4_label** %6, align 8
  %66 = call i32 @PTR_ERR(%struct.nfs4_label* %65)
  store i32 %66, i32* %5, align 4
  br label %156

67:                                               ; preds = %53
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*, %struct.nfs4_label*, %struct.inode*)*, i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*, %struct.nfs4_label*, %struct.inode*)** %70, align 8
  %72 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call i32 @NFS_FH(%struct.inode* %73)
  %75 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %76 = load %struct.nfs4_label*, %struct.nfs4_label** %6, align 8
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call i32 %71(%struct.nfs_server* %72, i32 %74, %struct.nfs_fattr* %75, %struct.nfs4_label* %76, %struct.inode* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %67
  %82 = load i32, i32* @PAGECACHE, align 4
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = call i64 @NFS_FILEID(%struct.inode* %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %82, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %87, i64 %89, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @ESTALE, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %81
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = call i32 @nfs_zap_caches(%struct.inode* %97)
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @S_ISDIR(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* @NFS_INO_STALE, align 4
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = call %struct.nfs_inode* @NFS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %107, i32 0, i32 1
  %109 = call i32 @set_bit(i32 %105, i32* %108)
  br label %110

110:                                              ; preds = %104, %96
  br label %111

111:                                              ; preds = %110, %81
  br label %153

112:                                              ; preds = %67
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %115 = call i32 @nfs_refresh_inode(%struct.inode* %113, %struct.nfs_fattr* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load i32, i32* @PAGECACHE, align 4
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = call i64 @NFS_FILEID(%struct.inode* %125)
  %127 = load i32, i32* %5, align 4
  %128 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %119, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %124, i64 %126, i32 %127)
  br label %153

129:                                              ; preds = %112
  %130 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %131 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = call i32 @nfs_zap_acl_cache(%struct.inode* %137)
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.inode*, %struct.inode** %4, align 8
  %141 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %142 = load %struct.nfs4_label*, %struct.nfs4_label** %6, align 8
  %143 = call i32 @nfs_setsecurity(%struct.inode* %140, %struct.nfs_fattr* %141, %struct.nfs4_label* %142)
  %144 = load i32, i32* @PAGECACHE, align 4
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = call i64 @NFS_FILEID(%struct.inode* %150)
  %152 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %144, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %149, i64 %151)
  br label %153

153:                                              ; preds = %139, %118, %111
  %154 = load %struct.nfs4_label*, %struct.nfs4_label** %6, align 8
  %155 = call i32 @nfs4_label_free(%struct.nfs4_label* %154)
  br label %156

156:                                              ; preds = %153, %64, %52, %44, %32, %27
  %157 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %158 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %157)
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @trace_nfs_revalidate_inode_exit(%struct.inode* %159, i32 %160)
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i32 @trace_nfs_revalidate_inode_enter(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @pnfs_sync_inode(%struct.inode*, i32) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local %struct.nfs4_label* @nfs4_label_alloc(i32, i32) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_label*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_label*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_zap_caches(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_zap_acl_cache(%struct.inode*) #1

declare dso_local i32 @nfs_setsecurity(%struct.inode*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs4_label_free(%struct.nfs4_label*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @trace_nfs_revalidate_inode_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

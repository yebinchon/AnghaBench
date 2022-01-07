; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_get_vfs_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_get_vfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfs4_file = type { i32, i32, %struct.nfsd_file** }
%struct.nfsd_file = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfs4_ol_stateid = type { i8, i8 }
%struct.nfsd4_open = type { i32, i32 }

@nfs_ok = common dso_local global i64 0, align 8
@NFS4_SHARE_DENY_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfs4_file*, %struct.svc_fh*, %struct.nfs4_ol_stateid*, %struct.nfsd4_open*)* @nfs4_get_vfs_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_get_vfs_file(%struct.svc_rqst* %0, %struct.nfs4_file* %1, %struct.svc_fh* %2, %struct.nfs4_ol_stateid* %3, %struct.nfsd4_open* %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nfs4_file*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca %struct.nfs4_ol_stateid*, align 8
  %10 = alloca %struct.nfsd4_open*, align 8
  %11 = alloca %struct.nfsd_file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %7, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %8, align 8
  store %struct.nfs4_ol_stateid* %3, %struct.nfs4_ol_stateid** %9, align 8
  store %struct.nfsd4_open* %4, %struct.nfsd4_open** %10, align 8
  store %struct.nfsd_file* null, %struct.nfsd_file** %11, align 8
  %17 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %18 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nfs4_access_to_omode(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nfs4_access_to_access(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %26 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %29 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %30 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nfs4_file_check_deny(%struct.nfs4_file* %28, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @nfs_ok, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %38 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  br label %137

40:                                               ; preds = %5
  %41 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %42 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %43 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nfs4_file_get_access(%struct.nfs4_file* %41, i32 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @nfs_ok, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %51 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  br label %137

53:                                               ; preds = %40
  %54 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %55 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %15, align 1
  %57 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %58 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %61 = call i32 @set_access(i32 %59, %struct.nfs4_ol_stateid* %60)
  %62 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %63 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %16, align 1
  %65 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %66 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %69 = call i32 @set_deny(i32 %67, %struct.nfs4_ol_stateid* %68)
  %70 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %71 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NFS4_SHARE_DENY_BOTH, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %76 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %80 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %79, i32 0, i32 2
  %81 = load %struct.nfsd_file**, %struct.nfsd_file*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nfsd_file*, %struct.nfsd_file** %81, i64 %83
  %85 = load %struct.nfsd_file*, %struct.nfsd_file** %84, align 8
  %86 = icmp ne %struct.nfsd_file* %85, null
  br i1 %86, label %119, label %87

87:                                               ; preds = %53
  %88 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %89 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %92 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @nfsd_file_acquire(%struct.svc_rqst* %91, %struct.svc_fh* %92, i32 %93, %struct.nfsd_file** %11)
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %139

98:                                               ; preds = %87
  %99 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %100 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %99, i32 0, i32 1
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %103 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %102, i32 0, i32 2
  %104 = load %struct.nfsd_file**, %struct.nfsd_file*** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.nfsd_file*, %struct.nfsd_file** %104, i64 %106
  %108 = load %struct.nfsd_file*, %struct.nfsd_file** %107, align 8
  %109 = icmp ne %struct.nfsd_file* %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %98
  %111 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %112 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %113 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %112, i32 0, i32 2
  %114 = load %struct.nfsd_file**, %struct.nfsd_file*** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.nfsd_file*, %struct.nfsd_file** %114, i64 %116
  store %struct.nfsd_file* %111, %struct.nfsd_file** %117, align 8
  store %struct.nfsd_file* null, %struct.nfsd_file** %11, align 8
  br label %118

118:                                              ; preds = %110, %98
  br label %119

119:                                              ; preds = %118, %53
  %120 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %121 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %124 = icmp ne %struct.nfsd_file* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %127 = call i32 @nfsd_file_put(%struct.nfsd_file* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %130 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %131 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %132 = call i64 @nfsd4_truncate(%struct.svc_rqst* %129, %struct.svc_fh* %130, %struct.nfsd4_open* %131)
  store i64 %132, i64* %12, align 8
  %133 = load i64, i64* %12, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %139

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %139, %136, %49, %36
  %138 = load i64, i64* %12, align 8
  ret i64 %138

139:                                              ; preds = %135, %97
  %140 = load i8, i8* %15, align 1
  %141 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %142 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %141, i32 0, i32 0
  store i8 %140, i8* %142, align 1
  %143 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %144 = load %struct.nfsd4_open*, %struct.nfsd4_open** %10, align 8
  %145 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @nfs4_file_put_access(%struct.nfs4_file* %143, i32 %146)
  %148 = load i8, i8* %16, align 1
  %149 = call i32 @bmap_to_share_mode(i8 zeroext %148)
  %150 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %151 = call i32 @reset_union_bmap_deny(i32 %149, %struct.nfs4_ol_stateid* %150)
  br label %137
}

declare dso_local i32 @nfs4_access_to_omode(i32) #1

declare dso_local i32 @nfs4_access_to_access(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @nfs4_file_check_deny(%struct.nfs4_file*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nfs4_file_get_access(%struct.nfs4_file*, i32) #1

declare dso_local i32 @set_access(i32, %struct.nfs4_ol_stateid*) #1

declare dso_local i32 @set_deny(i32, %struct.nfs4_ol_stateid*) #1

declare dso_local i64 @nfsd_file_acquire(%struct.svc_rqst*, %struct.svc_fh*, i32, %struct.nfsd_file**) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

declare dso_local i64 @nfsd4_truncate(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*) #1

declare dso_local i32 @nfs4_file_put_access(%struct.nfs4_file*, i32) #1

declare dso_local i32 @reset_union_bmap_deny(i32, %struct.nfs4_ol_stateid*) #1

declare dso_local i32 @bmap_to_share_mode(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

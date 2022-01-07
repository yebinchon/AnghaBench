; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_remove_clid_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_remove_clid_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32, i32, i32 }
%struct.cred = type { i32 }
%struct.nfsd_net = type { i32, i64 }

@HEXDIR_LEN = common dso_local global i32 0, align 4
@nfsd_net_id = common dso_local global i32 0, align 4
@NFSD4_CLIENT_STABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"NFSD: Failed to remove expired client state directory %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_client*)* @nfsd4_remove_clid_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_remove_clid_dir(%struct.nfs4_client* %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd_net*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_client* %0, %struct.nfs4_client** %2, align 8
  %9 = load i32, i32* @HEXDIR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @nfsd_net_id, align 4
  %17 = call %struct.nfsd_net* @net_generic(i32 %15, i32 %16)
  store %struct.nfsd_net* %17, %struct.nfsd_net** %7, align 8
  %18 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @NFSD4_CLIENT_STABLE, align 4
  %24 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %25 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %1
  store i32 1, i32* %8, align 4
  br label %91

29:                                               ; preds = %22
  %30 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %31 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %30, i32 0, i32 1
  %32 = call i32 @nfs4_make_rec_clidname(i8* %12, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %37 = load i32, i32* %6, align 4
  call void @legacy_recdir_name_error(%struct.nfs4_client* %36, i32 %37)
  store i32 1, i32* %8, align 4
  br label %91

38:                                               ; preds = %29
  %39 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mnt_want_write_file(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %84

46:                                               ; preds = %38
  %47 = load i32, i32* @NFSD4_CLIENT_STABLE, align 4
  %48 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %49 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = call i32 @nfs4_save_creds(%struct.cred** %3)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %79

55:                                               ; preds = %46
  %56 = load i32, i32* @HEXDIR_LEN, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %59 = call i32 @nfsd4_unlink_clid_dir(i8* %12, i32 %57, %struct.nfsd_net* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.cred*, %struct.cred** %3, align 8
  %61 = call i32 @nfs4_reset_creds(%struct.cred* %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %55
  %65 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vfs_fsync(i32 %67, i32 0)
  %69 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %70 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @HEXDIR_LEN, align 4
  %75 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %76 = call i32 @__nfsd4_remove_reclaim_record_grace(i8* %12, i32 %74, %struct.nfsd_net* %75)
  br label %77

77:                                               ; preds = %73, %64
  br label %78

78:                                               ; preds = %77, %55
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %81 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @mnt_drop_write_file(i32 %82)
  br label %84

84:                                               ; preds = %79, %45
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @HEXDIR_LEN, align 4
  %89 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %88, i8* %12)
  br label %90

90:                                               ; preds = %87, %84
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %35, %28
  %92 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %8, align 4
  switch i32 %93, label %95 [
    i32 0, label %94
    i32 1, label %94
  ]

94:                                               ; preds = %91, %91
  ret void

95:                                               ; preds = %91
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #2

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @nfs4_make_rec_clidname(i8*, i32*) #2

declare dso_local void @legacy_recdir_name_error(%struct.nfs4_client*, i32) #2

declare dso_local i32 @mnt_want_write_file(i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @nfs4_save_creds(%struct.cred**) #2

declare dso_local i32 @nfsd4_unlink_clid_dir(i8*, i32, %struct.nfsd_net*) #2

declare dso_local i32 @nfs4_reset_creds(%struct.cred*) #2

declare dso_local i32 @vfs_fsync(i32, i32) #2

declare dso_local i32 @__nfsd4_remove_reclaim_record_grace(i8*, i32, %struct.nfsd_net*) #2

declare dso_local i32 @mnt_drop_write_file(i32) #2

declare dso_local i32 @printk(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

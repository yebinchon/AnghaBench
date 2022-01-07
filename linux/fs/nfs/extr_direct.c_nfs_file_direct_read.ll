; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_file_direct_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_file_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.nfs_direct_req = type { i64, i64, i32, %struct.kiocb*, %struct.nfs_lock_context*, i32, i64, %struct.inode* }
%struct.nfs_lock_context = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFSIOS_DIRECTREADBYTES = common dso_local global i32 0, align 4
@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NFS: direct read(%pD2, %zd@%Ld)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NFS_ODIRECT_SHOULD_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_file_direct_read(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_direct_req*, align 8
  %9 = alloca %struct.nfs_lock_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 1
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %5, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %6, align 8
  %19 = load %struct.address_space*, %struct.address_space** %6, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %7, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %25 = call i64 @iov_iter_count(%struct.iov_iter* %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.address_space*, %struct.address_space** %6, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  %29 = load i32, i32* @NFSIOS_DIRECTREADBYTES, align 4
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @nfs_add_stats(%struct.inode* %28, i32 %29, i64 %30)
  %32 = load i32, i32* @FILE, align 4
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %36 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dfprintk(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.file* %33, i64 %34, i64 %37)
  store i32 0, i32* %10, align 4
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %147

42:                                               ; preds = %2
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @task_io_account_read(i64 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  %47 = call %struct.nfs_direct_req* (...) @nfs_direct_req_alloc()
  store %struct.nfs_direct_req* %47, %struct.nfs_direct_req** %8, align 8
  %48 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %49 = icmp eq %struct.nfs_direct_req* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %147

51:                                               ; preds = %42
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %54 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %53, i32 0, i32 7
  store %struct.inode* %52, %struct.inode** %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %57 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %59 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  %60 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %61 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %64 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %63, i32 0, i32 6
  store i64 %62, i64* %64, align 8
  %65 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %66 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %65, i32 0, i32 1
  %67 = load %struct.file*, %struct.file** %66, align 8
  %68 = call i32 @nfs_file_open_context(%struct.file* %67)
  %69 = call i32 @get_nfs_open_context(i32 %68)
  %70 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %71 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %73 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %74)
  store %struct.nfs_lock_context* %75, %struct.nfs_lock_context** %9, align 8
  %76 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %77 = call i64 @IS_ERR(%struct.nfs_lock_context* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %51
  %80 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %81 = call i32 @PTR_ERR(%struct.nfs_lock_context* %80)
  store i32 %81, i32* %10, align 4
  br label %144

82:                                               ; preds = %51
  %83 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %84 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %85 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %84, i32 0, i32 4
  store %struct.nfs_lock_context* %83, %struct.nfs_lock_context** %85, align 8
  %86 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %87 = call i32 @is_sync_kiocb(%struct.kiocb* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %91 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %92 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %91, i32 0, i32 3
  store %struct.kiocb* %90, %struct.kiocb** %92, align 8
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %95 = call i64 @iter_is_iovec(%struct.iov_iter* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @NFS_ODIRECT_SHOULD_DIRTY, align 4
  %99 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %100 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = call i32 @nfs_start_io_direct(%struct.inode* %102)
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, %104
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %113 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %114 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %115 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @nfs_direct_read_schedule_iovec(%struct.nfs_direct_req* %112, %struct.iov_iter* %113, i64 %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = call i32 @nfs_end_io_direct(%struct.inode* %118)
  %120 = load i32, i32* %11, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %101
  %123 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %124 = call i32 @nfs_direct_wait(%struct.nfs_direct_req* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %134 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %127, %122
  %138 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @iov_iter_revert(%struct.iov_iter* %138, i32 %139)
  br label %143

141:                                              ; preds = %101
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %141, %137
  br label %144

144:                                              ; preds = %143, %79
  %145 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  %146 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %145)
  br label %147

147:                                              ; preds = %144, %50, %41
  %148 = load i32, i32* %10, align 4
  ret i32 %148
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i64, i64) #1

declare dso_local i32 @task_io_account_read(i64) #1

declare dso_local %struct.nfs_direct_req* @nfs_direct_req_alloc(...) #1

declare dso_local i32 @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i32 @nfs_start_io_direct(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_direct_read_schedule_iovec(%struct.nfs_direct_req*, %struct.iov_iter*, i64) #1

declare dso_local i32 @nfs_end_io_direct(%struct.inode*) #1

declare dso_local i32 @nfs_direct_wait(%struct.nfs_direct_req*) #1

declare dso_local i32 @iov_iter_revert(%struct.iov_iter*, i32) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

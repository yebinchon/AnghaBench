; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_file_direct_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_file_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.nfs_direct_req = type { i64, i64, i32, %struct.kiocb*, %struct.nfs_lock_context*, i32, %struct.inode* }
%struct.nfs_lock_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NFS: direct write(%pD2, %zd@%Ld)\0A\00", align 1
@NFSIOS_DIRECTWRITTENBYTES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_file_direct_write(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.nfs_direct_req*, align 8
  %13 = alloca %struct.nfs_lock_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 1
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %9, align 8
  %21 = load %struct.file*, %struct.file** %9, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.address_space*, %struct.address_space** %22, align 8
  store %struct.address_space* %23, %struct.address_space** %10, align 8
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 1
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %11, align 8
  %27 = load i32, i32* @FILE, align 4
  %28 = load %struct.file*, %struct.file** %9, align 8
  %29 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %30 = call i32 @iov_iter_count(%struct.iov_iter* %29)
  %31 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = call i32 @dfprintk(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.file* %28, i32 %30, i64 %34)
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %38 = call i32 @generic_write_checks(%struct.kiocb* %36, %struct.iov_iter* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %162

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %8, align 8
  %46 = load %struct.address_space*, %struct.address_space** %10, align 8
  %47 = getelementptr inbounds %struct.address_space, %struct.address_space* %46, i32 0, i32 1
  %48 = load %struct.inode*, %struct.inode** %47, align 8
  %49 = load i32, i32* @NFSIOS_DIRECTWRITTENBYTES, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @nfs_add_stats(%struct.inode* %48, i32 %49, i64 %50)
  %52 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %53 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %57 = call i32 @iov_iter_count(%struct.iov_iter* %56)
  %58 = add nsw i32 %55, %57
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @task_io_account_write(i64 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  %66 = call %struct.nfs_direct_req* (...) @nfs_direct_req_alloc()
  store %struct.nfs_direct_req* %66, %struct.nfs_direct_req** %12, align 8
  %67 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %68 = icmp ne %struct.nfs_direct_req* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %43
  br label %160

70:                                               ; preds = %43
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %73 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %72, i32 0, i32 6
  store %struct.inode* %71, %struct.inode** %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %76 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %78 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %77, i32 0, i32 0
  store i64 %74, i64* %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %81 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %83 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %82, i32 0, i32 1
  %84 = load %struct.file*, %struct.file** %83, align 8
  %85 = call i32 @nfs_file_open_context(%struct.file* %84)
  %86 = call i32 @get_nfs_open_context(i32 %85)
  %87 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %88 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %90 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %91)
  store %struct.nfs_lock_context* %92, %struct.nfs_lock_context** %13, align 8
  %93 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %94 = call i64 @IS_ERR(%struct.nfs_lock_context* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %70
  %97 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %98 = call i32 @PTR_ERR(%struct.nfs_lock_context* %97)
  store i32 %98, i32* %6, align 4
  br label %157

99:                                               ; preds = %70
  %100 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %101 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %102 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %101, i32 0, i32 4
  store %struct.nfs_lock_context* %100, %struct.nfs_lock_context** %102, align 8
  %103 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %104 = call i32 @is_sync_kiocb(%struct.kiocb* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %99
  %107 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %108 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %109 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %108, i32 0, i32 3
  store %struct.kiocb* %107, %struct.kiocb** %109, align 8
  br label %110

110:                                              ; preds = %106, %99
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = call i32 @nfs_start_io_direct(%struct.inode* %111)
  %113 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %114 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @nfs_direct_write_schedule_iovec(%struct.nfs_direct_req* %113, %struct.iov_iter* %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.address_space*, %struct.address_space** %10, align 8
  %118 = getelementptr inbounds %struct.address_space, %struct.address_space* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.address_space*, %struct.address_space** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @PAGE_SHIFT, align 4
  %125 = ashr i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @invalidate_inode_pages2_range(%struct.address_space* %122, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %110
  %129 = load %struct.inode*, %struct.inode** %11, align 8
  %130 = call i32 @nfs_end_io_direct(%struct.inode* %129)
  %131 = load i32, i32* %7, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %128
  %134 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %135 = call i32 @nfs_direct_wait(%struct.nfs_direct_req* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %142, %143
  %145 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %146 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @generic_write_sync(%struct.kiocb* %147, i32 %148)
  br label %150

150:                                              ; preds = %138, %133
  %151 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @iov_iter_revert(%struct.iov_iter* %151, i32 %152)
  br label %156

154:                                              ; preds = %128
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %150
  br label %157

157:                                              ; preds = %156, %96
  %158 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %12, align 8
  %159 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %158)
  br label %160

160:                                              ; preds = %157, %69
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %41
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i32, i64) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i32 @task_io_account_write(i64) #1

declare dso_local %struct.nfs_direct_req* @nfs_direct_req_alloc(...) #1

declare dso_local i32 @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @nfs_start_io_direct(%struct.inode*) #1

declare dso_local i32 @nfs_direct_write_schedule_iovec(%struct.nfs_direct_req*, %struct.iov_iter*, i32) #1

declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @nfs_end_io_direct(%struct.inode*) #1

declare dso_local i32 @nfs_direct_wait(%struct.nfs_direct_req*) #1

declare dso_local i32 @generic_write_sync(%struct.kiocb*, i32) #1

declare dso_local i32 @iov_iter_revert(%struct.iov_iter*, i32) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

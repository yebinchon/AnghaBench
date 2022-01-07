; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_perform_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_perform_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64 }
%struct.iov_iter = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32 }
%struct.fuse_io_args = type { %struct.TYPE_4__, %struct.fuse_args_pages }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.fuse_args_pages = type { i32, i32 }

@FUSE_I_SIZE_UNSTABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.address_space*, %struct.iov_iter*, i64)* @fuse_perform_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_perform_write(%struct.kiocb* %0, %struct.address_space* %1, %struct.iov_iter* %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.fuse_conn*, align 8
  %11 = alloca %struct.fuse_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.fuse_io_args, align 8
  %16 = alloca %struct.fuse_args_pages*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.address_space*, %struct.address_space** %6, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %22)
  store %struct.fuse_conn* %23, %struct.fuse_conn** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %24)
  store %struct.fuse_inode* %25, %struct.fuse_inode** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %31 = call i64 @iov_iter_count(%struct.iov_iter* %30)
  %32 = add nsw i64 %29, %31
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %36 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %37 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %4
  br label %40

40:                                               ; preds = %115, %39
  %41 = bitcast %struct.fuse_io_args* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 16, i1 false)
  %42 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %15, i32 0, i32 1
  store %struct.fuse_args_pages* %42, %struct.fuse_args_pages** %16, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %45 = call i64 @iov_iter_count(%struct.iov_iter* %44)
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fuse_wr_pages(i64 %43, i64 %45, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %16, align 8
  %53 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %52, i32 0, i32 1
  %54 = call i32 @fuse_pages_alloc(i32 %50, i32 %51, i32* %53)
  %55 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %16, align 8
  %56 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %16, align 8
  %58 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %40
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %117

64:                                               ; preds = %40
  %65 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %16, align 8
  %66 = load %struct.address_space*, %struct.address_space** %6, align 8
  %67 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i64 @fuse_fill_write_pages(%struct.fuse_args_pages* %65, %struct.address_space* %66, %struct.iov_iter* %67, i64 %68, i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ule i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i64, i64* %14, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  br label %103

76:                                               ; preds = %64
  %77 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @fuse_send_write_pages(%struct.fuse_io_args* %15, %struct.kiocb* %77, %struct.inode* %78, i64 %79, i64 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %15, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %84
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %84
  br label %102

102:                                              ; preds = %101, %76
  br label %103

103:                                              ; preds = %102, %73
  %104 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %16, align 8
  %105 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @kfree(i32 %106)
  br label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %113 = call i64 @iov_iter_count(%struct.iov_iter* %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  br i1 %116, label %40, label %117

117:                                              ; preds = %115, %61
  %118 = load i64, i64* %13, align 8
  %119 = icmp ugt i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @fuse_write_update_size(%struct.inode* %121, i64 %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %126 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %127 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %126, i32 0, i32 0
  %128 = call i32 @clear_bit(i32 %125, i32* %127)
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = call i32 @fuse_invalidate_attr(%struct.inode* %129)
  %131 = load i64, i64* %13, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i64, i64* %13, align 8
  br label %138

135:                                              ; preds = %124
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i64 [ %134, %133 ], [ %137, %135 ]
  ret i64 %139
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fuse_wr_pages(i64, i64, i32) #1

declare dso_local i32 @fuse_pages_alloc(i32, i32, i32*) #1

declare dso_local i64 @fuse_fill_write_pages(%struct.fuse_args_pages*, %struct.address_space*, %struct.iov_iter*, i64, i32) #1

declare dso_local i32 @fuse_send_write_pages(%struct.fuse_io_args*, %struct.kiocb*, %struct.inode*, i64, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

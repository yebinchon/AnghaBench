; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i64, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FI_NO_PREALLOC = common dso_local global i32 0, align 4
@APP_WRITE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @f2fs_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 2
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %5, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call i32 @F2FS_I_SB(%struct.inode* %16)
  %18 = call i32 @f2fs_cp_error(i32 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %143

24:                                               ; preds = %2
  %25 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IOCB_NOWAIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @inode_trylock(%struct.inode* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %143

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %24
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i32 @inode_lock(%struct.inode* %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %44 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %45 = call i32 @generic_write_checks(%struct.kiocb* %43, %struct.iov_iter* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %140

48:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %49 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %50 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %51 = call i64 @iov_iter_count(%struct.iov_iter* %50)
  %52 = call i64 @iov_iter_fault_in_readable(%struct.iov_iter* %49, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i32, i32* @FI_NO_PREALLOC, align 4
  %57 = call i32 @set_inode_flag(%struct.inode* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %60 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IOCB_NOWAIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %58
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %68 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %71 = call i64 @iov_iter_count(%struct.iov_iter* %70)
  %72 = call i32 @f2fs_overwrite_io(%struct.inode* %66, i64 %69, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call i64 @f2fs_has_inline_data(%struct.inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %81 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %82 = call i64 @f2fs_force_buffered_io(%struct.inode* %79, %struct.kiocb* %80, %struct.iov_iter* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %78, %74, %65
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = load i32, i32* @FI_NO_PREALLOC, align 4
  %87 = call i32 @clear_inode_flag(%struct.inode* %85, i32 %86)
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @inode_unlock(%struct.inode* %88)
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %143

92:                                               ; preds = %78
  br label %113

93:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  %94 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %95 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %98 = call i64 @iov_iter_count(%struct.iov_iter* %97)
  %99 = add i64 %96, %98
  store i64 %99, i64* %9, align 8
  %100 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %101 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %102 = call i32 @f2fs_preallocate_blocks(%struct.kiocb* %100, %struct.iov_iter* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %93
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = load i32, i32* @FI_NO_PREALLOC, align 4
  %108 = call i32 @clear_inode_flag(%struct.inode* %106, i32 %107)
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = call i32 @inode_unlock(%struct.inode* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %7, align 4
  br label %143

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %115 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %116 = call i32 @__generic_file_write_iter(%struct.kiocb* %114, %struct.iov_iter* %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = load i32, i32* @FI_NO_PREALLOC, align 4
  %119 = call i32 @clear_inode_flag(%struct.inode* %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %113
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call i64 @i_size_read(%struct.inode* %123)
  %125 = load i64, i64* %9, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = call i32 @f2fs_truncate(%struct.inode* %128)
  br label %130

130:                                              ; preds = %127, %122, %113
  %131 = load i32, i32* %7, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = call i32 @F2FS_I_SB(%struct.inode* %134)
  %136 = load i32, i32* @APP_WRITE_IO, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @f2fs_update_iostat(i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %133, %130
  br label %140

140:                                              ; preds = %139, %42
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = call i32 @inode_unlock(%struct.inode* %141)
  br label %143

143:                                              ; preds = %140, %105, %84, %35, %21
  %144 = load %struct.inode*, %struct.inode** %6, align 8
  %145 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %146 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %149 = call i64 @iov_iter_count(%struct.iov_iter* %148)
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @trace_f2fs_file_write_iter(%struct.inode* %144, i64 %147, i64 %149, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %143
  %155 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @generic_write_sync(%struct.kiocb* %155, i32 %156)
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %154, %143
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @inode_trylock(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @iov_iter_fault_in_readable(%struct.iov_iter*, i64) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_overwrite_io(%struct.inode*, i64, i64) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i64 @f2fs_force_buffered_io(%struct.inode*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @f2fs_preallocate_blocks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @__generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate(%struct.inode*) #1

declare dso_local i32 @f2fs_update_iostat(i32, i32, i32) #1

declare dso_local i32 @trace_f2fs_file_write_iter(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @generic_write_sync(%struct.kiocb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

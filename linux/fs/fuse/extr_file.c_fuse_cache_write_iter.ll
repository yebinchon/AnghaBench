; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_cache_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_cache_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.kiocb = type { i32, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.TYPE_3__ = type { i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@IOCB_DIRECT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @fuse_cache_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_cache_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %14 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 2
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %6, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.address_space*, %struct.address_space** %18, align 8
  store %struct.address_space* %19, %struct.address_space** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %20 = load %struct.address_space*, %struct.address_space** %7, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call %struct.TYPE_3__* @get_fuse_conn(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %2
  %29 = load %struct.address_space*, %struct.address_space** %7, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = call i64 @fuse_update_attributes(%struct.inode* %31, %struct.file* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %3, align 8
  br label %180

38:                                               ; preds = %28
  %39 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %40 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %41 = call i64 @generic_file_write_iter(%struct.kiocb* %39, %struct.iov_iter* %40)
  store i64 %41, i64* %3, align 8
  br label %180

42:                                               ; preds = %2
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @inode_lock(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i32* @inode_to_bdi(%struct.inode* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %50 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %51 = call i64 @generic_write_checks(%struct.kiocb* %49, %struct.iov_iter* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %160

55:                                               ; preds = %42
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = call i64 @file_remove_privs(%struct.file* %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %160

61:                                               ; preds = %55
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = call i64 @file_update_time(%struct.file* %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %160

67:                                               ; preds = %61
  %68 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %69 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IOCB_DIRECT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %140

74:                                               ; preds = %67
  %75 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %76 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %79 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %80 = call i64 @generic_file_direct_write(%struct.kiocb* %78, %struct.iov_iter* %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %85 = call i32 @iov_iter_count(%struct.iov_iter* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83, %74
  br label %160

88:                                               ; preds = %83
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %95 = load %struct.address_space*, %struct.address_space** %7, align 8
  %96 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @fuse_perform_write(%struct.kiocb* %94, %struct.address_space* %95, %struct.iov_iter* %96, i32 %97)
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %11, align 8
  br label %160

103:                                              ; preds = %88
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %105, %106
  %108 = sub nsw i64 %107, 1
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %12, align 4
  %110 = load %struct.file*, %struct.file** %6, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 0
  %112 = load %struct.address_space*, %struct.address_space** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i64 @filemap_write_and_wait_range(%struct.address_space* %112, i32 %113, i32 %114)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %160

119:                                              ; preds = %103
  %120 = load %struct.file*, %struct.file** %6, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 0
  %122 = load %struct.address_space*, %struct.address_space** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @PAGE_SHIFT, align 4
  %125 = ashr i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @PAGE_SHIFT, align 4
  %128 = ashr i32 %126, %127
  %129 = call i32 @invalidate_mapping_pages(%struct.address_space* %122, i32 %125, i32 %128)
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %8, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %9, align 8
  %136 = add nsw i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %139 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %159

140:                                              ; preds = %67
  %141 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %142 = load %struct.address_space*, %struct.address_space** %7, align 8
  %143 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %144 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %145 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @fuse_perform_write(%struct.kiocb* %141, %struct.address_space* %142, %struct.iov_iter* %143, i32 %146)
  store i64 %147, i64* %8, align 8
  %148 = load i64, i64* %8, align 8
  %149 = icmp sge i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %140
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %153 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  br label %158

158:                                              ; preds = %150, %140
  br label %159

159:                                              ; preds = %158, %119
  br label %160

160:                                              ; preds = %159, %118, %101, %87, %66, %60, %54
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32* null, i32** %162, align 8
  %163 = load %struct.inode*, %struct.inode** %10, align 8
  %164 = call i32 @inode_unlock(%struct.inode* %163)
  %165 = load i64, i64* %8, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i64 @generic_write_sync(%struct.kiocb* %168, i64 %169)
  store i64 %170, i64* %8, align 8
  br label %171

171:                                              ; preds = %167, %160
  %172 = load i64, i64* %8, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i64, i64* %8, align 8
  br label %178

176:                                              ; preds = %171
  %177 = load i64, i64* %11, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ]
  store i64 %179, i64* %3, align 8
  br label %180

180:                                              ; preds = %178, %38, %36
  %181 = load i64, i64* %3, align 8
  ret i64 %181
}

declare dso_local %struct.TYPE_3__* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @fuse_update_attributes(%struct.inode*, %struct.file*) #1

declare dso_local i64 @generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32* @inode_to_bdi(%struct.inode*) #1

declare dso_local i64 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @file_remove_privs(%struct.file*) #1

declare dso_local i64 @file_update_time(%struct.file*) #1

declare dso_local i64 @generic_file_direct_write(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @fuse_perform_write(%struct.kiocb*, %struct.address_space*, %struct.iov_iter*, i32) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @invalidate_mapping_pages(%struct.address_space*, i32, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i64 @generic_write_sync(%struct.kiocb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

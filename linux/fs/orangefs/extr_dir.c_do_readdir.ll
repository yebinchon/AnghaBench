; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_do_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_do_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_inode_s = type { i32 }
%struct.orangefs_dir = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.orangefs_kernel_op_s = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.orangefs_readdir_response_s = type { i32 }

@ORANGEFS_MAX_DIRENT_COUNT_READDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"orangefs_readdir\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PART_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_inode_s*, %struct.orangefs_dir*, %struct.dentry*, %struct.orangefs_kernel_op_s*)* @do_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_readdir(%struct.orangefs_inode_s* %0, %struct.orangefs_dir* %1, %struct.dentry* %2, %struct.orangefs_kernel_op_s* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.orangefs_inode_s*, align 8
  %7 = alloca %struct.orangefs_dir*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.orangefs_kernel_op_s*, align 8
  %10 = alloca %struct.orangefs_readdir_response_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.orangefs_inode_s* %0, %struct.orangefs_inode_s** %6, align 8
  store %struct.orangefs_dir* %1, %struct.orangefs_dir** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.orangefs_kernel_op_s* %3, %struct.orangefs_kernel_op_s** %9, align 8
  %13 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %14 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %6, align 8
  %16 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %19 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i32 %17, i32* %22, align 4
  %23 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %24 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %27 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 %25, i32* %30, align 8
  %31 = load i32, i32* @ORANGEFS_MAX_DIRENT_COUNT_READDIR, align 4
  %32 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %33 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %69, %4
  %38 = call i32 (...) @orangefs_readdir_index_get()
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %44 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %158

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %49 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @get_interruptible_flag(i32 %56)
  %58 = call i32 @service_operation(%struct.orangefs_kernel_op_s* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @orangefs_readdir_index_put(i32 %59)
  %61 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %62 = call i64 @op_state_purged(%struct.orangefs_kernel_op_s* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %46
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %71 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @vfree(i64 %73)
  br label %37

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %82 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @vfree(i64 %84)
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %88 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %5, align 4
  br label %158

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %46
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %97 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @vfree(i64 %99)
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %103 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %158

105:                                              ; preds = %92
  %106 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %107 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %113 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @vfree(i64 %115)
  %117 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %118 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %122 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %124 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %5, align 4
  br label %158

127:                                              ; preds = %105
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %130 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PART_SIZE, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %137 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @vfree(i64 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  %143 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %144 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %158

147:                                              ; preds = %128
  %148 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %9, align 8
  %149 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.orangefs_readdir_response_s*
  store %struct.orangefs_readdir_response_s* %152, %struct.orangefs_readdir_response_s** %10, align 8
  %153 = load %struct.orangefs_readdir_response_s*, %struct.orangefs_readdir_response_s** %10, align 8
  %154 = getelementptr inbounds %struct.orangefs_readdir_response_s, %struct.orangefs_readdir_response_s* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %157 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %147, %135, %111, %95, %80, %41
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @orangefs_readdir_index_get(...) #1

declare dso_local i32 @service_operation(%struct.orangefs_kernel_op_s*, i8*, i32) #1

declare dso_local i32 @get_interruptible_flag(i32) #1

declare dso_local i32 @orangefs_readdir_index_put(i32) #1

declare dso_local i64 @op_state_purged(%struct.orangefs_kernel_op_s*) #1

declare dso_local i32 @vfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

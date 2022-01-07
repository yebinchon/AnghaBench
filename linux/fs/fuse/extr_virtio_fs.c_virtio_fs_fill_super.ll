; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fuse_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.virtio_fs* }
%struct.virtio_fs = type { i32, %struct.virtio_fs_vq*, i32, i32 }
%struct.virtio_fs_vq = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.fuse_conn* }
%struct.fuse_fs_context = type { i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@virtio_fs_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"virtio-fs: tag <%s> not found\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VQ_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @virtio_fs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_fs_fill_super(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca %struct.virtio_fs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_fs_context, align 8
  %9 = alloca %struct.virtio_fs_vq*, align 8
  %10 = alloca %struct.virtio_fs_vq*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %4, align 8
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.virtio_fs*, %struct.virtio_fs** %15, align 8
  store %struct.virtio_fs* %16, %struct.virtio_fs** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 2
  store i32 512, i32* %19, align 8
  %20 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 3
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 4
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 5
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 6
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 7
  store i8** null, i8*** %24, align 8
  %25 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 8
  %26 = load i32, i32* @UINT_MAX, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 9
  %28 = load i32, i32* @S_IFDIR, align 4
  store i32 %28, i32* %27, align 4
  %29 = call i32 @mutex_lock(i32* @virtio_fs_mutex)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %33 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %32, i32 0, i32 3
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %38 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %128

41:                                               ; preds = %1
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %64, %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @VQ_REQUEST, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %50 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %49, i32 0, i32 1
  %51 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %51, i64 %53
  store %struct.virtio_fs_vq* %54, %struct.virtio_fs_vq** %9, align 8
  %55 = call %struct.TYPE_5__* (...) @fuse_dev_alloc()
  %56 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %9, align 8
  %57 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %56, i32 0, i32 0
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %57, align 8
  %58 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %9, align 8
  %59 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %48
  br label %125

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %69 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %68, i32 0, i32 1
  %70 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %69, align 8
  %71 = load i32, i32* @VQ_REQUEST, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %70, i64 %72
  %74 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %73, i32 0, i32 0
  %75 = bitcast %struct.TYPE_5__** %74 to i8**
  %76 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 7
  store i8** %75, i8*** %76, align 8
  %77 = load %struct.super_block*, %struct.super_block** %3, align 8
  %78 = call i32 @fuse_fill_super_common(%struct.super_block* %77, %struct.fuse_fs_context* %8)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %125

82:                                               ; preds = %67
  %83 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %84 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %83, i32 0, i32 1
  %85 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %84, align 8
  %86 = load i32, i32* @VQ_REQUEST, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %85, i64 %87
  %89 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.fuse_conn*, %struct.fuse_conn** %91, align 8
  store %struct.fuse_conn* %92, %struct.fuse_conn** %4, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %116, %82
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %96 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %93
  %100 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %101 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %100, i32 0, i32 1
  %102 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %102, i64 %104
  store %struct.virtio_fs_vq* %105, %struct.virtio_fs_vq** %10, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @VQ_REQUEST, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %116

110:                                              ; preds = %99
  %111 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %10, align 8
  %112 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %115 = call i32 @fuse_dev_install(%struct.TYPE_5__* %113, %struct.fuse_conn* %114)
  br label %116

116:                                              ; preds = %110, %109
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %93

119:                                              ; preds = %93
  %120 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %121 = call i32 @virtio_fs_start_all_queues(%struct.virtio_fs* %120)
  %122 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %123 = call i32 @fuse_send_init(%struct.fuse_conn* %122)
  %124 = call i32 @mutex_unlock(i32* @virtio_fs_mutex)
  store i32 0, i32* %2, align 4
  br label %131

125:                                              ; preds = %81, %62
  %126 = load %struct.virtio_fs*, %struct.virtio_fs** %5, align 8
  %127 = call i32 @virtio_fs_free_devs(%struct.virtio_fs* %126)
  br label %128

128:                                              ; preds = %125, %36
  %129 = call i32 @mutex_unlock(i32* @virtio_fs_mutex)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %128, %119
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.TYPE_5__* @fuse_dev_alloc(...) #1

declare dso_local i32 @fuse_fill_super_common(%struct.super_block*, %struct.fuse_fs_context*) #1

declare dso_local i32 @fuse_dev_install(%struct.TYPE_5__*, %struct.fuse_conn*) #1

declare dso_local i32 @virtio_fs_start_all_queues(%struct.virtio_fs*) #1

declare dso_local i32 @fuse_send_init(%struct.fuse_conn*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @virtio_fs_free_devs(%struct.virtio_fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

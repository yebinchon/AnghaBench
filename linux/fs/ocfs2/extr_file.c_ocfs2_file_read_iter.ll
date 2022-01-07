; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i64 }

@IOCB_DIRECT = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ocfs2_file_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 1
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %9, align 8
  %16 = load %struct.file*, %struct.file** %9, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IOCB_DIRECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %11, align 4
  %26 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %27 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IOCB_NOWAIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %12, align 4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = load %struct.file*, %struct.file** %9, align 8
  %36 = load %struct.file*, %struct.file** %9, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.file*, %struct.file** %9, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.file*, %struct.file** %9, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %59 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @trace_ocfs2_file_read_iter(%struct.inode* %34, %struct.file* %35, %struct.TYPE_7__* %39, i64 %43, i32 %50, i32 %57, i32 %60)
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = icmp ne %struct.inode* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %2
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %159

69:                                               ; preds = %2
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %168

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i32 @ocfs2_try_rw_lock(%struct.inode* %85, i32 0)
  store i32 %86, i32* %6, align 4
  br label %90

87:                                               ; preds = %81
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @ocfs2_rw_lock(%struct.inode* %88, i32 0)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %101

101:                                              ; preds = %98, %93
  br label %159

102:                                              ; preds = %90
  store i32 0, i32* %7, align 4
  %103 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %78
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = load %struct.file*, %struct.file** %9, align 8
  %109 = getelementptr inbounds %struct.file, %struct.file* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @ocfs2_inode_lock_atime(%struct.inode* %107, i32 %111, i32* %8, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @mlog_errno(i32 %125)
  br label %127

127:                                              ; preds = %124, %119
  br label %159

128:                                              ; preds = %106
  %129 = load %struct.inode*, %struct.inode** %10, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @ocfs2_inode_unlock(%struct.inode* %129, i32 %130)
  %132 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %133 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %134 = call i32 @generic_file_read_iter(%struct.kiocb* %132, %struct.iov_iter* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @trace_generic_file_read_iter_ret(i32 %135)
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @EIOCBQUEUED, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %128
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %141, %128
  %146 = phi i1 [ false, %128 ], [ %144, %141 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @BUG_ON(i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @EIOCBQUEUED, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %145
  %154 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %155 = call i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153, %145
  store i32 -1, i32* %7, align 4
  br label %158

158:                                              ; preds = %157, %153
  br label %159

159:                                              ; preds = %158, %127, %101, %64
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.inode*, %struct.inode** %10, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @ocfs2_rw_unlock(%struct.inode* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %159
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %75
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @trace_ocfs2_file_read_iter(%struct.inode*, %struct.file*, %struct.TYPE_7__*, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_try_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb*, i32) #1

declare dso_local i32 @ocfs2_inode_lock_atime(%struct.inode*, i32, i32*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @trace_generic_file_read_iter_ret(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb*) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

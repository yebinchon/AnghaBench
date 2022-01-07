; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_ioc_swapext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_ioc_swapext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.fd = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@xfs_file_operations = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ioc_swapext(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.fd, align 8
  %6 = alloca %struct.fd, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd, align 8
  %9 = alloca %struct.fd, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call %struct.TYPE_11__* @fdget(i32 %13)
  %15 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %15, align 8
  %16 = bitcast %struct.fd* %5 to i8*
  %17 = bitcast %struct.fd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %175

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FMODE_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FMODE_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @O_APPEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %32, %24
  %49 = load i32, i32* @EBADF, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %171

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_11__* @fdget(i32 %55)
  %57 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %57, align 8
  %58 = bitcast %struct.fd* %6 to i8*
  %59 = bitcast %struct.fd* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %171

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FMODE_WRITE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FMODE_READ, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @O_APPEND, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %74, %66
  %91 = load i32, i32* @EBADF, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %167

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = call i32 @file_inode(%struct.TYPE_11__* %95)
  %97 = call i64 @IS_SWAPFILE(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i32 @file_inode(%struct.TYPE_11__* %101)
  %103 = call i64 @IS_SWAPFILE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99, %93
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %167

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, @xfs_file_operations
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, @xfs_file_operations
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %108
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %167

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = call i32 @file_inode(%struct.TYPE_11__* %125)
  %127 = call %struct.TYPE_10__* @XFS_I(i32 %126)
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = call i32 @file_inode(%struct.TYPE_11__* %129)
  %131 = call %struct.TYPE_10__* @XFS_I(i32 %130)
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %4, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %123
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %167

142:                                              ; preds = %123
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %7, align 4
  br label %167

153:                                              ; preds = %142
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @XFS_FORCED_SHUTDOWN(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %7, align 4
  br label %167

162:                                              ; preds = %153
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = call i32 @xfs_swap_extents(%struct.TYPE_10__* %163, %struct.TYPE_10__* %164, %struct.TYPE_9__* %165)
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %162, %159, %150, %139, %120, %105, %90
  %168 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = call i32 @fdput(%struct.TYPE_11__* %169)
  br label %171

171:                                              ; preds = %167, %63, %48
  %172 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = call i32 @fdput(%struct.TYPE_11__* %173)
  br label %175

175:                                              ; preds = %171, %21
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_11__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_SWAPFILE(i32) #1

declare dso_local i32 @file_inode(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @XFS_I(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i64) #1

declare dso_local i32 @xfs_swap_extents(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @fdput(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

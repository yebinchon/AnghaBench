; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_send_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_send_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.fuse_init_args = type { %struct.TYPE_13__, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 (%struct.fuse_conn.0*, %struct.TYPE_13__*, i32)*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.fuse_conn.0 = type opaque
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@FUSE_KERNEL_VERSION = common dso_local global i32 0, align 4
@FUSE_KERNEL_MINOR_VERSION = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FUSE_ASYNC_READ = common dso_local global i32 0, align 4
@FUSE_POSIX_LOCKS = common dso_local global i32 0, align 4
@FUSE_ATOMIC_O_TRUNC = common dso_local global i32 0, align 4
@FUSE_EXPORT_SUPPORT = common dso_local global i32 0, align 4
@FUSE_BIG_WRITES = common dso_local global i32 0, align 4
@FUSE_DONT_MASK = common dso_local global i32 0, align 4
@FUSE_SPLICE_WRITE = common dso_local global i32 0, align 4
@FUSE_SPLICE_MOVE = common dso_local global i32 0, align 4
@FUSE_SPLICE_READ = common dso_local global i32 0, align 4
@FUSE_FLOCK_LOCKS = common dso_local global i32 0, align 4
@FUSE_HAS_IOCTL_DIR = common dso_local global i32 0, align 4
@FUSE_AUTO_INVAL_DATA = common dso_local global i32 0, align 4
@FUSE_DO_READDIRPLUS = common dso_local global i32 0, align 4
@FUSE_READDIRPLUS_AUTO = common dso_local global i32 0, align 4
@FUSE_ASYNC_DIO = common dso_local global i32 0, align 4
@FUSE_WRITEBACK_CACHE = common dso_local global i32 0, align 4
@FUSE_NO_OPEN_SUPPORT = common dso_local global i32 0, align 4
@FUSE_PARALLEL_DIROPS = common dso_local global i32 0, align 4
@FUSE_HANDLE_KILLPRIV = common dso_local global i32 0, align 4
@FUSE_POSIX_ACL = common dso_local global i32 0, align 4
@FUSE_ABORT_ERROR = common dso_local global i32 0, align 4
@FUSE_MAX_PAGES = common dso_local global i32 0, align 4
@FUSE_CACHE_SYMLINKS = common dso_local global i32 0, align 4
@FUSE_NO_OPENDIR_SUPPORT = common dso_local global i32 0, align 4
@FUSE_EXPLICIT_INVAL_DATA = common dso_local global i32 0, align 4
@FUSE_INIT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_send_init(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_conn*, align 8
  %3 = alloca %struct.fuse_init_args*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load i32, i32* @__GFP_NOFAIL, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.fuse_init_args* @kzalloc(i32 80, i32 %6)
  store %struct.fuse_init_args* %7, %struct.fuse_init_args** %3, align 8
  %8 = load i32, i32* @FUSE_KERNEL_VERSION, align 4
  %9 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @FUSE_KERNEL_MINOR_VERSION, align 4
  %13 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %14 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %26 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @FUSE_ASYNC_READ, align 4
  %29 = load i32, i32* @FUSE_POSIX_LOCKS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FUSE_ATOMIC_O_TRUNC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FUSE_EXPORT_SUPPORT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FUSE_BIG_WRITES, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FUSE_DONT_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FUSE_SPLICE_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FUSE_SPLICE_MOVE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FUSE_SPLICE_READ, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FUSE_FLOCK_LOCKS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FUSE_HAS_IOCTL_DIR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FUSE_AUTO_INVAL_DATA, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FUSE_DO_READDIRPLUS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FUSE_READDIRPLUS_AUTO, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FUSE_ASYNC_DIO, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FUSE_WRITEBACK_CACHE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FUSE_NO_OPEN_SUPPORT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @FUSE_PARALLEL_DIROPS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FUSE_HANDLE_KILLPRIV, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @FUSE_POSIX_ACL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FUSE_ABORT_ERROR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FUSE_MAX_PAGES, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @FUSE_CACHE_SYMLINKS, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @FUSE_NO_OPENDIR_SUPPORT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @FUSE_EXPLICIT_INVAL_DATA, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %78 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @FUSE_INIT, align 4
  %83 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %84 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 8
  store i32 %82, i32* %85, align 8
  %86 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %87 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %90 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 16, i32* %94, align 8
  %95 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %96 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %95, i32 0, i32 2
  %97 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %98 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 7
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %102, align 8
  %103 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %104 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %107 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %110 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i32 4, i32* %114, align 8
  %115 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %116 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %115, i32 0, i32 1
  %117 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %118 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i32* %116, i32** %122, align 8
  %123 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %124 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %127 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  store i32 1, i32* %128, align 8
  %129 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %130 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 5
  store i32 (%struct.fuse_conn.0*, %struct.TYPE_13__*, i32)* bitcast (i32 (%struct.fuse_conn*, %struct.TYPE_13__*, i32)* @process_init_reply to i32 (%struct.fuse_conn.0*, %struct.TYPE_13__*, i32)*), i32 (%struct.fuse_conn.0*, %struct.TYPE_13__*, i32)** %131, align 8
  %132 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %133 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %134 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %133, i32 0, i32 0
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i64 @fuse_simple_background(%struct.fuse_conn* %132, %struct.TYPE_13__* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %1
  %139 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %140 = load %struct.fuse_init_args*, %struct.fuse_init_args** %3, align 8
  %141 = getelementptr inbounds %struct.fuse_init_args, %struct.fuse_init_args* %140, i32 0, i32 0
  %142 = load i32, i32* @ENOTCONN, align 4
  %143 = sub nsw i32 0, %142
  %144 = call i32 @process_init_reply(%struct.fuse_conn* %139, %struct.TYPE_13__* %141, i32 %143)
  br label %145

145:                                              ; preds = %138, %1
  ret void
}

declare dso_local %struct.fuse_init_args* @kzalloc(i32, i32) #1

declare dso_local i32 @process_init_reply(%struct.fuse_conn*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @fuse_simple_background(%struct.fuse_conn*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

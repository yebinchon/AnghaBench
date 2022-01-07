; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.fuse_bmap_out* }
%struct.fuse_bmap_out = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.fuse_bmap_in* }
%struct.fuse_bmap_in = type { i32, i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@FUSE_BMAP = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @fuse_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_bmap(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_bmap_in, align 4
  %9 = alloca %struct.fuse_bmap_out, align 4
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.address_space*, %struct.address_space** %4, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %14)
  store %struct.fuse_conn* %15, %struct.fuse_conn** %7, align 8
  %16 = call i32 @FUSE_ARGS(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 @args)
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %25 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %72

29:                                               ; preds = %23
  %30 = call i32 @memset(%struct.fuse_bmap_in* %8, i32 0, i32 8)
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.fuse_bmap_in, %struct.fuse_bmap_in* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.fuse_bmap_in, %struct.fuse_bmap_in* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @FUSE_BMAP, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 5), align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i32 @get_node_id(%struct.inode* %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 0), align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 3), align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 8, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 3), align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store %struct.fuse_bmap_in* %8, %struct.fuse_bmap_in** %47, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 1), align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 2), align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 2), align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store %struct.fuse_bmap_out* %9, %struct.fuse_bmap_out** %53, align 8
  %54 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %55 = call i32 @fuse_simple_request(%struct.fuse_conn* %54, %struct.TYPE_10__* @args)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @ENOSYS, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %29
  %61 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %62 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %29
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.fuse_bmap_out, %struct.fuse_bmap_out* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 0, %66 ], [ %69, %67 ]
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %28
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @memset(%struct.fuse_bmap_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

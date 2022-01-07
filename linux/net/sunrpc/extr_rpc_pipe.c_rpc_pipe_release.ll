; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.rpc_pipe_msg* }
%struct.rpc_pipe_msg = type { i32, i32 }
%struct.rpc_pipe = type { i64, i64, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.inode*)*, i32 (%struct.rpc_pipe_msg*)* }
%struct.TYPE_4__ = type { i32, %struct.rpc_pipe* }

@EAGAIN = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@free_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rpc_pipe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_pipe_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rpc_pipe*, align 8
  %6 = alloca %struct.rpc_pipe_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i32 @inode_lock(%struct.inode* %8)
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.TYPE_4__* @RPC_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.rpc_pipe*, %struct.rpc_pipe** %12, align 8
  store %struct.rpc_pipe* %13, %struct.rpc_pipe** %5, align 8
  %14 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %15 = icmp eq %struct.rpc_pipe* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %129

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %19, align 8
  store %struct.rpc_pipe_msg* %20, %struct.rpc_pipe_msg** %6, align 8
  %21 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %22 = icmp ne %struct.rpc_pipe_msg* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %25 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %24, i32 0, i32 3
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %30 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %32 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %31, i32 0, i32 0
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %35 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %34, i32 0, i32 3
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (%struct.rpc_pipe_msg*)*, i32 (%struct.rpc_pipe_msg*)** %40, align 8
  %42 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %43 = call i32 %41(%struct.rpc_pipe_msg* %42)
  br label %44

44:                                               ; preds = %23, %17
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FMODE_WRITE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %53 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.file*, %struct.file** %4, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FMODE_READ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %98

63:                                               ; preds = %56
  %64 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %65 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %69 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %63
  %73 = load i32, i32* @free_list, align 4
  %74 = call i32 @LIST_HEAD(i32 %73)
  %75 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %76 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %75, i32 0, i32 3
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %79 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %78, i32 0, i32 5
  %80 = call i32 @list_splice_init(i32* %79, i32* @free_list)
  %81 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %82 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %84 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %83, i32 0, i32 3
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = call %struct.TYPE_4__* @RPC_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %90 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32 (%struct.rpc_pipe_msg*)*, i32 (%struct.rpc_pipe_msg*)** %92, align 8
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  %96 = call i32 @rpc_purge_list(i32* %88, i32* @free_list, i32 (%struct.rpc_pipe_msg*)* %93, i32 %95)
  br label %97

97:                                               ; preds = %72, %63
  br label %98

98:                                               ; preds = %97, %56
  %99 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %100 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %105 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br label %108

108:                                              ; preds = %103, %98
  %109 = phi i1 [ false, %98 ], [ %107, %103 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %115 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %117, align 8
  %119 = icmp ne i32 (%struct.inode*)* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %122 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %124, align 8
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = call i32 %125(%struct.inode* %126)
  br label %128

128:                                              ; preds = %120, %113, %108
  br label %129

129:                                              ; preds = %128, %16
  %130 = load %struct.inode*, %struct.inode** %3, align 8
  %131 = call i32 @inode_unlock(%struct.inode* %130)
  ret i32 0
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @RPC_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @rpc_purge_list(i32*, i32*, i32 (%struct.rpc_pipe_msg*)*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

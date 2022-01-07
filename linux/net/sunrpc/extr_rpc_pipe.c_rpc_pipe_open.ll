; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.rpc_pipe = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*)* }
%struct.TYPE_4__ = type { %struct.rpc_pipe* }

@ENXIO = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rpc_pipe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_pipe_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rpc_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load i32, i32* @ENXIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @inode_lock(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_4__* @RPC_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.rpc_pipe*, %struct.rpc_pipe** %14, align 8
  store %struct.rpc_pipe* %15, %struct.rpc_pipe** %5, align 8
  %16 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %17 = icmp eq %struct.rpc_pipe* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %21 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %26 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %36 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %38, align 8
  %40 = icmp ne i32 (%struct.inode*)* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %43 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %45, align 8
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = call i32 %46(%struct.inode* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %78

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %34, %29
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FMODE_READ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %62 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %60, %53
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FMODE_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %74 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %65
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %51, %18
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = call i32 @inode_unlock(%struct.inode* %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @RPC_I(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

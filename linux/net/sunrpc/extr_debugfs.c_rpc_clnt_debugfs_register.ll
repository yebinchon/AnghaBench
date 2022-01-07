; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_debugfs.c_rpc_clnt_debugfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_debugfs.c_rpc_clnt_debugfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@rpc_clnt_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@tasks_fops = common dso_local global i32 0, align 4
@do_xprt_debugfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_clnt_debugfs_register(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [9 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %7 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snprintf(i8* %6, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 9
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %31

15:                                               ; preds = %1
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %17 = load i32, i32* @rpc_clnt_dir, align 4
  %18 = call i32 @debugfs_create_dir(i8* %16, i32 %17)
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %20 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = or i32 %21, 256
  %23 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %27 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, %struct.rpc_clnt* %26, i32* @tasks_fops)
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %29 = load i32, i32* @do_xprt_debugfs, align 4
  %30 = call i32 @rpc_clnt_iterate_for_each_xprt(%struct.rpc_clnt* %28, i32 %29, i32* %5)
  br label %31

31:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.rpc_clnt*, i32*) #1

declare dso_local i32 @rpc_clnt_iterate_for_each_xprt(%struct.rpc_clnt*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

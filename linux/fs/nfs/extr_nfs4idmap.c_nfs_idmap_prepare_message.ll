; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { i32 }
%struct.idmap_msg = type { i32, i32, i8*, i32 }
%struct.rpc_pipe_msg = type { i32, %struct.idmap_msg* }

@IDMAP_TYPE_GROUP = common dso_local global i8* null, align 8
@nfs_idmap_tokens = common dso_local global i32 0, align 4
@IDMAP_TYPE_USER = common dso_local global i8* null, align 8
@IDMAP_CONV_NAMETOID = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@IDMAP_CONV_IDTONAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.idmap*, %struct.idmap_msg*, %struct.rpc_pipe_msg*)* @nfs_idmap_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_prepare_message(i8* %0, %struct.idmap* %1, %struct.idmap_msg* %2, %struct.rpc_pipe_msg* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.idmap*, align 8
  %7 = alloca %struct.idmap_msg*, align 8
  %8 = alloca %struct.rpc_pipe_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.idmap* %1, %struct.idmap** %6, align 8
  store %struct.idmap_msg* %2, %struct.idmap_msg** %7, align 8
  store %struct.rpc_pipe_msg* %3, %struct.rpc_pipe_msg** %8, align 8
  %12 = load i8*, i8** @IDMAP_TYPE_GROUP, align 8
  %13 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %14 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @nfs_idmap_tokens, align 4
  %17 = call i32 @match_token(i8* %15, i32 %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %47 [
    i32 129, label %19
    i32 131, label %23
    i32 128, label %32
    i32 130, label %36
  ]

19:                                               ; preds = %4
  %20 = load i8*, i8** @IDMAP_TYPE_USER, align 8
  %21 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %22 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %4, %19
  %24 = load i32, i32* @IDMAP_CONV_NAMETOID, align 4
  %25 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %26 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %28 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IDMAP_NAMESZ, align 4
  %31 = call i32 @match_strlcpy(i32 %29, i32* %9, i32 %30)
  store i32 %31, i32* %11, align 4
  br label %50

32:                                               ; preds = %4
  %33 = load i8*, i8** @IDMAP_TYPE_USER, align 8
  %34 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %35 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %4, %32
  %37 = load i32, i32* @IDMAP_CONV_IDTONAME, align 4
  %38 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %39 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %41 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %40, i32 0, i32 0
  %42 = call i32 @match_int(i32* %9, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %56

46:                                               ; preds = %36
  br label %50

47:                                               ; preds = %4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %56

50:                                               ; preds = %46, %23
  %51 = load %struct.idmap_msg*, %struct.idmap_msg** %7, align 8
  %52 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %8, align 8
  %53 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %52, i32 0, i32 1
  store %struct.idmap_msg* %51, %struct.idmap_msg** %53, align 8
  %54 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %8, align 8
  %55 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %54, i32 0, i32 0
  store i32 24, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %47, %45
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_strlcpy(i32, i32*, i32) #1

declare dso_local i32 @match_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_gssd_dummy_populate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_gssd_dummy_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { i32 }
%struct.rpc_pipe = type { i32 }
%struct.qstr = type { i32, i32 }

@files = common dso_local global %struct.TYPE_7__* null, align 8
@RPCAUTH_gssd = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@gssd_dummy_clnt_dir = common dso_local global %struct.TYPE_6__* null, align 8
@gssd_dummy_info_file = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"gssd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.rpc_pipe*)* @rpc_gssd_dummy_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @rpc_gssd_dummy_populate(%struct.dentry* %0, %struct.rpc_pipe* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.rpc_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.qstr, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.rpc_pipe* %1, %struct.rpc_pipe** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.dentry* null, %struct.dentry** %8, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @files, align 8
  %12 = load i64, i64* @RPCAUTH_gssd, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @files, align 8
  %17 = load i64, i64* @RPCAUTH_gssd, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = call i64 @QSTR_INIT(i32 %15, i32 %21)
  %23 = bitcast %struct.qstr* %10 to i64*
  store i64 %22, i64* %23, align 4
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %24, %struct.qstr* %10)
  store %struct.dentry* %25, %struct.dentry** %7, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = icmp ne %struct.dentry* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.dentry* @ERR_PTR(i32 %30)
  store %struct.dentry* %31, %struct.dentry** %3, align 8
  br label %94

32:                                               ; preds = %2
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gssd_dummy_clnt_dir, align 8
  %35 = call i32 @rpc_populate(%struct.dentry* %33, %struct.TYPE_6__* %34, i32 0, i32 1, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.dentry* @ERR_PTR(i32 %39)
  store %struct.dentry* %40, %struct.dentry** %9, align 8
  br label %88

41:                                               ; preds = %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gssd_dummy_clnt_dir, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gssd_dummy_clnt_dir, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %53, %struct.qstr* %10)
  store %struct.dentry* %54, %struct.dentry** %8, align 8
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  %56 = icmp ne %struct.dentry* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.dentry* @ERR_PTR(i32 %59)
  store %struct.dentry* %60, %struct.dentry** %9, align 8
  br label %88

61:                                               ; preds = %41
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gssd_dummy_info_file, align 8
  %64 = call i32 @rpc_populate(%struct.dentry* %62, %struct.TYPE_6__* %63, i32 0, i32 1, i32* null)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.dentry*, %struct.dentry** %7, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gssd_dummy_clnt_dir, align 8
  %70 = call i32 @__rpc_depopulate(%struct.dentry* %68, %struct.TYPE_6__* %69, i32 0, i32 1)
  %71 = load i32, i32* %6, align 4
  %72 = call %struct.dentry* @ERR_PTR(i32 %71)
  store %struct.dentry* %72, %struct.dentry** %9, align 8
  br label %88

73:                                               ; preds = %61
  %74 = load %struct.dentry*, %struct.dentry** %8, align 8
  %75 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %76 = call %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.rpc_pipe* %75)
  store %struct.dentry* %76, %struct.dentry** %9, align 8
  %77 = load %struct.dentry*, %struct.dentry** %9, align 8
  %78 = call i64 @IS_ERR(%struct.dentry* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.dentry*, %struct.dentry** %8, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gssd_dummy_info_file, align 8
  %83 = call i32 @__rpc_depopulate(%struct.dentry* %81, %struct.TYPE_6__* %82, i32 0, i32 1)
  %84 = load %struct.dentry*, %struct.dentry** %7, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gssd_dummy_clnt_dir, align 8
  %86 = call i32 @__rpc_depopulate(%struct.dentry* %84, %struct.TYPE_6__* %85, i32 0, i32 1)
  br label %87

87:                                               ; preds = %80, %73
  br label %88

88:                                               ; preds = %87, %67, %57, %38
  %89 = load %struct.dentry*, %struct.dentry** %8, align 8
  %90 = call i32 @dput(%struct.dentry* %89)
  %91 = load %struct.dentry*, %struct.dentry** %7, align 8
  %92 = call i32 @dput(%struct.dentry* %91)
  %93 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %93, %struct.dentry** %3, align 8
  br label %94

94:                                               ; preds = %88, %28
  %95 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %95
}

declare dso_local i64 @QSTR_INIT(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @rpc_populate(%struct.dentry*, %struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @__rpc_depopulate(%struct.dentry*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry*, i8*, i32*, %struct.rpc_pipe*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

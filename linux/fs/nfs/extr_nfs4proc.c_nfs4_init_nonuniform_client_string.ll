; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_nonuniform_client_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_nonuniform_client_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@RPC_DISPLAY_ADDR = common dso_local global i32 0, align 4
@nfs4_client_id_uniquifier = common dso_local global i8* null, align 8
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Linux NFSv4.0 %s/%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Linux NFSv4.0 %s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_init_nonuniform_client_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_init_nonuniform_client_string(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %6 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

11:                                               ; preds = %1
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 14, %18
  %20 = add nsw i32 %19, 1
  %21 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* @RPC_DISPLAY_ADDR, align 4
  %25 = call i8* @rpc_peeraddr2str(%struct.TYPE_2__* %23, i32 %24)
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %20, %26
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load i8*, i8** @nfs4_client_id_uniquifier, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %11
  %37 = load i8*, i8** @nfs4_client_id_uniquifier, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %36, %11
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %102

52:                                               ; preds = %43
  %53 = load i64, i64* %4, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kmalloc(i64 %53, i32 %54)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %102

61:                                               ; preds = %52
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load i8*, i8** @nfs4_client_id_uniquifier, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %72 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @nfs4_client_id_uniquifier, align 8
  %77 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %78 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* @RPC_DISPLAY_ADDR, align 4
  %81 = call i8* @rpc_peeraddr2str(%struct.TYPE_2__* %79, i32 %80)
  %82 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @scnprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %75, i8* %76, i8* %81)
  br label %97

83:                                               ; preds = %61
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %87 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %92 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* @RPC_DISPLAY_ADDR, align 4
  %95 = call i8* @rpc_peeraddr2str(%struct.TYPE_2__* %93, i32 %94)
  %96 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @scnprintf(i8* %84, i64 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %90, i8* %95)
  br label %97

97:                                               ; preds = %83, %68
  %98 = call i32 (...) @rcu_read_unlock()
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %101 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %58, %49, %10
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @rpc_peeraddr2str(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

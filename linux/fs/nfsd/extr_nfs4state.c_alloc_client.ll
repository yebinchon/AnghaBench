; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.xdr_netobj = type { i32 }

@client_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@OWNER_HASH_SIZE = common dso_local global i32 0, align 4
@NFSD4_CB_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Backchannel slot table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_client* (i32)* @alloc_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_client* @alloc_client(i32 %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca %struct.xdr_netobj, align 4
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = load i32, i32* @client_slab, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nfs4_client* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.nfs4_client* %9, %struct.nfs4_client** %4, align 8
  %10 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %11 = icmp eq %struct.nfs4_client* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.nfs4_client* null, %struct.nfs4_client** %2, align 8
  br label %102

13:                                               ; preds = %1
  %14 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @xdr_netobj_dup(%struct.TYPE_2__* %15, %struct.xdr_netobj* %3, i32 %16)
  %18 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %19 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %98

24:                                               ; preds = %13
  %25 = load i32, i32* @OWNER_HASH_SIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kmalloc_array(i32 %25, i32 4, i32 %26)
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %28, i32 0, i32 15
  store i32* %27, i32** %29, align 8
  %30 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %31 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %30, i32 0, i32 15
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %92

35:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @OWNER_HASH_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %42 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %41, i32 0, i32 15
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %53 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %52, i32 0, i32 14
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %56 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %55, i32 0, i32 13
  %57 = call i32 @idr_init(i32* %56)
  %58 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %59 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %58, i32 0, i32 12
  %60 = call i32 @atomic_set(i32* %59, i32 0)
  %61 = load i32, i32* @NFSD4_CB_UNKNOWN, align 4
  %62 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %63 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %65 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %64, i32 0, i32 10
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %68 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %67, i32 0, i32 9
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %71 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %70, i32 0, i32 8
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %74 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %73, i32 0, i32 7
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %77 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %76, i32 0, i32 6
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %80 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %79, i32 0, i32 4
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %83 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %82, i32 0, i32 3
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %86 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %85, i32 0, i32 2
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %89 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %88, i32 0, i32 1
  %90 = call i32 @rpc_init_wait_queue(i32* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  store %struct.nfs4_client* %91, %struct.nfs4_client** %2, align 8
  br label %102

92:                                               ; preds = %34
  %93 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %94 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @kfree(i32* %96)
  br label %98

98:                                               ; preds = %92, %23
  %99 = load i32, i32* @client_slab, align 4
  %100 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %101 = call i32 @kmem_cache_free(i32 %99, %struct.nfs4_client* %100)
  store %struct.nfs4_client* null, %struct.nfs4_client** %2, align 8
  br label %102

102:                                              ; preds = %98, %51, %12
  %103 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  ret %struct.nfs4_client* %103
}

declare dso_local %struct.nfs4_client* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @xdr_netobj_dup(%struct.TYPE_2__*, %struct.xdr_netobj*, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

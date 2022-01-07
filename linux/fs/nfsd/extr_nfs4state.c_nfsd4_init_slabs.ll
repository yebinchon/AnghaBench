; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_init_slabs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_init_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"nfsd4_clients\00", align 1
@client_slab = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"nfsd4_openowners\00", align 1
@openowner_slab = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"nfsd4_lockowners\00", align 1
@lockowner_slab = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"nfsd4_files\00", align 1
@file_slab = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"nfsd4_stateids\00", align 1
@stateid_slab = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"nfsd4_delegations\00", align 1
@deleg_slab = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"nfsd4_odstate\00", align 1
@odstate_slab = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"nfsd4: out of memory while initializing nfsv4\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_init_slabs() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** @client_slab, align 8
  %4 = load i32*, i32** @client_slab, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %62

7:                                                ; preds = %0
  %8 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** @openowner_slab, align 8
  %10 = load i32*, i32** @openowner_slab, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %59

13:                                               ; preds = %7
  %14 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** @lockowner_slab, align 8
  %16 = load i32*, i32** @lockowner_slab, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %56

19:                                               ; preds = %13
  %20 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** @file_slab, align 8
  %22 = load i32*, i32** @file_slab, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %53

25:                                               ; preds = %19
  %26 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @stateid_slab, align 8
  %28 = load i32*, i32** @stateid_slab, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %50

31:                                               ; preds = %25
  %32 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** @deleg_slab, align 8
  %34 = load i32*, i32** @deleg_slab, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %47

37:                                               ; preds = %31
  %38 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @odstate_slab, align 8
  %40 = load i32*, i32** @odstate_slab, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %66

44:                                               ; preds = %42
  %45 = load i32*, i32** @deleg_slab, align 8
  %46 = call i32 @kmem_cache_destroy(i32* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32*, i32** @stateid_slab, align 8
  %49 = call i32 @kmem_cache_destroy(i32* %48)
  br label %50

50:                                               ; preds = %47, %30
  %51 = load i32*, i32** @file_slab, align 8
  %52 = call i32 @kmem_cache_destroy(i32* %51)
  br label %53

53:                                               ; preds = %50, %24
  %54 = load i32*, i32** @lockowner_slab, align 8
  %55 = call i32 @kmem_cache_destroy(i32* %54)
  br label %56

56:                                               ; preds = %53, %18
  %57 = load i32*, i32** @openowner_slab, align 8
  %58 = call i32 @kmem_cache_destroy(i32* %57)
  br label %59

59:                                               ; preds = %56, %12
  %60 = load i32*, i32** @client_slab, align 8
  %61 = call i32 @kmem_cache_destroy(i32* %60)
  br label %62

62:                                               ; preds = %59, %6
  %63 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %62, %43
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

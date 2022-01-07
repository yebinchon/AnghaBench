; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_lookup_or_create_lock_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_lookup_or_create_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nfs4_ol_stateid = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nfs4_file* }
%struct.nfs4_file = type { i32 }
%struct.nfsd4_lock = type { i64, i32 }
%struct.nfs4_openowner = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }
%struct.inode = type { i32 }
%struct.nfs4_lockowner = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@nfserr_jukebox = common dso_local global i32 0, align 4
@nfserr_bad_seqid = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compound_state*, %struct.nfs4_ol_stateid*, %struct.nfsd4_lock*, %struct.nfs4_ol_stateid**, i32*)* @lookup_or_create_lock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_or_create_lock_state(%struct.nfsd4_compound_state* %0, %struct.nfs4_ol_stateid* %1, %struct.nfsd4_lock* %2, %struct.nfs4_ol_stateid** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca %struct.nfs4_ol_stateid*, align 8
  %9 = alloca %struct.nfsd4_lock*, align 8
  %10 = alloca %struct.nfs4_ol_stateid**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfs4_file*, align 8
  %14 = alloca %struct.nfs4_openowner*, align 8
  %15 = alloca %struct.nfs4_client*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.nfs4_lockowner*, align 8
  %18 = alloca %struct.nfs4_ol_stateid*, align 8
  %19 = alloca i32, align 4
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %7, align 8
  store %struct.nfs4_ol_stateid* %1, %struct.nfs4_ol_stateid** %8, align 8
  store %struct.nfsd4_lock* %2, %struct.nfsd4_lock** %9, align 8
  store %struct.nfs4_ol_stateid** %3, %struct.nfs4_ol_stateid*** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %8, align 8
  %21 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.nfs4_file*, %struct.nfs4_file** %22, align 8
  store %struct.nfs4_file* %23, %struct.nfs4_file** %13, align 8
  %24 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %8, align 8
  %25 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.nfs4_openowner* @openowner(i32 %26)
  store %struct.nfs4_openowner* %27, %struct.nfs4_openowner** %14, align 8
  %28 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %14, align 8
  %29 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.nfs4_client*, %struct.nfs4_client** %30, align 8
  store %struct.nfs4_client* %31, %struct.nfs4_client** %15, align 8
  %32 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.inode* @d_inode(i32 %35)
  store %struct.inode* %36, %struct.inode** %16, align 8
  %37 = load %struct.nfs4_client*, %struct.nfs4_client** %15, align 8
  %38 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %39 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %38, i32 0, i32 1
  %40 = call %struct.nfs4_lockowner* @find_lockowner_str(%struct.nfs4_client* %37, i32* %39)
  store %struct.nfs4_lockowner* %40, %struct.nfs4_lockowner** %17, align 8
  %41 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %17, align 8
  %42 = icmp ne %struct.nfs4_lockowner* %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %5
  %44 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %45 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %44, i32 0, i32 1
  %46 = call i32 @ownerstr_hashval(i32* %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load %struct.nfs4_client*, %struct.nfs4_client** %15, align 8
  %49 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %8, align 8
  %50 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %51 = call %struct.nfs4_lockowner* @alloc_init_lock_stateowner(i32 %47, %struct.nfs4_client* %48, %struct.nfs4_ol_stateid* %49, %struct.nfsd4_lock* %50)
  store %struct.nfs4_lockowner* %51, %struct.nfs4_lockowner** %17, align 8
  %52 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %17, align 8
  %53 = icmp eq %struct.nfs4_lockowner* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @nfserr_jukebox, align 4
  store i32 %55, i32* %6, align 4
  br label %94

56:                                               ; preds = %43
  br label %74

57:                                               ; preds = %5
  %58 = load i32, i32* @nfserr_bad_seqid, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %65 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %17, align 8
  %68 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %89

73:                                               ; preds = %63, %57
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %17, align 8
  %76 = load %struct.nfs4_file*, %struct.nfs4_file** %13, align 8
  %77 = load %struct.inode*, %struct.inode** %16, align 8
  %78 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %8, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call %struct.nfs4_ol_stateid* @find_or_create_lock_stateid(%struct.nfs4_lockowner* %75, %struct.nfs4_file* %76, %struct.inode* %77, %struct.nfs4_ol_stateid* %78, i32* %79)
  store %struct.nfs4_ol_stateid* %80, %struct.nfs4_ol_stateid** %18, align 8
  %81 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %18, align 8
  %82 = icmp eq %struct.nfs4_ol_stateid* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @nfserr_jukebox, align 4
  store i32 %84, i32* %12, align 4
  br label %89

85:                                               ; preds = %74
  %86 = load i32, i32* @nfs_ok, align 4
  store i32 %86, i32* %12, align 4
  %87 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %18, align 8
  %88 = load %struct.nfs4_ol_stateid**, %struct.nfs4_ol_stateid*** %10, align 8
  store %struct.nfs4_ol_stateid* %87, %struct.nfs4_ol_stateid** %88, align 8
  br label %89

89:                                               ; preds = %85, %83, %72
  %90 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %17, align 8
  %91 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %90, i32 0, i32 0
  %92 = call i32 @nfs4_put_stateowner(%struct.TYPE_8__* %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %89, %54
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.nfs4_openowner* @openowner(i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.nfs4_lockowner* @find_lockowner_str(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @ownerstr_hashval(i32*) #1

declare dso_local %struct.nfs4_lockowner* @alloc_init_lock_stateowner(i32, %struct.nfs4_client*, %struct.nfs4_ol_stateid*, %struct.nfsd4_lock*) #1

declare dso_local %struct.nfs4_ol_stateid* @find_or_create_lock_stateid(%struct.nfs4_lockowner*, %struct.nfs4_file*, %struct.inode*, %struct.nfs4_ol_stateid*, i32*) #1

declare dso_local i32 @nfs4_put_stateowner(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

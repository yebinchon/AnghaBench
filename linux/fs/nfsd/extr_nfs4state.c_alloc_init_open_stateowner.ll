; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_init_open_stateowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_init_open_stateowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_openowner = type { %struct.TYPE_2__, i32, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.nfsd4_open = type { i32, i32 }
%struct.nfsd4_compound_state = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }

@openowner_slab = common dso_local global i32 0, align 4
@openowner_ops = common dso_local global i32 0, align 4
@NFS4_OO_CONFIRMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_openowner* (i32, %struct.nfsd4_open*, %struct.nfsd4_compound_state*)* @alloc_init_open_stateowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_openowner* @alloc_init_open_stateowner(i32 %0, %struct.nfsd4_open* %1, %struct.nfsd4_compound_state* %2) #0 {
  %4 = alloca %struct.nfs4_openowner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca %struct.nfs4_client*, align 8
  %9 = alloca %struct.nfs4_openowner*, align 8
  %10 = alloca %struct.nfs4_openowner*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %6, align 8
  store %struct.nfsd4_compound_state* %2, %struct.nfsd4_compound_state** %7, align 8
  %11 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %12 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %11, i32 0, i32 0
  %13 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  store %struct.nfs4_client* %13, %struct.nfs4_client** %8, align 8
  %14 = load i32, i32* @openowner_slab, align 4
  %15 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %15, i32 0, i32 1
  %17 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %18 = call %struct.nfs4_openowner* @alloc_stateowner(i32 %14, i32* %16, %struct.nfs4_client* %17)
  store %struct.nfs4_openowner* %18, %struct.nfs4_openowner** %9, align 8
  %19 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %20 = icmp ne %struct.nfs4_openowner* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.nfs4_openowner* null, %struct.nfs4_openowner** %4, align 8
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %24 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32* @openowner_ops, i32** %25, align 8
  %26 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %27 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %33 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %36 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %35, i32 0, i32 4
  store i32 0, i32* %36, align 8
  %37 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %38 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %22
  %41 = load i32, i32* @NFS4_OO_CONFIRMED, align 4
  %42 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %43 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %22
  %47 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %48 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %50 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %52 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %55 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %54, i32 0, i32 0
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %59 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %60 = call %struct.nfs4_openowner* @find_openstateowner_str_locked(i32 %57, %struct.nfsd4_open* %58, %struct.nfs4_client* %59)
  store %struct.nfs4_openowner* %60, %struct.nfs4_openowner** %10, align 8
  %61 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %10, align 8
  %62 = icmp eq %struct.nfs4_openowner* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %65 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @hash_openowner(%struct.nfs4_openowner* %64, %struct.nfs4_client* %65, i32 %66)
  %68 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  store %struct.nfs4_openowner* %68, %struct.nfs4_openowner** %10, align 8
  br label %73

69:                                               ; preds = %46
  %70 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  %71 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %70, i32 0, i32 0
  %72 = call i32 @nfs4_free_stateowner(%struct.TYPE_2__* %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %75 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %10, align 8
  store %struct.nfs4_openowner* %77, %struct.nfs4_openowner** %4, align 8
  br label %78

78:                                               ; preds = %73, %21
  %79 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %4, align 8
  ret %struct.nfs4_openowner* %79
}

declare dso_local %struct.nfs4_openowner* @alloc_stateowner(i32, i32*, %struct.nfs4_client*) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_openowner* @find_openstateowner_str_locked(i32, %struct.nfsd4_open*, %struct.nfs4_client*) #1

declare dso_local i32 @hash_openowner(%struct.nfs4_openowner*, %struct.nfs4_client*, i32) #1

declare dso_local i32 @nfs4_free_stateowner(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

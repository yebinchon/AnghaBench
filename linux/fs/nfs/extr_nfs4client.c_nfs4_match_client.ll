; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_match_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_match_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64, i64, i64, i64, i32 }
%struct.nfs_net = type { i32 }

@NFS_CS_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, %struct.nfs_client*, %struct.nfs_client**, %struct.nfs_net*)* @nfs4_match_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_match_client(%struct.nfs_client* %0, %struct.nfs_client* %1, %struct.nfs_client** %2, %struct.nfs_net* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_client*, align 8
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.nfs_client**, align 8
  %9 = alloca %struct.nfs_net*, align 8
  %10 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %6, align 8
  store %struct.nfs_client* %1, %struct.nfs_client** %7, align 8
  store %struct.nfs_client** %2, %struct.nfs_client*** %8, align 8
  store %struct.nfs_net* %3, %struct.nfs_net** %9, align 8
  %11 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %12 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %79

19:                                               ; preds = %4
  %20 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %24 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %79

28:                                               ; preds = %19
  %29 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFS_CS_READY, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %36 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %35, i32 0, i32 4
  %37 = call i32 @refcount_inc(i32* %36)
  %38 = load %struct.nfs_net*, %struct.nfs_net** %9, align 8
  %39 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.nfs_client**, %struct.nfs_client*** %8, align 8
  %42 = load %struct.nfs_client*, %struct.nfs_client** %41, align 8
  %43 = call i32 @nfs_put_client(%struct.nfs_client* %42)
  %44 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %45 = load %struct.nfs_client**, %struct.nfs_client*** %8, align 8
  store %struct.nfs_client* %44, %struct.nfs_client** %45, align 8
  %46 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %47 = call i32 @nfs_wait_client_init_complete(%struct.nfs_client* %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.nfs_net*, %struct.nfs_net** %9, align 8
  %49 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %79

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NFS_CS_READY, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %79

63:                                               ; preds = %56
  %64 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %65 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %68 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %74 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %75 = call i32 @nfs4_match_client_owner_id(%struct.nfs_client* %73, %struct.nfs_client* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %79

78:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %77, %71, %62, %53, %27, %18
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #1

declare dso_local i32 @nfs_wait_client_init_complete(%struct.nfs_client*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_match_client_owner_id(%struct.nfs_client*, %struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

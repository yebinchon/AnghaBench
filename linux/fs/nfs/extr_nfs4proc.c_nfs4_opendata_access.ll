; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_opendata_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_opendata_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.nfs4_opendata = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.nfs4_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_access_entry = type { i32, %struct.cred* }

@__FMODE_EXEC = common dso_local global i32 0, align 4
@NFS4_ACCESS_LOOKUP = common dso_local global i32 0, align 4
@NFS4_ACCESS_EXECUTE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@NFS4_ACCESS_READ = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.nfs4_opendata*, %struct.nfs4_state*, i32, i32)* @nfs4_opendata_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_opendata_access(%struct.cred* %0, %struct.nfs4_opendata* %1, %struct.nfs4_state* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.nfs4_opendata*, align 8
  %9 = alloca %struct.nfs4_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_access_entry, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %7, align 8
  store %struct.nfs4_opendata* %1, %struct.nfs4_opendata** %8, align 8
  store %struct.nfs4_state* %2, %struct.nfs4_state** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  %16 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %81

21:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @__FMODE_EXEC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %28 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISDIR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @NFS4_ACCESS_LOOKUP, align 4
  store i32 %35, i32* %13, align 4
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @NFS4_ACCESS_EXECUTE, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %52

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @FMODE_READ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  %46 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @NFS4_ACCESS_READ, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %44, %39
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.cred*, %struct.cred** %7, align 8
  %54 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %12, i32 0, i32 1
  store %struct.cred* %53, %struct.cred** %54, align 8
  %55 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  %56 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @nfs_access_set_mask(%struct.nfs_access_entry* %12, i32 %58)
  %60 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %61 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @nfs_access_add_cache(%struct.TYPE_4__* %62, %struct.nfs_access_entry* %12)
  %64 = load i32, i32* @NFS4_ACCESS_READ, align 4
  %65 = load i32, i32* @NFS4_ACCESS_EXECUTE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NFS4_ACCESS_LOOKUP, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %12, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = xor i32 %71, -1
  %73 = and i32 %69, %72
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %81

78:                                               ; preds = %52
  %79 = load i32, i32* @EACCES, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %77, %20
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @nfs_access_set_mask(%struct.nfs_access_entry*, i32) #1

declare dso_local i32 @nfs_access_add_cache(%struct.TYPE_4__*, %struct.nfs_access_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

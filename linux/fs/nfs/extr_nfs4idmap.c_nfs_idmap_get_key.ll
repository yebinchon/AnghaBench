; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_get_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { i32 }
%struct.cred = type { i32 }
%struct.key = type { i64, i32, i32 }
%struct.user_key_payload = type { i64, i32, i32 }

@id_resolver_cache = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i8*, i64, %struct.idmap*)* @nfs_idmap_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_idmap_get_key(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, %struct.idmap* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.idmap*, align 8
  %13 = alloca %struct.cred*, align 8
  %14 = alloca %struct.key*, align 8
  %15 = alloca %struct.user_key_payload*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.idmap* %5, %struct.idmap** %12, align 8
  %17 = load i32, i32* @id_resolver_cache, align 4
  %18 = call %struct.cred* @override_creds(i32 %17)
  store %struct.cred* %18, %struct.cred** %13, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.idmap*, %struct.idmap** %12, align 8
  %23 = call %struct.user_key_payload* @nfs_idmap_request_key(i8* %19, i64 %20, i8* %21, %struct.idmap* %22)
  %24 = bitcast %struct.user_key_payload* %23 to %struct.key*
  store %struct.key* %24, %struct.key** %14, align 8
  %25 = load %struct.cred*, %struct.cred** %13, align 8
  %26 = call i32 @revert_creds(%struct.cred* %25)
  %27 = load %struct.key*, %struct.key** %14, align 8
  %28 = bitcast %struct.key* %27 to %struct.user_key_payload*
  %29 = call i64 @IS_ERR(%struct.user_key_payload* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load %struct.key*, %struct.key** %14, align 8
  %33 = bitcast %struct.key* %32 to %struct.user_key_payload*
  %34 = call i64 @PTR_ERR(%struct.user_key_payload* %33)
  store i64 %34, i64* %16, align 8
  br label %84

35:                                               ; preds = %6
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load i32, i32* @KEY_USR_VIEW, align 4
  %38 = load %struct.key*, %struct.key** %14, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.key*, %struct.key** %14, align 8
  %43 = bitcast %struct.key* %42 to %struct.user_key_payload*
  %44 = call i64 @key_validate(%struct.user_key_payload* %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = icmp ult i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %79

48:                                               ; preds = %35
  %49 = load %struct.key*, %struct.key** %14, align 8
  %50 = bitcast %struct.key* %49 to %struct.user_key_payload*
  %51 = call %struct.user_key_payload* @user_key_payload_rcu(%struct.user_key_payload* %50)
  store %struct.user_key_payload* %51, %struct.user_key_payload** %15, align 8
  %52 = load %struct.user_key_payload*, %struct.user_key_payload** %15, align 8
  %53 = call i64 @IS_ERR_OR_NULL(%struct.user_key_payload* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.user_key_payload*, %struct.user_key_payload** %15, align 8
  %57 = call i64 @PTR_ERR(%struct.user_key_payload* %56)
  store i64 %57, i64* %16, align 8
  br label %79

58:                                               ; preds = %48
  %59 = load %struct.user_key_payload*, %struct.user_key_payload** %15, align 8
  %60 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %16, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.user_key_payload*, %struct.user_key_payload** %15, align 8
  %71 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @memcpy(i8* %69, i32 %72, i64 %73)
  br label %78

75:                                               ; preds = %64, %58
  %76 = load i64, i64* @EINVAL, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %16, align 8
  br label %78

78:                                               ; preds = %75, %68
  br label %79

79:                                               ; preds = %78, %55, %47
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load %struct.key*, %struct.key** %14, align 8
  %82 = bitcast %struct.key* %81 to %struct.user_key_payload*
  %83 = call i32 @key_put(%struct.user_key_payload* %82)
  br label %84

84:                                               ; preds = %79, %31
  %85 = load i64, i64* %16, align 8
  ret i64 %85
}

declare dso_local %struct.cred* @override_creds(i32) #1

declare dso_local %struct.user_key_payload* @nfs_idmap_request_key(i8*, i64, i8*, %struct.idmap*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i64 @IS_ERR(%struct.user_key_payload*) #1

declare dso_local i64 @PTR_ERR(%struct.user_key_payload*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @key_validate(%struct.user_key_payload*) #1

declare dso_local %struct.user_key_payload* @user_key_payload_rcu(%struct.user_key_payload*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.user_key_payload*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @key_put(%struct.user_key_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

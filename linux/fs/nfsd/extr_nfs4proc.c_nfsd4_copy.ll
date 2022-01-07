; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_copy }
%struct.nfsd4_copy = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfsd4_do_async_copy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"copy thread\00", align 1
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_copy(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_copy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfsd4_copy*, align 8
  %10 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %11 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %12 = bitcast %union.nfsd4_op_u* %11 to %struct.nfsd4_copy*
  store %struct.nfsd4_copy* %12, %struct.nfsd4_copy** %7, align 8
  store %struct.nfsd4_copy* null, %struct.nfsd4_copy** %9, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %15 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %15, i32 0, i32 11
  %17 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %17, i32 0, i32 10
  %19 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %19, i32 0, i32 9
  %21 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %21, i32 0, i32 8
  %23 = call i64 @nfsd4_verify_copy(%struct.svc_rqst* %13, %struct.nfsd4_compound_state* %14, i32* %16, i32* %18, i32* %20, i32* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %115

27:                                               ; preds = %3
  %28 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %32 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %31, i32 0, i32 1
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %33, i32 0, i32 7
  %35 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i32* %34, i32* %37, i32 4)
  %39 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %111, label %43

43:                                               ; preds = %27
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %45 = call i32 @SVC_NET(%struct.svc_rqst* %44)
  %46 = load i32, i32* @nfsd_net_id, align 4
  %47 = call %struct.nfsd_net* @net_generic(i32 %45, i32 %46)
  store %struct.nfsd_net* %47, %struct.nfsd_net** %10, align 8
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i64 @nfserrno(i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.nfsd4_copy* @kzalloc(i32 56, i32 %51)
  store %struct.nfsd4_copy* %52, %struct.nfsd4_copy** %9, align 8
  %53 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %54 = icmp ne %struct.nfsd4_copy* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %115

56:                                               ; preds = %43
  %57 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %58 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %59 = call i32 @nfs4_init_cp_state(%struct.nfsd_net* %57, %struct.nfsd4_copy* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %63 = call i32 @kfree(%struct.nfsd4_copy* %62)
  br label %115

64:                                               ; preds = %56
  %65 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %66 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %65, i32 0, i32 5
  %67 = call i32 @refcount_set(i32* %66, i32 1)
  %68 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %69 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %72 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %71, i32 0, i32 3
  %73 = call i32 @memcpy(i32* %70, i32* %72, i32 4)
  %74 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %75 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %76 = call i32 @dup_copy_fields(%struct.nfsd4_copy* %74, %struct.nfsd4_copy* %75)
  %77 = load i32, i32* @nfsd4_do_async_copy, align 4
  %78 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %79 = call i32 @kthread_create(i32 %77, %struct.nfsd4_copy* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %81 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %83 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %64
  br label %117

88:                                               ; preds = %64
  %89 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %90 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %95 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %94, i32 0, i32 2
  %96 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %97 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = call i32 @list_add(i32* %95, i32* %99)
  %101 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %102 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %107 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @wake_up_process(i32 %108)
  %110 = load i64, i64* @nfs_ok, align 8
  store i64 %110, i64* %8, align 8
  br label %114

111:                                              ; preds = %27
  %112 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %113 = call i64 @nfsd4_do_copy(%struct.nfsd4_copy* %112, i32 1)
  store i64 %113, i64* %8, align 8
  br label %114

114:                                              ; preds = %111, %88
  br label %115

115:                                              ; preds = %117, %114, %61, %55, %26
  %116 = load i64, i64* %8, align 8
  ret i64 %116

117:                                              ; preds = %87
  %118 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %119 = call i32 @cleanup_async_copy(%struct.nfsd4_copy* %118)
  br label %115
}

declare dso_local i64 @nfsd4_verify_copy(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local %struct.nfsd4_copy* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs4_init_cp_state(%struct.nfsd_net*, %struct.nfsd4_copy*) #1

declare dso_local i32 @kfree(%struct.nfsd4_copy*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @dup_copy_fields(%struct.nfsd4_copy*, %struct.nfsd4_copy*) #1

declare dso_local i32 @kthread_create(i32, %struct.nfsd4_copy*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i64 @nfsd4_do_copy(%struct.nfsd4_copy*, i32) #1

declare dso_local i32 @cleanup_async_copy(%struct.nfsd4_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

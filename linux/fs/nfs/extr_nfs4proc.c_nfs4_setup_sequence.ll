; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_setup_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_setup_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.nfs4_slot_table* }
%struct.nfs4_slot_table = type { i32, i32 }
%struct.nfs4_sequence_args = type { i64 }
%struct.nfs4_sequence_res = type { i32* }
%struct.rpc_task = type { i32 }
%struct.nfs4_session = type { %struct.nfs4_slot_table }
%struct.nfs4_slot = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@RPC_PRIORITY_PRIVILEGED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_setup_sequence(%struct.nfs_client* %0, %struct.nfs4_sequence_args* %1, %struct.nfs4_sequence_res* %2, %struct.rpc_task* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_client*, align 8
  %7 = alloca %struct.nfs4_sequence_args*, align 8
  %8 = alloca %struct.nfs4_sequence_res*, align 8
  %9 = alloca %struct.rpc_task*, align 8
  %10 = alloca %struct.nfs4_session*, align 8
  %11 = alloca %struct.nfs4_slot_table*, align 8
  %12 = alloca %struct.nfs4_slot*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %6, align 8
  store %struct.nfs4_sequence_args* %1, %struct.nfs4_sequence_args** %7, align 8
  store %struct.nfs4_sequence_res* %2, %struct.nfs4_sequence_res** %8, align 8
  store %struct.rpc_task* %3, %struct.rpc_task** %9, align 8
  %13 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %14 = call %struct.nfs4_session* @nfs4_get_session(%struct.nfs_client* %13)
  store %struct.nfs4_session* %14, %struct.nfs4_session** %10, align 8
  %15 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %15, i32 0, i32 0
  %17 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %16, align 8
  store %struct.nfs4_slot_table* %17, %struct.nfs4_slot_table** %11, align 8
  %18 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %8, align 8
  %19 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %67

23:                                               ; preds = %4
  %24 = load %struct.nfs4_session*, %struct.nfs4_session** %10, align 8
  %25 = icmp ne %struct.nfs4_session* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.nfs4_session*, %struct.nfs4_session** %10, align 8
  %28 = getelementptr inbounds %struct.nfs4_session, %struct.nfs4_session* %27, i32 0, i32 0
  store %struct.nfs4_slot_table* %28, %struct.nfs4_slot_table** %11, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %31 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %34 = call i64 @nfs4_slot_tbl_draining(%struct.nfs4_slot_table* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %7, align 8
  %38 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %104

42:                                               ; preds = %36, %29
  %43 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %44 = call %struct.nfs4_slot* @nfs4_alloc_slot(%struct.nfs4_slot_table* %43)
  store %struct.nfs4_slot* %44, %struct.nfs4_slot** %12, align 8
  %45 = load %struct.nfs4_slot*, %struct.nfs4_slot** %12, align 8
  %46 = call i64 @IS_ERR(%struct.nfs4_slot* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.nfs4_slot*, %struct.nfs4_slot** %12, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.nfs4_slot* @ERR_PTR(i32 %51)
  %53 = icmp eq %struct.nfs4_slot* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %72

55:                                               ; preds = %48
  br label %104

56:                                               ; preds = %42
  %57 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %58 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %7, align 8
  %61 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %8, align 8
  %62 = load %struct.nfs4_slot*, %struct.nfs4_slot** %12, align 8
  %63 = call i32 @nfs4_sequence_attach_slot(%struct.nfs4_sequence_args* %60, %struct.nfs4_sequence_res* %61, %struct.nfs4_slot* %62)
  %64 = load %struct.nfs4_session*, %struct.nfs4_session** %10, align 8
  %65 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %7, align 8
  %66 = call i32 @trace_nfs4_setup_sequence(%struct.nfs4_session* %64, %struct.nfs4_sequence_args* %65)
  br label %67

67:                                               ; preds = %56, %22
  %68 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %8, align 8
  %69 = call i32 @nfs41_sequence_res_init(%struct.nfs4_sequence_res* %68)
  %70 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %71 = call i32 @rpc_call_start(%struct.rpc_task* %70)
  store i32 0, i32* %5, align 4
  br label %126

72:                                               ; preds = %54
  %73 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %7, align 8
  %74 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %79 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %78, i32 0, i32 1
  %80 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i32, i32* @HZ, align 4
  %83 = ashr i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = load i32, i32* @RPC_PRIORITY_PRIVILEGED, align 4
  %87 = call i32 @rpc_sleep_on_priority_timeout(i32* %79, %struct.rpc_task* %80, i64 %85, i32 %86)
  br label %98

88:                                               ; preds = %72
  %89 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %90 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %89, i32 0, i32 1
  %91 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %92 = load i64, i64* @jiffies, align 8
  %93 = load i32, i32* @HZ, align 4
  %94 = ashr i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %92, %95
  %97 = call i32 @rpc_sleep_on_timeout(i32* %90, %struct.rpc_task* %91, i32* null, i64 %96)
  br label %98

98:                                               ; preds = %88, %77
  %99 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %100 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %126

104:                                              ; preds = %55, %41
  %105 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %7, align 8
  %106 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %111 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %110, i32 0, i32 1
  %112 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %113 = load i32, i32* @RPC_PRIORITY_PRIVILEGED, align 4
  %114 = call i32 @rpc_sleep_on_priority(i32* %111, %struct.rpc_task* %112, i32 %113)
  br label %120

115:                                              ; preds = %104
  %116 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %117 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %116, i32 0, i32 1
  %118 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %119 = call i32 @rpc_sleep_on(i32* %117, %struct.rpc_task* %118, i32* null)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %11, align 8
  %122 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %98, %67
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.nfs4_session* @nfs4_get_session(%struct.nfs_client*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @nfs4_slot_tbl_draining(%struct.nfs4_slot_table*) #1

declare dso_local %struct.nfs4_slot* @nfs4_alloc_slot(%struct.nfs4_slot_table*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_slot*) #1

declare dso_local %struct.nfs4_slot* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs4_sequence_attach_slot(%struct.nfs4_sequence_args*, %struct.nfs4_sequence_res*, %struct.nfs4_slot*) #1

declare dso_local i32 @trace_nfs4_setup_sequence(%struct.nfs4_session*, %struct.nfs4_sequence_args*) #1

declare dso_local i32 @nfs41_sequence_res_init(%struct.nfs4_sequence_res*) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

declare dso_local i32 @rpc_sleep_on_priority_timeout(i32*, %struct.rpc_task*, i64, i32) #1

declare dso_local i32 @rpc_sleep_on_timeout(i32*, %struct.rpc_task*, i32*, i64) #1

declare dso_local i32 @rpc_sleep_on_priority(i32*, %struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_sleep_on(i32*, %struct.rpc_task*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

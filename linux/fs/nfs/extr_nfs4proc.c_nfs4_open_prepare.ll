; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_open_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_open_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.nfs4_opendata = type { %struct.TYPE_14__, %struct.TYPE_15__*, %struct.TYPE_13__, i32, %struct.nfs4_state_owner* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.nfs4_state_owner = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.nfs_client* }
%struct.nfs_client = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.nfs_delegation = type { i32 }

@nfs4_open_noattr_bitmap = common dso_local global i32* null, align 8
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_OPEN_NOATTR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@NFS4_CREATE_UNCHECKED = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@NFS4_CREATE_EXCLUSIVE = common dso_local global i32 0, align 4
@NFS4_CREATE_GUARDED = common dso_local global i32 0, align 4
@NFS4_CREATE_EXCLUSIVE4_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_open_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_open_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_opendata*, align 8
  %6 = alloca %struct.nfs4_state_owner*, align 8
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_delegation*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.nfs4_opendata*
  store %struct.nfs4_opendata* %11, %struct.nfs4_opendata** %5, align 8
  %12 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %12, i32 0, i32 4
  %14 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %13, align 8
  store %struct.nfs4_state_owner* %14, %struct.nfs4_state_owner** %6, align 8
  %15 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %6, align 8
  %16 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.nfs_client*, %struct.nfs_client** %18, align 8
  store %struct.nfs_client* %19, %struct.nfs_client** %7, align 8
  %20 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %21 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %25 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %29 = call i64 @nfs_wait_on_sequence(i32 %27, %struct.rpc_task* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %168

32:                                               ; preds = %2
  %33 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %34 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %39 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %42 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %46 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @can_open_cached(%struct.TYPE_15__* %40, i32 %44, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %165

53:                                               ; preds = %37
  %54 = call i32 (...) @rcu_read_lock()
  %55 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %56 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.nfs_delegation* @nfs4_get_valid_delegation(i32 %59)
  store %struct.nfs_delegation* %60, %struct.nfs_delegation** %9, align 8
  %61 = load %struct.nfs_delegation*, %struct.nfs_delegation** %9, align 8
  %62 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %63 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @can_open_delegated(%struct.nfs_delegation* %61, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %159

70:                                               ; preds = %53
  %71 = call i32 (...) @rcu_read_unlock()
  br label %72

72:                                               ; preds = %70, %32
  %73 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %74 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %77 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 7
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  switch i32 %79, label %80 [
    i32 128, label %81
    i32 131, label %81
    i32 130, label %81
    i32 129, label %87
  ]

80:                                               ; preds = %72
  br label %94

81:                                               ; preds = %72, %72, %72
  %82 = load i32*, i32** @nfs4_open_noattr_bitmap, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %85 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 6
  store i32* %83, i32** %86, align 8
  br label %87

87:                                               ; preds = %72, %81
  %88 = load i32*, i32** @nfs4_procedures, align 8
  %89 = load i64, i64* @NFSPROC4_CLNT_OPEN_NOATTR, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %92 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32* %90, i32** %93, align 8
  br label %94

94:                                               ; preds = %87, %80
  %95 = load i32, i32* @jiffies, align 4
  %96 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %97 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %99 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %105 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %108 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %111 = call i64 @nfs4_setup_sequence(i32 %103, i32* %106, i32* %109, %struct.rpc_task* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %94
  %114 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %115 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nfs_release_seqid(i32 %117)
  br label %119

119:                                              ; preds = %113, %94
  %120 = load i32, i32* @NFS4_CREATE_UNCHECKED, align 4
  %121 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %122 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %125 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @O_EXCL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %119
  %132 = load i32, i32* @NFS4_CREATE_EXCLUSIVE, align 4
  %133 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %134 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 8
  %136 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %137 = call i64 @nfs4_has_persistent_session(%struct.nfs_client* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load i32, i32* @NFS4_CREATE_GUARDED, align 4
  %141 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %142 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  br label %157

144:                                              ; preds = %131
  %145 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %146 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i32, i32* @NFS4_CREATE_EXCLUSIVE4_1, align 4
  %153 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %154 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %144
  br label %157

157:                                              ; preds = %156, %139
  br label %158

158:                                              ; preds = %157, %119
  br label %174

159:                                              ; preds = %69
  %160 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %161 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %160, i32 0, i32 1
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = call i32 @trace_nfs4_cached_open(%struct.TYPE_15__* %162)
  %164 = call i32 (...) @rcu_read_unlock()
  br label %165

165:                                              ; preds = %159, %52
  %166 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %167 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %166, i32 0, i32 0
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %165, %31
  %169 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %170 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %171 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = call i32 @nfs4_sequence_done(%struct.rpc_task* %169, i32* %172)
  br label %174

174:                                              ; preds = %168, %158
  ret void
}

declare dso_local i64 @nfs_wait_on_sequence(i32, %struct.rpc_task*) #1

declare dso_local i64 @can_open_cached(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @nfs4_get_valid_delegation(i32) #1

declare dso_local i64 @can_open_delegated(%struct.nfs_delegation*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local i32 @nfs_release_seqid(i32) #1

declare dso_local i64 @nfs4_has_persistent_session(%struct.nfs_client*) #1

declare dso_local i32 @trace_nfs4_cached_open(%struct.TYPE_15__*) #1

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_open_and_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_open_and_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { %struct.TYPE_2__, i32, i32, %struct.dentry*, %struct.dentry*, %struct.nfs4_state_owner* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.nfs4_state_owner = type { i32, i32, %struct.nfs_server* }
%struct.nfs_server = type { i32 }
%struct.nfs_open_context = type { %struct.dentry*, %struct.nfs4_state* }
%struct.nfs4_state = type { i64, i32 }

@NFS_CAP_POSIX_LOCK = common dso_local global i32 0, align 4
@NFS_STATE_POSIX_LOCKS = common dso_local global i32 0, align 4
@NFS4_OPEN_RESULT_MAY_NOTIFY_LOCK = common dso_local global i32 0, align 4
@NFS_STATE_MAY_NOTIFY_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*, i32, %struct.nfs_open_context*)* @_nfs4_open_and_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_open_and_get_state(%struct.nfs4_opendata* %0, i32 %1, %struct.nfs_open_context* %2) #0 {
  %4 = alloca %struct.nfs4_opendata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.nfs4_state_owner*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.nfs4_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfs_open_context* %2, %struct.nfs_open_context** %6, align 8
  %15 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %15, i32 0, i32 5
  %17 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %16, align 8
  store %struct.nfs4_state_owner* %17, %struct.nfs4_state_owner** %7, align 8
  %18 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %19 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %18, i32 0, i32 2
  %20 = load %struct.nfs_server*, %struct.nfs_server** %19, align 8
  store %struct.nfs_server* %20, %struct.nfs_server** %8, align 8
  %21 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %22 = call i32 @_nfs4_ctx_to_accessmode(%struct.nfs_open_context* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %24 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %23, i32 0, i32 0
  %25 = call i32 @raw_seqcount_begin(i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %27 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %28 = call i32 @_nfs4_proc_open(%struct.nfs4_opendata* %26, %struct.nfs_open_context* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %153

32:                                               ; preds = %3
  %33 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %34 = call %struct.nfs4_state* @_nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata* %33)
  store %struct.nfs4_state* %34, %struct.nfs4_state** %10, align 8
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %36 = call i32 @PTR_ERR(%struct.nfs4_state* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %38 = call i64 @IS_ERR(%struct.nfs4_state* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %153

41:                                               ; preds = %32
  %42 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %43 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %44 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %43, i32 0, i32 1
  store %struct.nfs4_state* %42, %struct.nfs4_state** %44, align 8
  %45 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NFS_CAP_POSIX_LOCK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i32, i32* @NFS_STATE_POSIX_LOCKS, align 4
  %53 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %54 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %53, i32 0, i32 1
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %41
  %57 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %58 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NFS4_OPEN_RESULT_MAY_NOTIFY_LOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32, i32* @NFS_STATE_MAY_NOTIFY_LOCK, align 4
  %66 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %67 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %66, i32 0, i32 1
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %64, %56
  %70 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %71 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %70, i32 0, i32 4
  %72 = load %struct.dentry*, %struct.dentry** %71, align 8
  store %struct.dentry* %72, %struct.dentry** %9, align 8
  %73 = load %struct.dentry*, %struct.dentry** %9, align 8
  %74 = call i64 @d_really_is_negative(%struct.dentry* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %69
  %77 = load %struct.dentry*, %struct.dentry** %9, align 8
  %78 = call i32 @d_drop(%struct.dentry* %77)
  %79 = load %struct.dentry*, %struct.dentry** %9, align 8
  %80 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %81 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.dentry* @d_exact_alias(%struct.dentry* %79, i64 %82)
  store %struct.dentry* %83, %struct.dentry** %14, align 8
  %84 = load %struct.dentry*, %struct.dentry** %14, align 8
  %85 = icmp ne %struct.dentry* %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %76
  %87 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %88 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @igrab(i64 %89)
  %91 = load %struct.dentry*, %struct.dentry** %9, align 8
  %92 = call %struct.dentry* @d_splice_alias(i32 %90, %struct.dentry* %91)
  store %struct.dentry* %92, %struct.dentry** %14, align 8
  br label %93

93:                                               ; preds = %86, %76
  %94 = load %struct.dentry*, %struct.dentry** %14, align 8
  %95 = icmp ne %struct.dentry* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %98 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %97, i32 0, i32 0
  %99 = load %struct.dentry*, %struct.dentry** %98, align 8
  %100 = call i32 @dput(%struct.dentry* %99)
  %101 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %101, %struct.dentry** %9, align 8
  %102 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %103 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %102, i32 0, i32 0
  store %struct.dentry* %101, %struct.dentry** %103, align 8
  br label %104

104:                                              ; preds = %96, %93
  %105 = load %struct.dentry*, %struct.dentry** %9, align 8
  %106 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %107 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %106, i32 0, i32 3
  %108 = load %struct.dentry*, %struct.dentry** %107, align 8
  %109 = call i64 @d_inode(%struct.dentry* %108)
  %110 = call i32 @nfs_save_change_attribute(i64 %109)
  %111 = call i32 @nfs_set_verifier(%struct.dentry* %105, i32 %110)
  br label %112

112:                                              ; preds = %104, %69
  %113 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %114 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %117 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %120 = call i32 @pnfs_parse_lgopen(i64 %115, i32 %118, %struct.nfs_open_context* %119)
  %121 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %122 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %125 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @nfs4_opendata_access(i32 %123, %struct.nfs4_opendata* %124, %struct.nfs4_state* %125, i32 %126, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %112
  br label %153

132:                                              ; preds = %112
  %133 = load %struct.dentry*, %struct.dentry** %9, align 8
  %134 = call i64 @d_inode(%struct.dentry* %133)
  %135 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %136 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %132
  %140 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %141 = call i32 @nfs_inode_attach_open_context(%struct.nfs_open_context* %140)
  %142 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %143 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %142, i32 0, i32 0
  %144 = load i32, i32* %12, align 4
  %145 = call i64 @read_seqcount_retry(i32* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %149 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %150 = call i32 @nfs4_schedule_stateid_recovery(%struct.nfs_server* %148, %struct.nfs4_state* %149)
  br label %151

151:                                              ; preds = %147, %139
  br label %152

152:                                              ; preds = %151, %132
  br label %153

153:                                              ; preds = %152, %131, %40, %31
  %154 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %155 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %160 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = call i32 @nfs4_sequence_free_slot(i32* %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %13, align 4
  ret i32 %164
}

declare dso_local i32 @_nfs4_ctx_to_accessmode(%struct.nfs_open_context*) #1

declare dso_local i32 @raw_seqcount_begin(i32*) #1

declare dso_local i32 @_nfs4_proc_open(%struct.nfs4_opendata*, %struct.nfs_open_context*) #1

declare dso_local %struct.nfs4_state* @_nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_state*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_exact_alias(%struct.dentry*, i64) #1

declare dso_local %struct.dentry* @d_splice_alias(i32, %struct.dentry*) #1

declare dso_local i32 @igrab(i64) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(i64) #1

declare dso_local i64 @d_inode(%struct.dentry*) #1

declare dso_local i32 @pnfs_parse_lgopen(i64, i32, %struct.nfs_open_context*) #1

declare dso_local i32 @nfs4_opendata_access(i32, %struct.nfs4_opendata*, %struct.nfs4_state*, i32, i32) #1

declare dso_local i32 @nfs_inode_attach_open_context(%struct.nfs_open_context*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @nfs4_schedule_stateid_recovery(%struct.nfs_server*, %struct.nfs4_state*) #1

declare dso_local i32 @nfs4_sequence_free_slot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

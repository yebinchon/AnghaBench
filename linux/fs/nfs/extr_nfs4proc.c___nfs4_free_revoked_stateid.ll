; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c___nfs4_free_revoked_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c___nfs4_free_revoked_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cred = type { i32 }

@NFS4_REVOKED_STATEID_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, %struct.TYPE_4__*, %struct.cred*)* @__nfs4_free_revoked_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfs4_free_revoked_stateid(%struct.nfs_server* %0, %struct.TYPE_4__* %1, %struct.cred* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.cred*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.cred* %2, %struct.cred** %6, align 8
  %7 = load i32, i32* @NFS4_REVOKED_STATEID_TYPE, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.cred*, %struct.cred** %6, align 8
  %13 = call i32 @nfs4_test_and_free_stateid(%struct.nfs_server* %10, %struct.TYPE_4__* %11, %struct.cred* %12)
  ret void
}

declare dso_local i32 @nfs4_test_and_free_stateid(%struct.nfs_server*, %struct.TYPE_4__*, %struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3acl.c_nfs3_abort_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3acl.c_nfs3_abort_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }

@current = common dso_local global i32 0, align 4
@ACL_NOT_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_acl**)* @nfs3_abort_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs3_abort_get_acl(%struct.posix_acl** %0) #0 {
  %2 = alloca %struct.posix_acl**, align 8
  %3 = alloca %struct.posix_acl*, align 8
  store %struct.posix_acl** %0, %struct.posix_acl*** %2, align 8
  %4 = load i32, i32* @current, align 4
  %5 = call %struct.posix_acl* @uncached_acl_sentinel(i32 %4)
  store %struct.posix_acl* %5, %struct.posix_acl** %3, align 8
  %6 = load %struct.posix_acl**, %struct.posix_acl*** %2, align 8
  %7 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  %8 = load i32, i32* @ACL_NOT_CACHED, align 4
  %9 = call i32 @cmpxchg(%struct.posix_acl** %6, %struct.posix_acl* %7, i32 %8)
  ret void
}

declare dso_local %struct.posix_acl* @uncached_acl_sentinel(i32) #1

declare dso_local i32 @cmpxchg(%struct.posix_acl**, %struct.posix_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_file_put_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_file_put_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32 }

@NFS4_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_file*, i32)* @nfs4_file_put_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_file_put_access(%struct.nfs4_file* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NFS4_SHARE_ACCESS_BOTH, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NFS4_SHARE_ACCESS_WRITE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %16 = load i32, i32* @O_WRONLY, align 4
  %17 = call i32 @__nfs4_file_put_access(%struct.nfs4_file* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NFS4_SHARE_ACCESS_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 @__nfs4_file_put_access(%struct.nfs4_file* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__nfs4_file_put_access(%struct.nfs4_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

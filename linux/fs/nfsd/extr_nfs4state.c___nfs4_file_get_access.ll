; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c___nfs4_file_get_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c___nfs4_file_get_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32*, i32 }

@NFS4_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i64 0, align 8
@NFS4_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_file*, i32)* @__nfs4_file_get_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfs4_file_get_access(%struct.nfs4_file* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NFS4_SHARE_ACCESS_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %14 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @O_WRONLY, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @atomic_inc(i32* %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NFS4_SHARE_ACCESS_READ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %26 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @O_RDONLY, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @atomic_inc(i32* %29)
  br label %31

31:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

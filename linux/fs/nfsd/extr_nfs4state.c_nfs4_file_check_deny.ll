; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_file_check_deny.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_file_check_deny.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32* }

@NFS4_SHARE_DENY_BOTH = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@NFS4_SHARE_DENY_READ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i64 0, align 8
@nfserr_share_denied = common dso_local global i32 0, align 4
@NFS4_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_file*, i32)* @nfs4_file_check_deny to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_file_check_deny(%struct.nfs4_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_file*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs4_file* %0, %struct.nfs4_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NFS4_SHARE_DENY_BOTH, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @nfserr_inval, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NFS4_SHARE_DENY_READ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %23 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @O_RDONLY, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i64 @atomic_read(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @nfserr_share_denied, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %21, %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NFS4_SHARE_DENY_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %38 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @O_WRONLY, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @nfserr_share_denied, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %36, %31
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* @nfs_ok, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %44, %29, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c___nfs4_file_put_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c___nfs4_file_put_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32, i32*, i32* }
%struct.nfsd_file = type { i32 }

@O_RDWR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_file*, i32)* @__nfs4_file_put_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfs4_file_put_access(%struct.nfs4_file* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_file*, align 8
  %6 = alloca %struct.nfsd_file*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %7, i32 0, i32 0
  %9 = call i32 @might_lock(i32* %8)
  %10 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %11 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %16, i32 0, i32 0
  %18 = call i64 @atomic_dec_and_lock(i32* %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %2
  store %struct.nfsd_file* null, %struct.nfsd_file** %5, align 8
  store %struct.nfsd_file* null, %struct.nfsd_file** %6, align 8
  %21 = load %struct.nfsd_file*, %struct.nfsd_file** %5, align 8
  %22 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @swap(%struct.nfsd_file* %21, i32 %28)
  %30 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %31 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 1, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %20
  %40 = load %struct.nfsd_file*, %struct.nfsd_file** %6, align 8
  %41 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %42 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @O_RDWR, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @swap(%struct.nfsd_file* %40, i32 %46)
  br label %48

48:                                               ; preds = %39, %20
  %49 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %50 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.nfsd_file*, %struct.nfsd_file** %5, align 8
  %53 = icmp ne %struct.nfsd_file* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.nfsd_file*, %struct.nfsd_file** %5, align 8
  %56 = call i32 @nfsd_file_put(%struct.nfsd_file* %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.nfsd_file*, %struct.nfsd_file** %6, align 8
  %59 = icmp ne %struct.nfsd_file* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.nfsd_file*, %struct.nfsd_file** %6, align 8
  %62 = call i32 @nfsd_file_put(%struct.nfsd_file* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %2
  ret void
}

declare dso_local i32 @might_lock(i32*) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @swap(%struct.nfsd_file*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

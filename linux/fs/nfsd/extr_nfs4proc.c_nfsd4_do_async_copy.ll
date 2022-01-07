; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_do_async_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_do_async_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_copy = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfsd4_cb_offload_ops = common dso_local global i32 0, align 4
@NFSPROC4_CLNT_CB_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nfsd4_do_async_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_do_async_copy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfsd4_copy*, align 8
  %4 = alloca %struct.nfsd4_copy*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfsd4_copy*
  store %struct.nfsd4_copy* %6, %struct.nfsd4_copy** %3, align 8
  %7 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %8 = call i32 @nfsd4_do_copy(%struct.nfsd4_copy* %7, i32 0)
  %9 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %10 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nfsd4_copy* @kzalloc(i32 20, i32 %11)
  store %struct.nfsd4_copy* %12, %struct.nfsd4_copy** %4, align 8
  %13 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %14 = icmp ne %struct.nfsd4_copy* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %17, i32 0, i32 4
  %19 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %20 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %19, i32 0, i32 4
  %21 = call i32 @memcpy(i32* %18, i32* %20, i32 4)
  %22 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %23 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %31 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %33 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %32, i32 0, i32 2
  %34 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %35 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %34, i32 0, i32 2
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  %37 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %38 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %37, i32 0, i32 0
  %39 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %40 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NFSPROC4_CLNT_CB_OFFLOAD, align 4
  %43 = call i32 @nfsd4_init_cb(i32* %38, i32 %41, i32* @nfsd4_cb_offload_ops, i32 %42)
  %44 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %44, i32 0, i32 0
  %46 = call i32 @nfsd4_run_cb(i32* %45)
  br label %47

47:                                               ; preds = %16, %15
  %48 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %49 = call i32 @cleanup_async_copy(%struct.nfsd4_copy* %48)
  ret i32 0
}

declare dso_local i32 @nfsd4_do_copy(%struct.nfsd4_copy*, i32) #1

declare dso_local %struct.nfsd4_copy* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfsd4_init_cb(i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsd4_run_cb(i32*) #1

declare dso_local i32 @cleanup_async_copy(%struct.nfsd4_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fs_location4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fs_location4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_fs_location = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, %struct.nfsd4_fs_location*)* @nfsd4_encode_fs_location4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_fs_location4(%struct.xdr_stream* %0, %struct.nfsd4_fs_location* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_fs_location*, align 8
  %6 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_fs_location* %1, %struct.nfsd4_fs_location** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load %struct.nfsd4_fs_location*, %struct.nfsd4_fs_location** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_fs_location, %struct.nfsd4_fs_location* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @nfsd4_encode_components_esc(%struct.xdr_stream* %7, i8 signext 58, i32 %10, i8 signext 91, i8 signext 93)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %18 = load %struct.nfsd4_fs_location*, %struct.nfsd4_fs_location** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd4_fs_location, %struct.nfsd4_fs_location* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @nfsd4_encode_components(%struct.xdr_stream* %17, i8 signext 47, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %27

26:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %26, %24, %14
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @nfsd4_encode_components_esc(%struct.xdr_stream*, i8 signext, i32, i8 signext, i8 signext) #1

declare dso_local i64 @nfsd4_encode_components(%struct.xdr_stream*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

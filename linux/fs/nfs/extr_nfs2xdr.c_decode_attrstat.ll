; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_attrstat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_attrstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.user_namespace = type { i32 }

@NFS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_fattr*, i32*, %struct.user_namespace*)* @decode_attrstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_attrstat(%struct.xdr_stream* %0, %struct.nfs_fattr* %1, i32* %2, %struct.user_namespace* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.user_namespace*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %6, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.user_namespace* %3, %struct.user_namespace** %9, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %13 = call i32 @decode_stat(%struct.xdr_stream* %12, i32* %10)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %34

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @NFS_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %36

29:                                               ; preds = %24
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %31 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %32 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %33 = call i32 @decode_fattr(%struct.xdr_stream* %30, %struct.nfs_fattr* %31, %struct.user_namespace* %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %29, %17
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @nfs_stat_to_errno(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @decode_stat(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_fattr(%struct.xdr_stream*, %struct.nfs_fattr*, %struct.user_namespace*) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

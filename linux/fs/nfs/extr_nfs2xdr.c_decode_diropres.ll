; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_diropres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_diropres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_diropok = type { i32 }
%struct.user_namespace = type { i32 }

@NFS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_diropok*, %struct.user_namespace*)* @decode_diropres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_diropres(%struct.xdr_stream* %0, %struct.nfs_diropok* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs_diropok*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs_diropok* %1, %struct.nfs_diropok** %6, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %7, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = call i32 @decode_stat(%struct.xdr_stream* %10, i32* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NFS_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %28

21:                                               ; preds = %16
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.nfs_diropok*, %struct.nfs_diropok** %6, align 8
  %24 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %25 = call i32 @decode_diropok(%struct.xdr_stream* %22, %struct.nfs_diropok* %23, %struct.user_namespace* %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @nfs_stat_to_errno(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @decode_stat(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_diropok(%struct.xdr_stream*, %struct.nfs_diropok*, %struct.user_namespace*) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

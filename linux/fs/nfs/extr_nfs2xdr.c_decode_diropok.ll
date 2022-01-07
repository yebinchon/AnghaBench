; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_diropok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_diropok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_diropok = type { i32, i32 }
%struct.user_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_diropok*, %struct.user_namespace*)* @decode_diropok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_diropok(%struct.xdr_stream* %0, %struct.nfs_diropok* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_diropok*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_diropok* %1, %struct.nfs_diropok** %5, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load %struct.nfs_diropok*, %struct.nfs_diropok** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_diropok, %struct.nfs_diropok* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @decode_fhandle(%struct.xdr_stream* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %19 = load %struct.nfs_diropok*, %struct.nfs_diropok** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_diropok, %struct.nfs_diropok* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %23 = call i32 @decode_fattr(%struct.xdr_stream* %18, i32 %21, %struct.user_namespace* %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @decode_fhandle(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_fattr(%struct.xdr_stream*, i32, %struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_create3resok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_create3resok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs3_diropres = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.user_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs3_diropres*, %struct.user_namespace*)* @decode_create3resok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_create3resok(%struct.xdr_stream* %0, %struct.nfs3_diropres* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs3_diropres*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs3_diropres* %1, %struct.nfs3_diropres** %5, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %5, align 8
  %10 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @decode_post_op_fh3(%struct.xdr_stream* %8, %struct.TYPE_3__* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %19 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %5, align 8
  %20 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %23 = call i32 @decode_post_op_attr(%struct.xdr_stream* %18, %struct.TYPE_4__* %21, %struct.user_namespace* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %47

28:                                               ; preds = %17
  %29 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %5, align 8
  %30 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %5, align 8
  %37 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %42 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %5, align 8
  %43 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %46 = call i32 @decode_wcc_data(%struct.xdr_stream* %41, i32 %44, %struct.user_namespace* %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %40, %27, %16
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @decode_post_op_fh3(%struct.xdr_stream*, %struct.TYPE_3__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, %struct.TYPE_4__*, %struct.user_namespace*) #1

declare dso_local i32 @decode_wcc_data(%struct.xdr_stream*, i32, %struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

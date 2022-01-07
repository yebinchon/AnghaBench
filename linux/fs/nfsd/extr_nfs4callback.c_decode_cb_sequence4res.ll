; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_decode_cb_sequence4res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_decode_cb_sequence4res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_callback = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@OP_CB_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfsd4_callback*)* @decode_cb_sequence4res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cb_sequence4res(%struct.xdr_stream* %0, %struct.nfsd4_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_callback*, align 8
  %6 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_callback* %1, %struct.nfsd4_callback** %5, align 8
  %7 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %8 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %16 = load i32, i32* @OP_CB_SEQUENCE, align 4
  %17 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %17, i32 0, i32 0
  %19 = call i32 @decode_cb_op_status(%struct.xdr_stream* %15, i32 %16, i64* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %24 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %14
  %28 = phi i1 [ true, %14 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %36 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %37 = call i32 @decode_cb_sequence4resok(%struct.xdr_stream* %35, %struct.nfsd4_callback* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %32, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @decode_cb_op_status(%struct.xdr_stream*, i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_cb_sequence4resok(%struct.xdr_stream*, %struct.nfsd4_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

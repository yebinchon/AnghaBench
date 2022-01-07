; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_decode_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_decode_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.xdr_stream = type { i32 }
%struct.mountres = type { i32 }

@EIO = common dso_local global i32 0, align 4
@mnt_errtbl = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"NFS: unrecognized MNT status code: %u\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.mountres*)* @decode_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_status(%struct.xdr_stream* %0, %struct.mountres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.mountres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.mountres* %1, %struct.mountres** %5, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %10 = call i32* @xdr_inline_decode(%struct.xdr_stream* %9, i32 4)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @be32_to_cpup(i32* %20)
  store i64 %21, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %46, %19
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mnt_errtbl, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mnt_errtbl, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mnt_errtbl, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mountres*, %struct.mountres** %5, align 8
  %44 = getelementptr inbounds %struct.mountres, %struct.mountres* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %56

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  %54 = load %struct.mountres*, %struct.mountres** %5, align 8
  %55 = getelementptr inbounds %struct.mountres, %struct.mountres* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %36, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dprintk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

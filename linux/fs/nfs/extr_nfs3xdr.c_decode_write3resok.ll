; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_write3resok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_write3resok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_res = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@EIO = common dso_local global i32 0, align 4
@NFS_FILE_SYNC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"NFS: bad stable_how value: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_pgio_res*)* @decode_write3resok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_write3resok(%struct.xdr_stream* %0, %struct.nfs_pgio_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_pgio_res*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_pgio_res* %1, %struct.nfs_pgio_res** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = call i32* @xdr_inline_decode(%struct.xdr_stream* %7, i32 8)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = ptrtoint i32* %19 to i32
  %22 = call i8* @be32_to_cpup(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = ptrtoint i32* %26 to i32
  %29 = call i8* @be32_to_cpup(i32 %28)
  %30 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @NFS_FILE_SYNC, align 8
  %40 = icmp ugt i8* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  br label %60

45:                                               ; preds = %18
  %46 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %47 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i64 @decode_writeverf3(%struct.xdr_stream* %46, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %69

56:                                               ; preds = %45
  %57 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %44
  %61 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %62 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %56, %53, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i64 @decode_writeverf3(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @dprintk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_fsinfo3resok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_fsinfo3resok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_fsinfo = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_fsinfo*)* @decode_fsinfo3resok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_fsinfo3resok(%struct.xdr_stream* %0, %struct.nfs_fsinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_fsinfo*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_fsinfo* %1, %struct.nfs_fsinfo** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = call i32* @xdr_inline_decode(%struct.xdr_stream* %7, i32 48)
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
  br label %71

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = ptrtoint i32* %19 to i32
  %22 = call i8* @be32_to_cpup(i32 %21)
  %23 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = ptrtoint i32* %25 to i32
  %28 = call i8* @be32_to_cpup(i32 %27)
  %29 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = ptrtoint i32* %31 to i32
  %34 = call i8* @be32_to_cpup(i32 %33)
  %35 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  %39 = ptrtoint i32* %37 to i32
  %40 = call i8* @be32_to_cpup(i32 %39)
  %41 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  %45 = ptrtoint i32* %43 to i32
  %46 = call i8* @be32_to_cpup(i32 %45)
  %47 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  %51 = ptrtoint i32* %49 to i32
  %52 = call i8* @be32_to_cpup(i32 %51)
  %53 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %54 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  %57 = ptrtoint i32* %55 to i32
  %58 = call i8* @be32_to_cpup(i32 %57)
  %59 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %60 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %62, i32 0, i32 2
  %64 = call i32* @xdr_decode_size3(i32* %61, i32* %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %67 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %66, i32 0, i32 1
  %68 = call i32 @xdr_decode_nfstime3(i32* %65, i32* %67)
  %69 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %5, align 8
  %70 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %18, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i32* @xdr_decode_size3(i32*, i32*) #1

declare dso_local i32 @xdr_decode_nfstime3(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
